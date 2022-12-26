# Generated by erl2ex (http://github.com/dazuma/erl2ex)
# From Erlang source: (Unknown source file)
# At: 2022-12-26 15:53:52


defmodule :dog_turtle_sup do

  defmacrop erlconst_SERVER() do
    quote do
      __MODULE__
    end
  end


  @behaviour :supervisor

  @spec start_link() :: :ignore | {:error, _} | {:ok, pid()} when _: any()


  def start_link() do
    :supervisor.start_link({:local, erlconst_SERVER()}, __MODULE__, [])
  end


  def init([]) do
    child_specs()
  end


  defp child_specs() do
    childSpecs = [ips_publisher_spec()]
    {:ok, {{:one_for_all, 10, 60}, childSpecs}}
  end


  def ips_publisher_spec() do
    publisherName = :ips_publisher
    connName = :default
    aMQPDecls = []
    aMQPPoolChildSpec = :turtle_publisher.child_spec(publisherName, connName, aMQPDecls, %{confirms: true, passive: false, rpc: false})
    aMQPPoolChildSpec
  end


  def iptables_service_spec(environment, location, group, hostkey) do
    queueName = :erlang.iolist_to_binary(["iptables.", hostkey])
    groupRoutingKey = :erlang.iolist_to_binary([environment, '.', location, '.', group, '.*'])
    hostRoutingKey = :erlang.iolist_to_binary([environment, '.', location, '.*.', hostkey])
    config = %{name: :iptables_service, connection: :default, function: &:dog_iptables.subscriber_loop/4, handle_info: &:dog_iptables_agent.handle_info/2, init_state: %{}, declarations: [], subscriber_count: 1, prefetch_count: 1, consume_queue: queueName, passive: false}
    serviceSpec = :turtle_service.child_spec(config)
    serviceSpec
  end


  def config_service_spec(hostkey) do
    queueName = :erlang.iolist_to_binary(["config.", hostkey])
    config = %{name: :dog_config_service, connection: :default, function: &:dog_config.subscriber_loop/4, handle_info: &:dog_agent.handle_info/2, init_state: %{}, declarations: [], subscriber_count: 1, prefetch_count: 1, consume_queue: queueName, passive: false}
    serviceSpec = :turtle_service.child_spec(config)
    serviceSpec
  end


  def file_transfer_service_spec(environment, location, group, hostkey) do
    groupRoutingKey = :erlang.iolist_to_binary([environment, '.', location, '.', group, '.*'])
    hostRoutingKey = :erlang.iolist_to_binary([environment, '.', location, '.*.', hostkey])
    queueName = :erlang.iolist_to_binary(["file_transfer.", hostkey])
    config = %{name: :file_transfer_service, connection: :default, function: &:dog_file_transfer.subscriber_loop/4, handle_info: &:dog_file_transfer.handle_info/2, init_state: %{}, declarations: [], subscriber_count: 1, prefetch_count: 1, consume_queue: queueName, passive: false}
    serviceSpec = :turtle_service.child_spec(config)
    serviceSpec
  end


  @spec get_pid(atom()) :: {:error, :deleted | :terminated} | {:ok, pid()}


  def get_pid(name) do
    case(:erlang.whereis(name)) do
      pid when is_pid(pid) ->
        {:ok, pid}
      _ ->
        children = :supervisor.which_children(__MODULE__)
        case(:lists.keyfind(name, 1, children)) do
          {_n, pid, _, _} when is_pid(pid) ->
            {:ok, pid}
          {_n, _, _, _} ->
            {:error, :terminated}
          false ->
            {:error, :deleted}
        end
    end
  end


  def start_mq_services(environment, location, group, hostkey) do
    start_config_service(hostkey)
    start_iptables_service(environment, location, group, hostkey)
    start_file_transfer_service(environment, location, group, hostkey)
    start_ips_publisher()
  end


  def restart_mq_services(environment, location, group, hostkey) do
    stop_config_service()
    start_config_service(hostkey)
    stop_iptables_service()
    start_iptables_service(environment, location, group, hostkey)
    stop_file_transfer_service()
    start_file_transfer_service(environment, location, group, hostkey)
    stop_ips_publisher()
    start_ips_publisher()
    stop_ips_agent()
    restart_ips_agent()
  end


  def start_config_service(hostkey) do
    :turtle_service.new(:dog_turtle_sup, config_service_spec(hostkey))
  end


  def stop_config_service() do
    stop(:dog_turtle_sup, :dog_config_service)
  end


  defp start_iptables_service(environment, location, group, hostkey) do
    :turtle_service.new(:dog_turtle_sup, iptables_service_spec(environment, location, group, hostkey))
  end


  defp stop_iptables_service() do
    stop(:dog_turtle_sup, :iptables_service)
  end


  def start_file_transfer_service(environment, location, group, hostkey) do
    :turtle_service.new(:dog_turtle_sup, file_transfer_service_spec(environment, location, group, hostkey))
  end


  def stop_file_transfer_service() do
    stop(:dog_turtle_sup, :file_transfer_service)
  end


  def start_ips_publisher() do
    :turtle_publisher.new(:dog_turtle_sup, ips_publisher_spec())
  end


  def stop_ips_publisher() do
    stop(:dog_turtle_sup, :ips_publisher)
  end


  def restart_ips_agent() do
    :supervisor.restart_child(:dog_sup, :dog_agent)
    :ok
  end


  def stop_ips_agent() do
    :supervisor.terminate_child(:dog_sup, :dog_agent)
    :ok
  end


  defp stop(supervisor, name) do
    :supervisor.terminate_child(supervisor, name)
    :supervisor.delete_child(supervisor, name)
  end

end
