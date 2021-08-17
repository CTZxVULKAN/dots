# Hardened Firefox


### Extensions

* Ublock Origin
* Decentraleyes 
* Cookie Auto Delete
* User Agent Switcher


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
browser.urlbar.speculativeConnect.enabled = false
```

* Prevent auto download of Content Decryption Module by Google

```
media.gmp-widevinecdm.enabled = false
```

* Prevent websites from interacting with Mic & Camera

```
media.navigator.enabled = false 
```

* Prevent FF from sending addition info to sites

```
beacon.enabled = false
```

* Disable Google scanning downloads for safe browsing api 

```
browser.safebrowsing.downloads.remote.enabled  = false
```

* Disable prefetching pages

```
network.dns.disablePrefetch = true
network.dns.disablePrefetchFromHTTPS = true
network.predictor.enabled = false
network.predictor.enable-prefetch = false
network.prefetch-next = false
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
```

* Disable extension discovery

```
plugin.scan.plid.all = false
```
* Disable Pocket by Mozilla 

```
extensions.pocket.enabled = false
browser.newtabpage.activity-stream.section.highlights.includePocket = false
```
* Enable first-party isolation

```
privacy.firstparty.isolate = true
```

* Disable webgl
```
webgl.disabled = true
```

* Disable PDFs to execute js

```
pdfjs.enableScripting = false
```
> * This feature will break PDFs with built in forms.

* Disable Telemetry 

```
browser.newtabpage.activity-stream.feeds.telemetry browser.newtabpage.activity-stream.telemetry = false
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
```

