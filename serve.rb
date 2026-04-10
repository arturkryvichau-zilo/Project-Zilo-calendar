require 'webrick'
server = WEBrick::HTTPServer.new(
  Port: 8080,
  DocumentRoot: '/Users/arturkrivichev/Downloads/DM/Code',
  Logger: WEBrick::Log.new('/dev/null'),
  AccessLog: []
)
trap('INT') { server.shutdown }
server.start
