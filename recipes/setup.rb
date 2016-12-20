package 'tree' do
	action :install
end

file '/etc/motd' do
	content "Property of ... Fred
	IPADRESS: #{node['ipadress']}
	HOSTNAME: #{node['hostname']}
	MEMORY: #{node['cpu']['0']['mhz']}
	CPU: #{node['memory']['total']}
"
	mode '0644'
	owner 'root'
	group 'root'
end
