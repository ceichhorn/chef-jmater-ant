def install_ark(resource_name)
  ChefSpec::Matchers::ResourceMatcher.new(:ark, :install, resource_name)
end
def install_yum_package(resource_name)
  ChefSpec::Matchers::ResourceMatcher.new(:yum_package, :install, resource_name)
end
