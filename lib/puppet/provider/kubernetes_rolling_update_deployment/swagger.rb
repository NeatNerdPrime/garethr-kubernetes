
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_rolling_update_deployment).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        max_unavailable: instance.maxUnavailable.respond_to?(:to_hash) ? instance.maxUnavailable.to_hash : instance.maxUnavailable,
      
    
      
        max_surge: instance.maxSurge.respond_to?(:to_hash) ? instance.maxSurge.to_hash : instance.maxSurge,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_rolling_update_deployment #{name}")
    create_instance_of('rolling_update_deployment', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('rolling_update_deployment', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_rolling_update_deployment #{name}")
    destroy_instance_of('rolling_update_deployment', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('rolling_update_deployment')
  end

  def build_params
    params = {
    
      
        maxUnavailable: resource[:max_unavailable],
      
    
      
        maxSurge: resource[:max_surge],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end