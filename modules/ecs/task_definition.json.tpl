[
  {
    "name": "${app_name}-${env}-app",
    "image": "526383991415.dkr.ecr.eu-central-1.amazonaws.com/app1:v2",
    "networkMode": "awsvpc",
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ],
    "environment": [
      {
        "name": "VERSION",
        "value": "${image_tag}"
      }
    ]
  }
]
