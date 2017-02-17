
def hello_world name = nil
  if name.nil? || name == '' #empty string returned if a user inputs nothing and hits enter
    return "Hello, World!" #return is optional but more clear
  else
    return "Hello, #{name}!"
  end
end
