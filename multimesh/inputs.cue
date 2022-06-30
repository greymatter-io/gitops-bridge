package multimesh

config: {
	// Flags
	spire:           bool | *false @tag(spire,type=bool)           // enable Spire-based mTLS
}

mesh: {
  metadata: {
    name: string | *"greymatter-mesh"
  }
  spec: {
    install_namespace: string | *"greymatter"
    release_version: string | *"1.7" // deprecated
    zone: string | *"default-zone"
    images: {
      proxy: string | *"quay.io/greymatterio/gm-proxy:1.7.0"
    }
  }
}

defaults: {
	image_pull_secret_name: string | *"gm-docker-secret"
	redis_cluster_name:     "redis"
	redis_host:             "\(redis_cluster_name).\(mesh.spec.install_namespace).svc.cluster.local"
  control_cluster_name:   "controlensemble"
	control_host:           "\(control_cluster_name).\(mesh.spec.install_namespace).svc.cluster.local"
	_enable_rbac: false
	ports: {
		default_ingress:    10808
		redis_ingress:      10910
    control_ingress:    50000
	}

	enable_edge_tls: false

}
