# Generated by erl2ex (http://github.com/dazuma/erl2ex)
# From Erlang source: (Unknown source file)
# At: 2022-12-26 15:52:18


defmodule :dog_state do

  require Record

  @typep ec2_availability_zone() :: char_list()

  @typep ec2_instance_id() :: char_list()

  @typep ec2_instance_tags() :: map()

  @typep ec2_owner_id() :: char_list()

  @typep ec2_region() :: char_list()

  @typep ec2_security_group_ids() :: list()

  @typep ec2_subnet_id() :: char_list()

  @typep ec2_vpc_id() :: char_list()

  @typep environment() :: binary()

  @typep group() :: binary()

  @typep hash() :: binary()

  @typep hostkey() :: binary()

  @typep hostname() :: binary()

  @typep interfaces() :: list(tuple())

  @typep location() :: binary()

  @typep os_distribution() :: binary()

  @typep os_version() :: binary()

  @typep provider() :: binary()

  @typep updatetype() :: atom()

  @typep version() :: binary()

  @erlrecordfields_dog_state [:group, :name, :location, :environment, :hostkey, :interfaces, :version, :hash4_ipsets, :hash6_ipsets, :hash4_iptables, :hash6_iptables, :provider, :updatetype, :ipset_hash, :ec2_region, :ec2_instance_id, :ec2_availability_zone, :ec2_security_group_ids, :ec2_owner_id, :ec2_instance_tags, :os_distribution, :os_version, :ec2_vpc_id, :ec2_subnet_id]
  Record.defrecordp :erlrecord_dog_state, :dog_state, [group: :undefined, name: :undefined, location: :undefined, environment: :undefined, hostkey: :undefined, interfaces: :undefined, version: :undefined, hash4_ipsets: :undefined, hash6_ipsets: :undefined, hash4_iptables: :undefined, hash6_iptables: :undefined, provider: :undefined, updatetype: :undefined, ipset_hash: :undefined, ec2_region: :undefined, ec2_instance_id: :undefined, ec2_availability_zone: :undefined, ec2_security_group_ids: :undefined, ec2_owner_id: :undefined, ec2_instance_tags: :undefined, os_distribution: :undefined, os_version: :undefined, ec2_vpc_id: :undefined, ec2_subnet_id: :undefined]

  @typep dog_state() :: record(:erlrecord_dog_state, group: term(), name: term(), location: term(), environment: term(), hostkey: term(), interfaces: term(), version: term(), hash4_ipsets: term(), hash6_ipsets: term(), hash4_iptables: term(), hash6_iptables: term(), provider: term(), updatetype: term(), ipset_hash: term(), ec2_region: term(), ec2_instance_id: term(), ec2_availability_zone: term(), ec2_security_group_ids: term(), ec2_owner_id: term(), ec2_instance_tags: term(), os_distribution: term(), os_version: term(), ec2_vpc_id: term(), ec2_subnet_id: term())


  def dog_state(group, hostname, location, environment, hostkey, interfaces, version, hash4Ipsets, hash6Ipsets, hash4Iptables, hash6Iptables, provider, updateType, ipsetHash, ec2Region, ec2InstanceId, ec2AvailabilityZone, ec2SecurityGroupIds, ec2OwnerId, ec2InstanceTags, oS_Distribution, oS_Version, ec2VpcId, ec2SubnetId) do
    erlrecord_dog_state(group: group, name: hostname, location: location, environment: environment, hostkey: hostkey, interfaces: interfaces, version: version, hash4_ipsets: hash4Ipsets, hash6_ipsets: hash6Ipsets, hash4_iptables: hash4Iptables, hash6_iptables: hash6Iptables, provider: provider, updatetype: updateType, ipset_hash: ipsetHash, ec2_region: ec2Region, ec2_instance_id: ec2InstanceId, ec2_availability_zone: ec2AvailabilityZone, ec2_security_group_ids: ec2SecurityGroupIds, ec2_owner_id: ec2OwnerId, ec2_instance_tags: ec2InstanceTags, os_distribution: oS_Distribution, os_version: oS_Version, ec2_vpc_id: ec2VpcId, ec2_subnet_id: ec2SubnetId)
  end


  @spec get_group(dog_state()) :: binary()


  def get_group(state) do
    erlrecord_dog_state(state, :group)
  end


  @spec set_group(dog_state(), group()) :: dog_state()


  def set_group(state, group) do
    erlrecord_dog_state(state, group: group)
  end


  @spec get_hostname(dog_state()) :: binary()


  def get_hostname(state) do
    erlrecord_dog_state(state, :name)
  end


  @spec set_hostname(dog_state(), hostname()) :: dog_state()


  def set_hostname(state, hostname) do
    erlrecord_dog_state(state, name: hostname)
  end


  @spec get_location(dog_state()) :: binary()


  def get_location(state) do
    erlrecord_dog_state(state, :location)
  end


  @spec set_location(dog_state(), location()) :: dog_state()


  def set_location(state, location) do
    erlrecord_dog_state(state, location: location)
  end


  @spec get_os_distribution(dog_state()) :: binary()


  def get_os_distribution(state) do
    erlrecord_dog_state(state, :location)
  end


  @spec set_os_distribution(dog_state(), os_distribution()) :: dog_state()


  def set_os_distribution(state, location) do
    erlrecord_dog_state(state, os_distribution: location)
  end


  @spec get_os_version(dog_state()) :: binary()


  def get_os_version(state) do
    erlrecord_dog_state(state, :location)
  end


  @spec set_os_version(dog_state(), os_version()) :: dog_state()


  def set_os_version(state, location) do
    erlrecord_dog_state(state, os_version: location)
  end


  @spec get_environment(dog_state()) :: binary()


  def get_environment(state) do
    erlrecord_dog_state(state, :environment)
  end


  @spec set_environment(dog_state(), environment()) :: dog_state()


  def set_environment(state, environment) do
    erlrecord_dog_state(state, environment: environment)
  end


  @spec get_hostkey(dog_state()) :: binary()


  def get_hostkey(state) do
    erlrecord_dog_state(state, :hostkey)
  end


  @spec set_hostkey(dog_state(), hostkey()) :: dog_state()


  def set_hostkey(state, hostkey) do
    erlrecord_dog_state(state, hostkey: hostkey)
  end


  @spec get_interfaces(dog_state()) :: list(tuple())


  def get_interfaces(state) do
    erlrecord_dog_state(state, :interfaces)
  end


  @spec set_interfaces(dog_state(), interfaces()) :: dog_state()


  def set_interfaces(state, interfaces) do
    erlrecord_dog_state(state, interfaces: interfaces)
  end


  @spec get_version(dog_state()) :: binary()


  def get_version(state) do
    erlrecord_dog_state(state, :version)
  end


  @spec set_version(dog_state(), version()) :: dog_state()


  def set_version(state, version) do
    erlrecord_dog_state(state, version: version)
  end


  @spec get_hash4_ipsets(dog_state()) :: binary()


  def get_hash4_ipsets(state) do
    erlrecord_dog_state(state, :hash4_ipsets)
  end


  @spec set_hash4_ipsets(dog_state(), hash()) :: dog_state()


  def set_hash4_ipsets(state, hash4) do
    erlrecord_dog_state(state, hash4_ipsets: hash4)
  end


  @spec get_hash6_ipsets(dog_state()) :: binary()


  def get_hash6_ipsets(state) do
    erlrecord_dog_state(state, :hash6_ipsets)
  end


  @spec set_hash6_ipsets(dog_state(), hash()) :: dog_state()


  def set_hash6_ipsets(state, hash6) do
    erlrecord_dog_state(state, hash6_ipsets: hash6)
  end


  @spec get_hash4_iptables(dog_state()) :: binary()


  def get_hash4_iptables(state) do
    erlrecord_dog_state(state, :hash4_iptables)
  end


  @spec set_hash4_iptables(dog_state(), hash()) :: dog_state()


  def set_hash4_iptables(state, hash4) do
    erlrecord_dog_state(state, hash4_iptables: hash4)
  end


  @spec get_hash6_iptables(dog_state()) :: binary()


  def get_hash6_iptables(state) do
    erlrecord_dog_state(state, :hash6_iptables)
  end


  @spec set_hash6_iptables(dog_state(), hash()) :: dog_state()


  def set_hash6_iptables(state, hash6) do
    erlrecord_dog_state(state, hash6_iptables: hash6)
  end


  @spec get_provider(dog_state()) :: binary()


  def get_provider(state) do
    erlrecord_dog_state(state, :provider)
  end


  @spec set_provider(dog_state(), provider()) :: dog_state()


  def set_provider(state, provider) do
    erlrecord_dog_state(state, provider: provider)
  end


  @spec get_updatetype(dog_state()) :: atom()


  def get_updatetype(state) do
    erlrecord_dog_state(state, :updatetype)
  end


  @spec set_updatetype(dog_state(), updatetype()) :: dog_state()


  def set_updatetype(state, updateType) do
    erlrecord_dog_state(state, updatetype: updateType)
  end


  @spec get_ipset_hash(dog_state()) :: atom()


  def get_ipset_hash(state) do
    erlrecord_dog_state(state, :ipset_hash)
  end


  @spec set_ipset_hash(dog_state(), hash()) :: dog_state()


  def set_ipset_hash(state, ipsetHash) do
    erlrecord_dog_state(state, ipset_hash: ipsetHash)
  end


  @spec get_ec2_region(dog_state()) :: char_list()


  def get_ec2_region(state) do
    erlrecord_dog_state(state, :ec2_region)
  end


  @spec set_ec2_region(dog_state(), ec2_region()) :: dog_state()


  def set_ec2_region(state, ec2InstanceId) do
    erlrecord_dog_state(state, ec2_region: ec2InstanceId)
  end


  @spec get_ec2_instance_id(dog_state()) :: char_list()


  def get_ec2_instance_id(state) do
    erlrecord_dog_state(state, :ec2_instance_id)
  end


  @spec set_ec2_instance_id(dog_state(), ec2_instance_id()) :: dog_state()


  def set_ec2_instance_id(state, ec2InstanceId) do
    erlrecord_dog_state(state, ec2_instance_id: ec2InstanceId)
  end


  @spec get_ec2_availability_zone(dog_state()) :: char_list()


  def get_ec2_availability_zone(state) do
    erlrecord_dog_state(state, :ec2_availability_zone)
  end


  @spec set_ec2_availability_zone(dog_state(), ec2_availability_zone()) :: dog_state()


  def set_ec2_availability_zone(state, ec2AvailabilityZone) do
    erlrecord_dog_state(state, ec2_availability_zone: ec2AvailabilityZone)
  end


  @spec get_ec2_security_group_ids(dog_state()) :: list()


  def get_ec2_security_group_ids(state) do
    erlrecord_dog_state(state, :ec2_security_group_ids)
  end


  @spec set_ec2_security_group_ids(dog_state(), ec2_security_group_ids()) :: dog_state()


  def set_ec2_security_group_ids(state, ec2SecurityGroupIds) do
    erlrecord_dog_state(state, ec2_security_group_ids: ec2SecurityGroupIds)
  end


  @spec get_ec2_subnet_id(dog_state()) :: char_list()


  def get_ec2_subnet_id(state) do
    erlrecord_dog_state(state, :ec2_subnet_id)
  end


  @spec set_ec2_subnet_id(dog_state(), ec2_subnet_id()) :: dog_state()


  def set_ec2_subnet_id(state, ec2SubnetId) do
    erlrecord_dog_state(state, ec2_subnet_id: ec2SubnetId)
  end


  @spec get_ec2_vpc_id(dog_state()) :: char_list()


  def get_ec2_vpc_id(state) do
    erlrecord_dog_state(state, :ec2_vpc_id)
  end


  @spec set_ec2_vpc_id(dog_state(), ec2_vpc_id()) :: dog_state()


  def set_ec2_vpc_id(state, ec2VpcId) do
    erlrecord_dog_state(state, ec2_vpc_id: ec2VpcId)
  end


  @spec get_ec2_owner_id(dog_state()) :: list()


  def get_ec2_owner_id(state) do
    erlrecord_dog_state(state, :ec2_owner_id)
  end


  @spec set_ec2_owner_id(dog_state(), ec2_owner_id()) :: dog_state()


  def set_ec2_owner_id(state, ec2OwnerId) do
    erlrecord_dog_state(state, ec2_owner_id: ec2OwnerId)
  end


  @spec get_ec2_instance_tags(dog_state()) :: map()


  def get_ec2_instance_tags(state) do
    erlrecord_dog_state(state, :ec2_instance_tags)
  end


  @spec set_ec2_instance_tags(dog_state(), ec2_instance_tags()) :: dog_state()


  def set_ec2_instance_tags(state, ec2InstanceTags) do
    erlrecord_dog_state(state, ec2_instance_tags: ec2InstanceTags)
  end


  def to_map(state) do
    interfaces = :jsx.encode(erlrecord_dog_state(state, :interfaces))
    %{"name" => erlrecord_dog_state(state, :name), "interfaces" => interfaces, "group" => erlrecord_dog_state(state, :group), "location" => erlrecord_dog_state(state, :location), "environment" => erlrecord_dog_state(state, :environment), "hostkey" => erlrecord_dog_state(state, :hostkey), "version" => erlrecord_dog_state(state, :version), "hash4_ipsets" => erlrecord_dog_state(state, :hash4_ipsets), "hash6_ipsets" => erlrecord_dog_state(state, :hash6_ipsets), "hash4_iptables" => erlrecord_dog_state(state, :hash4_iptables), "hash6_iptables" => erlrecord_dog_state(state, :hash6_iptables), "provider" => erlrecord_dog_state(state, :provider), "updatetype" => erlrecord_dog_state(state, :updatetype), "ipset_hash" => erlrecord_dog_state(state, :ipset_hash), "ec2_region" => erlrecord_dog_state(state, :ec2_region), "ec2_instance_id" => erlrecord_dog_state(state, :ec2_instance_id), "ec2_availability_zone" => erlrecord_dog_state(state, :ec2_availability_zone), "ec2_security_group_ids" => erlrecord_dog_state(state, :ec2_security_group_ids), "ec2_owner_id" => erlrecord_dog_state(state, :ec2_owner_id), "ec2_instance_tags" => erlrecord_dog_state(state, :ec2_instance_tags), "os_distribution" => erlrecord_dog_state(state, :os_distribution), "os_version" => erlrecord_dog_state(state, :os_version), "ec2_vpc_id" => erlrecord_dog_state(state, :ec2_vpc_id), "ec2_subnet_id" => erlrecord_dog_state(state, :ec2_subnet_id)}
  end


  def from_map(stateMap) do
    erlrecord_dog_state(name: :maps.get("name", stateMap), interfaces: :maps.get("interfaces", stateMap), group: :maps.get("group", stateMap), location: :maps.get("location", stateMap), environment: :maps.get("environment", stateMap), hostkey: :maps.get("hostkey", stateMap), version: :maps.get("version", stateMap), hash4_ipsets: :maps.get("hash4_ipsets", stateMap), hash6_ipsets: :maps.get("hash6_ipsets", stateMap), hash4_iptables: :maps.get("hash4_iptables", stateMap), hash6_iptables: :maps.get("hash6_iptables", stateMap), provider: :maps.get("provider", stateMap), updatetype: :maps.get("updatetype", stateMap), ipset_hash: :maps.get("ipset_hash", stateMap), ec2_region: :maps.get("ec2_region", stateMap), ec2_instance_id: :maps.get("ec2_instance_id", stateMap), ec2_availability_zone: :maps.get("ec2_availability_zone", stateMap), ec2_security_group_ids: :maps.get("ec2_security_group_ids", stateMap), ec2_owner_id: :maps.get("ec2_owner_id", stateMap), ec2_instance_tags: :maps.get("ec2_instance_tags", stateMap), os_distribution: :maps.get("os_distribution", stateMap), os_version: :maps.get("os_version", stateMap), ec2_vpc_id: :maps.get("ec2_vpc_id", stateMap), ec2_subnet_id: :maps.get("ec2_subnet_id", stateMap))
  end


  def to_group_routing_key(state) do
    :binary.list_to_bin([erlrecord_dog_state(state, :environment), ".", erlrecord_dog_state(state, :location), ".", erlrecord_dog_state(state, :group), ".", "*"])
  end


  def to_host_routing_key(state) do
    :binary.list_to_bin([erlrecord_dog_state(state, :environment), ".", erlrecord_dog_state(state, :location), ".", "*", ".", erlrecord_dog_state(state, :hostkey)])
  end

end
