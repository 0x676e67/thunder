local m, s

m = Map("xunlei", translate("Xunlei"))
m.description = translate("<a>NAS Xunlei DSM 7.x Beta Version, Invitation code (3H9F7Y6D)</a> | <a href=\"https://github.com/gngpp/nas-xunlei\" target=\"_blank\">Project GitHub URL</a>")

m:section(SimpleSection).template = "xunlei/xunlei_status"

s = m:section(TypedSection, "xunlei")
s.addremove = false
s.anonymous = true

o = s:option(Flag, "enabled", translate("Enabled"))
o.rmempty = false

o = s:option(Value, "host", translate("Host"))
o.default = "0.0.0.0"
o.datatype = "ipaddr"

o = s:option(Value, "port", translate("Port"))
o.datatype = "and(port,min(1025))"
o.default = "5055"
o.rmempty = false

o = s:option(Value, "config_path", translate("Data Storage Path"))
o.default = "/etc/xunlei"

o = s:option(Value, "download_path", translate("Default Download Path"))
o.default = "/tmp/downloads"

return m
