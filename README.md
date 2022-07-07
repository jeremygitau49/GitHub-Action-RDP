# [GitHub Action RDP (Remote Desktop Protocol)]
Remote operational GitHub Actions VM for debugging, etc..

## Available VMs
* Windows Server 2019
* Windows Server 2022

## Usage
### First use
1. Click `Fork` to create a new repository from GitHub-Action-VM.
2. Signup for an [ngrok](https://dashboard.ngrok.com/signup) account.
3. Get the Authtoken at [here](https://dashboard.ngrok.com/get-started/your-authtoken).
4. Go to Settings > Secrets > New repository secret.
5. Make a secret called `NGROK_AUTH_TOKEN`, `NGROK_REGION` and set it to the Authtoken from ngrok, ngrok region.

```
ex. Name: NGROK_AUTH_TOKEN | value: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    Name: NGROK_REGION     | value: xx (Check ngrok regions list.)
```

#### ngrok regions list

`us` United States<br>
`eu` Europe<br>
`ap` Asia/Pacific<br>
`au` Australia<br>
`sa` South America<br>
`jp` Japan<br>
`in` India<br>

* You only need to set it once.

### Start VM
1. Go to Actions > (The VM you want to use. ex. Windows Server 2019) > Run workflow > Run workflow.
2. Reload and click the latest Workflow runs.
3. Wait until `VM Info` done.
> Don't forget to replace *** to your `NGROK_REGION` and remove `tcp://` .<br>
> ex. `0.tcp.us.ngrok.io:00000`
5. Done!

