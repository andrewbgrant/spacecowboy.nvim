import asyncio
import random
from dataclasses import dataclass

MAX_BANDWIDTH = 1000


@dataclass
class CyberDeck:
    model: str
    ram: int = 512
    neural: bool = True

    def bandwidth(self) -> float:
        efficiency = 1.5 if self.neural else 1.0
        return min(self.ram * efficiency, MAX_BANDWIDTH)


class NetRunner:
    def __init__(self, handle: str, reputation: int = 0):
        self.handle = handle
        self.reputation = reputation
        self._connected = False

    @property
    def is_online(self) -> bool:
        return self._connected

    async def jack_in(self, host: str) -> dict | None:
        '''Connect to a network host asynchronously.'''
        if self._connected:
            return None
        self._connected = True
        print(f"[{self.handle}] Jacking into {host}...")
        await asyncio.sleep(0.1)
        return {"status": "connected", "host": host}

    def breach_ice(self) -> bool:
        '''Attempt to breach ICE (Intrusion Countermeasure Electronics).'''
        for attempt in range(3):
            if random.random() < 0.3 + (attempt * 0.3):
                self.reputation += 10
                return True
        return False


async def main():
    deck = CyberDeck("Ono-Sendai VII", ram=1024)
    runner = NetRunner("Case", reputation=85)
    print(f"Bandwidth: {deck.bandwidth()}")
    await runner.jack_in("matrix.net")


if __name__ == "__main__":
    asyncio.run(main())
