# Hardened Firefox

### Sources 

* [Pyllyukko's User.js ](https://github.com/pyllyukko/user.js/blob/master/user.js)
* [arkenfox user.js](https://github.com/arkenfox/user.js/blob/master/user.js)

### Extensions

* [Ublock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
* [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/) / [LocalCDN](https://addons.mozilla.org/en-US/firefox/addon/localcdn-fork-of-decentraleyes/)
* [Cookie Auto Delete](https://addons.mozilla.org/en-US/firefox/addon/cookie-autodelete/)
* [NeatURL](https://addons.mozilla.org/en-US/firefox/addon/neat-url/) / [ClearURLs](https://addons.mozilla.org/en-US/firefox/addon/clearurls/)
* [User Agent Switcher](https://addons.mozilla.org/en-US/firefox/addon/user-agent-string-switcher/)


###  Configuration
> The following section covers settings to be modified in the `about:config` for hardened security

* Web block RTC

```
media.peerconnection.enabled = false
```

* Fingerprinting resistance

```
privacy.resistfingerprinting = true
```
* Letterboxing

```
privacy.resistFingerprinting.letterboxing = true
privacy.resistFingerprinting.letterboxing.dimensions = 1400x740,990x715,680x730 
```
> * Dimensions format : width1 x height1 , width2xheight2 , width3xheight3 . To find current dimensions visit [here](https://www.rapidtables.com/web/tools/window-size.html)
> * Dimensions are set with respect to : Normal layout , floating layout , tabbed layout

* Disable 3DES Cypher for security flaws

```
security.ssl3.rsa_des_ede3_sha = false
```

* Optimise SSL

```
security.ssl.require_safe_negotiation = true
```

* Prevent network information leakage via javascript

```
dom.netinfo.enabled = false
network.allow-experiments = false
```
* TLS

```
security.tls.version.min = 3
security.ssl.enable_false_start = false
```

* Improve forward secrecy

```
security.tls.enable_0rtt_data = false
```

* Disable Form autofill 

```
browser.formfil.enable = false
```
* Disable preloading of auto-complete urls

```
browser.fixup.alternate.enabled = false
browser.fixup.hide_user_pass = true 
browser.urlbar.speculativeConnect.enabled = false
```

* Disable pinging URIs specified in HTML

```
browser.send_pings = false
browser.send_pings.require_same_host = true
```

* Prevent auto download of Content Decryption Module by Google

```
media.gmp-widevinecdm.enabled = false
```

* Disable DOM Timing API

```
dom.enable_performance = false
dom.enable_user_timing = false
dom.enable_resource_timing = false
```

* Disable Network API

```
dom.network.enabled = false
```

* Disable battery api

```
dom.battery.enabled = false
```
* Disable Unity Web Audio API

```
dom.webaudio.enabled = false
```

* Disable gamepad API to prevent USB device enumeration

```
dom.gamepad.enabled = false
```
* Prevent font enumeration

```
browser.display.use_document_fonts = 0
```
> * This will prevent websites from using system fonts and resolve to ugly default fonts. Incase you want better fonts on websites but dont want to reveal your system fonts the following extension is suggested :
> * [BP Block Font Fingerprint](https://addons.mozilla.org/en-US/firefox/addon/bp-block-font-fingerprint/)


* Disable speech recognition and synthesis

```
media.webspeech.recognition.enable = false
media.webspeech.synth.enabled = false
```

* Prevent websites from interacting with Mic & Camera

```
media.navigator.enabled = false 
camera.control.face_detection.enabled = false 
```
* Prevent capture of local camera and microphone streams

```
media.navigator.enabled = false
media.navigator.video.enabled = false
media.getusermedia.screensharing.enabled = false
media.getusermedia.audiocapture.enabled = false
```
* Block sensors

```
device.sensors.enabled = false
```
* Prevent FF from sending additional info to sites

```
beacon.enabled = false
```
* Prevent Websites & FF from detecting offline/online status

```
network.connectivity-service.enabled = false
network.manage-offline-status = false
```

* Disable crash reports
```
browser.tabs.crashReporting.sendReport = false
browser.crashReports.unsubmittedCheck.enabled = false
browser.crashReports.unsubmittedCheck.autoSubmit2 = false
breakpad.reportURL = ""
```
* Disable health reports

```
datareporting.policy.dataSubmissionEnabled = false 
datareporting.healthreport.service.enabled = false
datareporting.healthreport.uploadEnabled = false
```
* Disable Captive Portal detection

```
captivedetect.canonicalURL = ""
network.captive-portal-service.enabled = false
```

* Disable Google scanning downloads for safe browsing api 
```
browser.safebrowsing.downloads.remote.enabled  = false
```

* Disable VideoStats

```
media.video_stats.enabled = false
```

* Dont reveal build ID

```
general.buildID.override = 20100101
browser.startup.homepage_override.buildID = 20100101
```


* Disable prefetching pages

```
network.dns.disablePrefetch = true
network.dns.disablePrefetchFromHTTPS = true
network.predictor.enabled = false
network.predictor.enable-prefetch = false
network.prefetch-next = false
network.http.speculative-parallel-limit = 0 
```
> * Enabling `network.predictor.enabled` & `network.prefetch-next` may slow down loading of websites but will prevent other websites from gathering small infromation about you. The performance difference is minimal. 

* Disable disk caching

```
browser.cache.disk.enable = false
browser.cache.disk_cache_ssl = false
browser.cache.memory.enable = false
browser.cache.offline.enable = false
browser.cache.insecure.enable = false
```

* Disable geolocation

```
geo.enabled = false
geo.provider.use_gpsd = false [linux]
geo.provider.use_corelocation = false [linux]
geo.provider.ms-windows-location = false [windows]
```
* Prevent search engienes from GeoIP lookup instead use a preset region

```
browser.search.countryCode = "US"
browser.search.region = "US"
browser.search.geoip.url = ""
```
* Disable Mozilla's region updates

```
browser.region.network.url = ""
browser.region.update.enabled = false 
```
* Disable search engiene updates

```
browser.search.update = false
```

* Disable extension discovery

```
plugin.scan.plid.all = false
```
* Disable extension recommendations (uses google analytics)

```
extensions.getAddons.showPane = false
extensions.htmlaboutaddons.recommendations.enabled
browser.discovery.enabled = false
```

* Disable Pocket by Mozilla & Extension recommendation

```
extensions.pocket.enabled = false
browser.newtabpage.activity-stream.section.highlights.includePocket = false
browser.discovery.enabled = false
```
* Enable first-party isolation

```
privacy.firstparty.isolate = true
```
* Enforce firefox blocklist

```
extensions.blocklist.enabled = true
```

* Disable webgl
```
webgl.disabled = true
webgl.disable-extensions = true
webgl.enable-debug-renderer-info = false
```
* Block Crypto mining

```
privacy.trackingprotection.cryptomining.enabled = true
```
* Disable PDFs to execute js

```
pdfjs.enableScripting = false
```
> * This feature will break PDFs with built in forms.

* Disable Remote Debugging 

```
devtools.debugger.remote-enabled = false
devtools.chrome.enabled = false
devtools.debugger.force-local = true
devtools.webide.enabled = false
devtools.webide.autoinstallADBHelper = false 
devtools.webide.autoinstallFxdtAdapters = false
```

* Disable Telemetry 

```
browser.newtabpage.activity-stream.feeds.telemetry = false
browser.newtabpage.activity-stream.telemetry = false
browser.pingcentre.telemetry = false
devtools.onboarding.telemetry-logged = false
media.wmf.deblacklisting-for-telemetry-in-gpu-process = false
toolkit.telemetry.archive.enabled = false
toolkit.telemetry.bhrping.enabled = false
toolkit.telemetry.firstshutdownping.enabled = false
toolkit.telemetry.hybridcontent.enabled = false
toolkit.telemetry.newprofileping.enabled = false
toolkit.telemetry.unified = false
toolkit.telemetry.updateping.enabled = false
toolkit.telemetry.shutdownpingsender.enabled = false
loop.logDomains = false
toolkit.coverage.endpoint.base = ""
toolkit.coverage.opt-out = true
toolkit.telemetry.coverage.opt-out = true
app.shield.optoutstudies.enabled = false
```

