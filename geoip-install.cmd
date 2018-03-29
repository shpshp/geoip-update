@echo off
rem Install msys2 utils first
pushd legacy\bin
md c:\geoip
7z e -y GeoIP.dat.gz -oc:\geoip *
7z e -y GeoIPv6.dat.gz -oc:\geoip *
7z e -y GeoLiteCity.dat.gz -oc:\geoip *
7z e -y GeoLiteCityv6.dat.gz -oc:\geoip *
7z e -y GeoIPASNum.dat.gz -oc:\geoip *
7z e -y GeoIPASNumv6.dat.gz -oc:\geoip *
popd
