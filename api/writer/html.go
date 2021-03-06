package writer

import (
	"strings"

	"github.com/rancher/norman/types"
)

var (
	start = `
<!DOCTYPE html>
<!-- If you are reading this, there is a good chance you would prefer sending an
"Accept: application/json" header and receiving actual JSON responses. -->
<link rel="stylesheet" type="text/css" href="https://releases.rancher.com/api-ui/1.1.0/ui.min.css" />
<script src="https://releases.rancher.com/api-ui/1.1.0/ui.min.js"></script>
<script>
var user = "admin";
var curlUser='${CATTLE_ACCESS_KEY}:${CATTLE_SECRET_KEY}';
var schemas="%SCHEMAS%";
var data =
`
	end = []byte(`</script>
`)
)

type HTMLResponseWriter struct {
	JSONResponseWriter
}

func (h *HTMLResponseWriter) start(apiContext *types.APIContext, code int, obj interface{}) {
	apiContext.Response.Header().Set("content-type", "text/html")
	apiContext.Response.WriteHeader(code)
}

func (h *HTMLResponseWriter) Write(apiContext *types.APIContext, code int, obj interface{}) {
	h.start(apiContext, code, obj)
	schemaSchema := apiContext.Schemas.Schema(nil, "/v3/schema")
	if schemaSchema != nil {
		headerString := strings.Replace(start, "%SCHEMAS%", apiContext.URLBuilder.Collection(schemaSchema), 1)
		apiContext.Response.Write([]byte(headerString))
	}
	h.Body(apiContext, code, obj)
	if schemaSchema != nil {
		apiContext.Response.Write(end)
	}
}
