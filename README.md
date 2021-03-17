# hass_dsame
Docker container to listen to S.A.M.E weather radio signals and generate a corresponding event in Home Assistant. Relies on the [dsame](https://github.com/MaxwellDPS/dsame) library for generating events presently. Eventually this will be replaced with my own Python code that handles interpreting the data multimon-ng spits out from processing the EAS tones it's fed via rtl_fm.

Must use privileged for execution of the container and pass /dev/bus/usb into container.

Additionally, you must specifiy the following environment variables:

- ACCESS_TOKEN: This is a long-lived access token for your Home Assistant user
- HASS_HOST: This is the URL prefix for your HA instance, for example, http://192.168.1.5:8123 or https://homeassistant.mydomain.com (leave off the trailing slash)
- SAME_CODES: Specify one or more SAME codes for your location. You can look up your SAME code at [the NWR website](https://www.weather.gov/NWR/counties). Separate multiple codes with a space.
- FREQ: Defaults to 162.525 MHz. You should set this to your local radio transmitter frequency, IE 162.525M 
- EVENT_TYPES: (optional) Defaults to TOR for Tornado. You can also [check the NWR website](https://www.weather.gov/nwr/eventcodes) for three-letter codes, space-separated.

You may also specify PPM and GAIN, defaulting to 0 and 10 respectively.

See the example docker-compose.yaml for more. 

Many thanks to [Mathias](https://twitter.com/AMathiasT) for all his help and patience while I tooled and fiddled.

The test version of the source can be mapped to /opt/source.sh inside the container with some options changed to support wideband FM instead of narrow-band. This allows you to test your entire setup using a Raspberry Pi with PiFM to generate the radio signal and ensure your automations will trigger correctly.
