# task2

It works without init bild or build server if you:

1. Create any repository in own ECR.
2. ADD any image in own repository.
3. Hard code image name in "task_definition.json.tpl"
   In my example its string:
   "image": "526383991415.dkr.ecr.eu-central-1.amazonaws.com/app1:v2",
