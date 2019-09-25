module github.com/rancher/norman

go 1.12

replace (
	github.com/matryer/moq => github.com/rancher/moq v0.0.0-20190404221404-ee5226d43009
	github.com/rancher/wrangler => github.com/kinarashah/wrangler v0.2.1-0.20190925200426-70f23af44bdc
)

require (
	github.com/ghodss/yaml v1.0.0
	github.com/gorilla/websocket v0.0.0-20150714140627-6eb6ad425a89
	github.com/maruel/panicparse v0.0.0-20171209025017-c0182c169410
	github.com/maruel/ut v1.0.0 // indirect
	github.com/matryer/moq v0.0.0-20190312154309-6cfb0558e1bd
	github.com/pkg/errors v0.8.1
	github.com/prometheus/client_golang v1.1.0
	github.com/sirupsen/logrus v1.4.2
	github.com/stretchr/testify v1.3.0
	golang.org/x/sync v0.0.0-20190423024810-112230192c58
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4
	google.golang.org/appengine v1.6.1 // indirect
	k8s.io/api v0.0.0-20190918155943-95b840bb6a1f
	k8s.io/apiextensions-apiserver v0.0.0-20190805184801-2defa3e98ef1
	k8s.io/apimachinery v0.0.0-20190913080033-27d36303b655
	k8s.io/client-go v0.0.0-20190918160344-1fbdaa4c8d90
	k8s.io/gengo v0.0.0-20190327210449-e17681d19d3a
	k8s.io/utils v0.0.0-20190801114015-581e00157fb1
)
