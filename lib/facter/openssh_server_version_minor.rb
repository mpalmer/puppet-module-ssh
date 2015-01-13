Facter.add(:openssh_server_version_minor) do
	confine :openssh_server_installed => true

	setcode do
		if Facter.value(:openssh_server_version) =~ /^\d+\.(\d+)(p\d+)?$/
			$1.to_i
		else
			nil
		end
	end
end
