require 'tk'
TkLabel.new do
  text "Hello, World"
  bg "reg"
  pack
end
TkButton.new do
  text "Close"
  command {exist}
  pack
end
Tk.mainloop