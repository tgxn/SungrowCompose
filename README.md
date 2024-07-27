
# Hassio add-on Repository
This repository contains Hass.io add-ons. All add-ons in this repository are tested on Hass.io, Home Assistant Core installation is ~not~ supported.

Just put this in your compose file ay?

```yaml
services:
  
  ...

  hassio_sungrow:
    image: ghcr.io/tgxn/sungrowcompose:main
    networks:
      - mqtt-net
    restart: always
    environment:
      # int seconds
      TEST_INTERVAL: 900
      TZ: Australia/Perth

      # read this: https://gist.github.com/Paraphraser/cad3b0aa6428c58ee87bc835ac12ed37#part4
      GOSUNGROW_APPKEY: "93D72E60331ABDCDC7B39ADC2D1F32B3"

      GOSUNGROW_DEBUG: false
      GOSUNGROW_HOST: "https://augateway.isolarcloud.com"

      GOSUNGROW_USER: "FILL_ME"
      GOSUNGROW_PASSWORD: "FILL_ME"
      GOSUNGROW_TIMEOUT: 60

      GOSUNGROW_MQTT_HOST: mosquitto
      GOSUNGROW_MQTT_PORT: 1883
      GOSUNGROW_MQTT_USER: "FILL_ME"
      GOSUNGROW_MQTT_PASSWORD: "FILL_ME"

```

### Installation
1. Navigate in your Home Assistant frontend to <kbd>Supervisor</kbd> -> <kbd>Add-on Store</kbd>.

![Install add-on](https://github.com/MickMake/HomeAssistantAddons/raw/main/GoSungrow/docs/ScreenShot1.png)

2. Click the 3-dots menu at upper right <kbd>...</kbd> > <kbd>Repositories</kbd> and add this repository's URL: [https://github.com/MickMake/HomeAssistantAddons](https://github.com/MickMake/HomeAssistantAddons)

![Install add-on](https://github.com/MickMake/HomeAssistantAddons/raw/main/GoSungrow/docs/ScreenShot2.png)

![Install add-on](https://github.com/MickMake/HomeAssistantAddons/raw/main/GoSungrow/docs/ScreenShot3.png)

![Install add-on](https://github.com/MickMake/HomeAssistantAddons/raw/main/GoSungrow/docs/ScreenShot4.png)

3. Scroll down the page to find the new repository, and click the new add-on named you want. Ex:

![Install add-on](https://github.com/MickMake/HomeAssistantAddons/raw/main/GoSungrow/docs/ScreenShot4b.png)

4. Click <kbd>Install</kbd> and give it a few minutes to finish downloading.

5. Follow the instruction for each addon to configures.


### Updating
Enable `Auto update` on the desired add-on or browse Hassio Add-on Store Tab to check for update

# Add-ons in this Repository

### [GoSunGrow for HA](https://github.com/MickMake/HomeAssistantAddons/tree/main/GoSungrow)
My iSolarCloud API interface for [Home Assistant](https://www.home-assistant.io/).

The [GoSunGrow](https://github.com/MickMake/GoSunGrow/) API interface doesn't just do HA, but a lot more.
