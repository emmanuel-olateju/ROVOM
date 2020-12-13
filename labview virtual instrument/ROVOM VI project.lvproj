<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="acceleration_quantities.vi" Type="VI" URL="../acceleration_quantities.vi"/>
		<Item Name="drag_quantities.vi" Type="VI" URL="../drag_quantities.vi"/>
		<Item Name="propeller_horizontal_force_calculation.vi" Type="VI" URL="../propeller_horizontal_force_calculation.vi"/>
		<Item Name="reaction_quantity.vi" Type="VI" URL="../reaction_quantity.vi"/>
		<Item Name="resultant_force_check.vi" Type="VI" URL="../resultant_force_check.vi"/>
		<Item Name="ROVOM_VI.vi" Type="VI" URL="../ROVOM_VI.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
