@Grab('org.apache.camel:camel-core:2.10.0')
@Grab('com.ning:async-http-client:1.7.5')
@Grab('org.slf4j:slf4j-simple:1.6.6')
import org.apache.camel.*
import org.apache.camel.impl.*
import org.apache.camel.builder.*
import org.apache.camel.util.jndi.*

class SystemInfoService {
    def void run(String text) {
        println text
    }
}
def jndiContext = new JndiContext();
jndiContext.bind('systemInfoPoller', new SystemInfoService())

def camelContext = new DefaultCamelContext(jndiContext)
camelContext.addRoutes(new RouteBuilder() {
    def void configure() {
        from('ahc://www.google.com')
            .to('log://camelLogger?level=INFO')
            .to('bean://systemInfoPoller?method=run')
    }
})
camelContext.start()

addShutdownHook{ camelContext.stop() }
synchronized(this){ this.wait() }