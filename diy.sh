# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)
# Please enter the custom command below (usually used to install third-party plugins) (can be left blank)
# git clone --depth=1 https://github.com/EOYOHOO/UA2F.git package/UA2F
# git clone --depth=1 https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# sed -i '8s/=\(.*\)/=1.11.0-alpha.1/' feeds/packages/net/sing-box/Makefile
# sed -i '13s/=\(.*\)/=f87b9f90946da8d6863c7e54fc9b28bc23465f3472116bf58b3d8d03d22301ca/' feeds/packages/net/sing-box/Makefile
rm -rf package/feeds/luci/luci-app-homeproxy
rm -rf feeds/luci/applications/luci-app-homeproxy
git clone https://github.com/muink/homeproxy.git package/homeproxy
