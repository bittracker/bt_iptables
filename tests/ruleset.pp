include bt_iptables

bt_iptables::ruleset{"Firewall-Test":
        rules => [
			"-A INPUT -p tcp -m tcp --dport 7357 --syn -j ACCEPT",
			"-A INPUT -p tcp -m tcp --dport 27357 --syn -j ACCEPT"
		 ],
}
