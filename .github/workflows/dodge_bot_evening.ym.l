name: Dodge Bot Evening

on:
  schedule:
    - cron: '0 16 * * *'    # 19:00 Moscow Time (16:00 UTC)
  workflow_dispatch:

jobs:
  send_evening:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repo
        uses: actions/checkout@v3

      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.x'

      - name: Install dependencies
        run: pip install -r requirements.txt

      - name: Run Evening Bot
        run: python dodge_bot.py evening
        env:
          TELEGRAM_TOKEN: ${{ secrets.TELEGRAM_TOKEN }}
          TELEGRAM_USERNAME: ${{ secrets.TELEGRAM_USERNAME }}
