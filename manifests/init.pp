class bt_iptables::bt_iptables ( $version = "latest") {
    
    package {"iptables":
        ensure => $version,
    }
    
    file {"/etc/iptables.conf":
        ensure => present,
	    source => "puppet:///bt_iptables/iptables.conf",
	    owner => root,
	    group => root,
	    mode => 0644,
    }    

    file {"/etc/init.d/firewall":
        ensure  => file,
        mode    => 0544,
        owner   => root,
        group   => root,
        before  => File["/etc/iptables.conf"],
        source  => "puppet:///bt_iptables/firewall",
    }
}
