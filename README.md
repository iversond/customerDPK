Testing custom DPK in CM 18


```yaml
"custom_input":
  "crafted_dpk_customization":
    "io_portalwar::index_redirect":  "true"
    "io_portalwar::redirect_target": "./%{lookup('pia_site_name')}/signon.html"
    "io_portalwar::healthcheck":     "up"
```