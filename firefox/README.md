# Hardened Firefox


###  Config
> The following section covers settings to be modified in the `about:config` for hardened security

* Web block RTC

```
media.peerconnection.enabled = false
```

* Fingerprinting resistance

```
privacy.resistfingerprinting = true
```

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
```

* Forward secrecy

```
security.tls.enable_0rtt_data = false
```

* Disable Form autofill 

```
browser.formfil.enable = false
```
