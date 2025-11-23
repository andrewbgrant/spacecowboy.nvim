interface CyberDeck {
  model: string;
  ram: number;
  neural: boolean;
}

type Status = "offline" | "jacked-in" | "traced";
const MAX_BANDWIDTH = 1000;

class MatrixConnection<T extends CyberDeck> {
  private static count = 0;
  public status: Status = "offline";

  constructor(public readonly runner: string, private config: T) {
    MatrixConnection.count++;
  }

  static getCount(): number { return this.count; }

  async jackIn(host: string, port: number): Promise<boolean> {
    console.log(`Connecting to ${host}:${port}...`);
    this.status = "jacked-in";
    console.log(`Connected: ${this.bandwidth()}mbps`);
    return true;
  }

  private bandwidth(): number {
    const eff = this.config.neural ? 1.5 : 1.0;
    return Math.min(this.config.ram * eff, MAX_BANDWIDTH);
  }

  breachIce(): boolean {
    for (let i = 0; i < 3; i++) {
      if (Math.random() < 0.3 + i * 0.3) return true;
    }
    return false;
  }
}

async function main(): Promise<void> {
  const deck: CyberDeck = { model: "Ono-Sendai VII", ram: 1024, neural: true };
  const conn = new MatrixConnection("Case", deck);
  await conn.jackIn("matrix.net", 7777);
}

main().catch(console.error);
