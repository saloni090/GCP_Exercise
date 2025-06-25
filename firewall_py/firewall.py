import googleapiclient.discovery

compute = googleapiclient.discovery.build("compute", "v1")

project = "your-project-id"
firewall_body = {
    "name": "allow-egress-to-gke-master",
    "network": "custom-vpc",
    "allowed": [{"IPProtocol": "all"}],
    "sourceRanges": ["10.0.0.0/8"],
}

request = compute.firewalls().insert(project=project, body=firewall_body)
response = request.execute()
print(response)
