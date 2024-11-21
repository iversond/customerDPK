Testing custom DPK in CM 18


```yaml
"custom_input":
  "crafted_dpk_customization":
    "environment_name": "%{::envname}"
    "io_portalwar::index_redirect":  "true"
    "io_portalwar::redirect_target": "./%{hiera('pia_site_name')}/signon.html"
    "io_portalwar::healthcheck":     "up-%{::envname}-%{::envtype}"
    "io_portalwar::hostinfo": "lb"
    "io_portalwar::robots": "true"
    "io_weblogic::java_options":
      "%{hiera('pia_domain_name')}":
        "-XX:+UseG1": "GC"
        "-XX:+UseString": "Deduplication"
        "-XX:G1Reserve": "Percent=25"
        "-XX:InitialHeap": "OccupancyPercent=30"
        "-Dtuxedo.jolt.LLEDeprecationWarnLevel": "=NONE"
```

Package up .zip

> `git archive` does not include submodule files, so the Github Release feature doesn't work.

```bash
zip -r customerDPK.zip archives puppet
```

