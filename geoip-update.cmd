rem Install msys2 utils first
md legacy\bin
md legacy\csv
md geolite2\bin
md geolite2\csv

pushd legacy\bin
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz
wget -N http://geolite.maxmind.com/download/geoip/database/GeoIPv6.dat.gz
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLiteCityv6-beta/GeoLiteCityv6.dat.gz
wget -N http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum.dat.gz
wget -N http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNumv6.dat.gz
md c:\geoip
7z e -y GeoIP.dat.gz -oc:\geoip *
7z e -y GeoIPv6.dat.gz -oc:\geoip *
7z e -y GeoLiteCity.dat.gz -oc:\geoip *
7z e -y GeoLiteCityv6.dat.gz -oc:\geoip *
7z e -y GeoIPASNum.dat.gz -oc:\geoip *
7z e -y GeoIPASNumv6.dat.gz -oc:\geoip *
popd

pushd legacy\csv
wget -N http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip
wget -N http://geolite.maxmind.com/download/geoip/database/GeoIPv6.csv.gz
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLiteCity_CSV/GeoLiteCity-latest.zip
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLiteCityv6-beta/GeoLiteCityv6.csv.gz
wget -N http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum2.zip
wget -N http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum2v6.zip
popd

pushd geolite2\bin
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.tar.gz
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLite2-ASN.tar.gz
popd

pushd geolite2\csv
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLite2-City-CSV.zip
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country-CSV.zip
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLite2-ASN-CSV.zip
popd
