import Config

config :logger, :console, 
  metadata: [:module, :function, :line],
  level: :debug

config :dog,
  version: "UNSET",
  enforcing: true,
  use_ipsets: true,
  cmd_user: 'dog' #must be a list

#NOTE: Needs to be configured for your environment
#config :turtle,
#    connection_config: [
#      %{conn_name: :default, 
#        username: 'guest', 
#        password: 'guest', 
#        virtual_host: 'dog', 
#        ssl_options: [
#          cacertfile: '/etc/dog_ex/certs/ca.crt', 
#          certfile: '/etc/dog_ex/certs/server.crt', 
#          keyfile: '/etc/dog_ex/private/server.key', 
#          verify: :verify_peer, 
#          server_name_indication: :disable, 
#          fail_if_no_peer_cert: true], 
#        deadline: 300000, 
#        connections: [
#          main: [{'rabbitmq', 5673}]]}
#    ]
  
config :erldocker,
  docker_http: <<"http+unix://%2Fvar%2Frun%2Fdocker.sock">>

config :erlexec,
  debug: 0,
  verbose: false,
  root: true, #Allow running child processes as root
  args: [],
  user: 'root',
  limit_users: ['root']