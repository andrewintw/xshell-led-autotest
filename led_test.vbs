Const def_ms = 400

Function sleep(ms)
	xsh.Session.Sleep ms
End Function

Function do_cmd(cmd)
	xsh.Screen.Send cmd
	xsh.Screen.Send VbCr
	sleep def_ms
End Function

Function ctrl_c()
	xsh.Screen.Send ""
	sleep def_ms
End Function

Function led_test()
	' order: Power >> WiFi/LTE >> Ethernet >> LoRa

	do_cmd "led all off"
	
	' ## POWER LED TEST ##
	do_cmd "led power_r on"
	do_cmd "led power_r off"
	do_cmd "led power_r toggle"
	do_cmd "led power_r toggle"
	
	do_cmd "led power_g on"
	do_cmd "led power_g off"
	do_cmd "led power_g toggle"
	do_cmd "led power_g toggle"

	do_cmd "led power_b on"
	do_cmd "led power_b off"
	do_cmd "led power_b toggle"
	do_cmd "led power_b toggle"
	
	' ## WIFI LED TEST ##
	do_cmd "led wifi_r on"
	do_cmd "led wifi_r off"
	do_cmd "led wifi_r toggle"
	do_cmd "led wifi_r toggle"
	
	do_cmd "led wifi_g on"
	do_cmd "led wifi_g off"
	do_cmd "led wifi_g toggle"
	do_cmd "led wifi_g toggle"

	do_cmd "led wifi_b on"
	do_cmd "led wifi_b off"
	do_cmd "led wifi_b toggle"
	do_cmd "led wifi_b toggle"
	
	' ## ETH LED TEST ##
	do_cmd "led eth_r on"
	do_cmd "led eth_r off"
	do_cmd "led eth_r toggle"
	do_cmd "led eth_r toggle"
	
	do_cmd "led eth_g on"
	do_cmd "led eth_g off"
	do_cmd "led eth_g toggle"
	do_cmd "led eth_g toggle"

	do_cmd "led eth_b on"
	do_cmd "led eth_b off"
	do_cmd "led eth_b toggle"
	do_cmd "led eth_b toggle"

	' ## LORA LED TEST ##
	do_cmd "led lora_r on"
	do_cmd "led lora_r off"
	do_cmd "led lora_r toggle"
	do_cmd "led lora_r toggle"
	
	do_cmd "led lora_g on"
	do_cmd "led lora_g off"
	do_cmd "led lora_g toggle"
	do_cmd "led lora_g toggle"

	do_cmd "led lora_b on"
	do_cmd "led lora_b off"
	do_cmd "led lora_b toggle"
	do_cmd "led lora_b toggle"

	' ## White LED TEST ##
	do_cmd "led all_power on"
	do_cmd "led all_power off"
	do_cmd "led all_wifi on"
	do_cmd "led all_wifi off"
	do_cmd "led all_eth on"
	do_cmd "led all_eth off"
	do_cmd "led all_lora on"
	do_cmd "led all_lora off"
	
	' ## RGB LED TEST ##
	do_cmd "led all_r on"
	do_cmd "led all_r off"
	do_cmd "led all_g on"
	do_cmd "led all_g off"
	do_cmd "led all_b on"
	do_cmd "led all_b off"
	
	' ## ALL LED TEST ##
	do_cmd "led all on"
	do_cmd "led all off"
	End Function

Sub Main
	ctrl_c
	led_test
End Sub

