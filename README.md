# uptimerobot-action

Use this github action to pause and resume UptimeRobot Monitors during a deployment of a service.

## Usage

    ```yaml
    name: My Workflow

    on:
    push:
        branches:
        - main

    jobs:
    pause_resume:
        runs-on: ubuntu-latest
        steps:
        - name: Checkout code
            uses: actions/checkout@v2

        - name: Pause/Resume UptimeRobot Monitor
            uses: Brainchain-ai/uptimerobot-action@v1.0.0
            with:
              api_key: ${{ secrets.UPTIMEROBOT_API_KEY }}
              monitor_id: 'your_monitor_id'
              action: '0' # 0 for pause, 1 for resume

        - name: Deploy
            run: |
            echo "Deploying..."
            sleep 10
            echo "Deployed!"

        - name: Pause/Resume UptimeRobot Monitor
            uses: Brainchain-ai/uptimerobot-action@v1.0.0
            with:
              api_key: ${{ secrets.UPTIMEROBOT_API_KEY }}
              monitor_id: 'your_monitor_id'
              action: '1' # 0 for pause, 1 for resume
    ```
