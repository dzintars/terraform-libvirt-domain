version: 2
ethernets:
  ${interface_name}:
    %{ if dhcp == "true" }
    dhcp4: true
    mac: ${mac}
    %{ else }
    addresses:
      - ${addresses}
    gateway4: ${gateway}
    nameservers:
      addresses:
      - ${ns1}
      - ${ns2}
      - ${ns3}
    %{ endif }
