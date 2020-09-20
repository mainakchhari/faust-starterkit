import os
from faust import App

app = App(
    id='test',
    broker=os.getenv('BROKER_URL'),
)


@app.agent()
async def print_agent(stream):
    async for value in stream:
        print(value)


@app.timer(interval=1.0)
async def producer():
    await print_agent.send(value="Hello World!")


def main():
    app.main()
