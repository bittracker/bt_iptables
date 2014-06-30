define bt_iptables::ruleset ($description = $title,$ruleset="default", $rules) {
    file{"/etc/default/iptables":
        ensure => file,
        mode   => 0444,
        owner  => root,
        group  => root,
        require => File["/etc/iptables.conf"],
	content => template("bt_iptables/custom_$ruleset.erb"),
	 
    }    
}
