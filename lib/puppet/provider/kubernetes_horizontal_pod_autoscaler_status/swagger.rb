
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_horizontal_pod_autoscaler_status).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        observed_generation: instance.observedGeneration.respond_to?(:to_hash) ? instance.observedGeneration.to_hash : instance.observedGeneration,
      
    
      
        last_scale_time: instance.lastScaleTime.respond_to?(:to_hash) ? instance.lastScaleTime.to_hash : instance.lastScaleTime,
      
    
      
        current_replicas: instance.currentReplicas.respond_to?(:to_hash) ? instance.currentReplicas.to_hash : instance.currentReplicas,
      
    
      
        desired_replicas: instance.desiredReplicas.respond_to?(:to_hash) ? instance.desiredReplicas.to_hash : instance.desiredReplicas,
      
    
      
        current_cpu_utilization_percentage: instance.currentCPUUtilizationPercentage.respond_to?(:to_hash) ? instance.currentCPUUtilizationPercentage.to_hash : instance.currentCPUUtilizationPercentage,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_horizontal_pod_autoscaler_status #{name}")
    create_instance_of('horizontal_pod_autoscaler_status', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('horizontal_pod_autoscaler_status', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_horizontal_pod_autoscaler_status #{name}")
    destroy_instance_of('horizontal_pod_autoscaler_status', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('horizontal_pod_autoscaler_status')
  end

  def build_params
    params = {
    
      
        observedGeneration: resource[:observed_generation],
      
    
      
        lastScaleTime: resource[:last_scale_time],
      
    
      
        currentReplicas: resource[:current_replicas],
      
    
      
        desiredReplicas: resource[:desired_replicas],
      
    
      
        currentCPUUtilizationPercentage: resource[:current_cpu_utilization_percentage],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end