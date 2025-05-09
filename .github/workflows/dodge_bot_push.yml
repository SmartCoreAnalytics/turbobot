name: Dodge Bot Push

on:
  schedule:
    - cron: '0 11 * * *'    # 14:00 Moscow Time (11:00 UTC)
  workflow_dispatch:

jobs:
  send_push:
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

      - name: Run Push Bot
        run: python dodge_bot.py push
        env:
          TELEGRAM_TOKEN: ${{ secrets.TELEGRAM_TOKEN }}
          TELEGRAM_USERNAME: ${{ secrets.TELEGRAM_USERNAME }}
