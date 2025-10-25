#!/root/technical-works/venv/bin/python3
import asyncio
import os

from dotenv import load_dotenv
from aiogram import Bot, Dispatcher
from aiogram.types import Message


load_dotenv()


MESSAGE = ''\
'🛠 <b>The bot is undergoing maintenance</b> 🛠\n'\
'<b>Please come back in a few hours!</b> ⏳'


bot = Bot(os.getenv('BOT_TOKEN'))
dp = Dispatcher()


@dp.message()
async def message_handler(message: Message):
    await message.answer(MESSAGE, parse_mode='HTML')


async def main():
    await dp.start_polling(bot)


if __name__ == '__main__':
    asyncio.run(main())
