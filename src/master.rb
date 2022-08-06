# coding: utf-8

wlan = WLAN.new('STA')
wlan.active(true)

wlan.connect('xxxxx', 'xxxxx')

while true
  # ネットワークパラメタを定期的に表示
  if( wlan.is_connected? )
    puts wlan.ifconfig
    puts wlan.config('ip')
    puts wlan.config('mac')
    wlan.invoke( 'http://www.gfd-dennou.org/' )
  end
  sleep 3600
end
