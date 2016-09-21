ovs-ofctl add-flow br17 table=0,priority=100,in_port=1,ip,actions=goto_table:81
ovs-ofctl add-flow br17 table=0,priority=100,in_port=2,ip,actions=goto_table:81
ovs-ofctl add-flow br17 table=0,priority=100,in_port=3,ip,actions=goto_table:81
ovs-ofctl add-flow br17 table=0,priority=100,in_port=4,ip,actions=goto_table:81
ovs-ofctl add-flow br17 table=82,priority=100,ip,nw_dst=10.1.0.0/16,actions=output:1
ovs-ofctl add-flow br17 table=82,priority=100,ip,nw_dst=10.2.0.0/16,actions=output:2
ovs-ofctl add-flow br17 table=82,priority=100,ip,nw_dst=10.3.0.0/16,actions=output:3
ovs-ofctl add-flow br17 table=82,priority=100,ip,nw_dst=10.4.0.0/16,actions=output:4
ovs-ofctl add-flow br17 priority=100,table=81,in_port=1,ip,actions=push_vlan:0x8100,set_field:9-\>vlan_vid,goto_table:82
ovs-ofctl add-flow br17 priority=100,table=81,in_port=2,ip,actions=push_vlan:0x8100,set_field:11-\>vlan_vid,goto_table:82
ovs-ofctl add-flow br17 priority=100,table=81,in_port=3,ip,actions=push_vlan:0x8100,set_field:13-\>vlan_vid,goto_table:82
ovs-ofctl add-flow br17 priority=100,table=81,in_port=4,ip,actions=push_vlan:0x8100,set_field:15-\>vlan_vid,goto_table:82
ovs-ofctl add-flow br18 table=0,priority=100,in_port=5,ip,actions=goto_table:86
ovs-ofctl add-flow br18 table=0,priority=100,in_port=6,ip,actions=goto_table:86
ovs-ofctl add-flow br18 table=0,priority=100,in_port=7,ip,actions=goto_table:86
ovs-ofctl add-flow br18 table=0,priority=100,in_port=8,ip,actions=goto_table:86
ovs-ofctl add-flow br18 table=87,priority=100,ip,nw_dst=10.1.0.0/16,actions=output:5
ovs-ofctl add-flow br18 table=87,priority=100,ip,nw_dst=10.2.0.0/16,actions=output:6
ovs-ofctl add-flow br18 table=87,priority=100,ip,nw_dst=10.3.0.0/16,actions=output:7
ovs-ofctl add-flow br18 table=87,priority=100,ip,nw_dst=10.4.0.0/16,actions=output:8
ovs-ofctl add-flow br18 priority=100,table=86,in_port=5,ip,actions=push_vlan:0x8100,set_field:10-\>vlan_vid,goto_table:87
ovs-ofctl add-flow br18 priority=100,table=86,in_port=6,ip,actions=push_vlan:0x8100,set_field:12-\>vlan_vid,goto_table:87
ovs-ofctl add-flow br18 priority=100,table=86,in_port=7,ip,actions=push_vlan:0x8100,set_field:14-\>vlan_vid,goto_table:87
ovs-ofctl add-flow br18 priority=100,table=86,in_port=8,ip,actions=push_vlan:0x8100,set_field:16-\>vlan_vid,goto_table:87