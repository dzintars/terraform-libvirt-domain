version: 2
ethernets:
  ${interface_name}:
    dhcp4: no
    gateway4: ${gateway}
    addresses:
      - ${addresses}
    nameservers:
      addresses:
        - ${ns1}
        - ${ns2}
        - ${ns3}
