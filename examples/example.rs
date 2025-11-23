use std::collections::HashMap;

const MAX_BANDWIDTH: f64 = 1000.0;

#[derive(Debug)]
struct CyberDeck { model: String, ram: u32, neural: bool }

impl CyberDeck {
    fn new(model: &str, ram: u32, neural: bool) -> Self {
        Self { model: model.to_string(), ram, neural }
    }

    fn bandwidth(&self) -> f64 {
        let eff = if self.neural { 1.5 } else { 1.0 };
        (self.ram as f64 * eff).min(MAX_BANDWIDTH)
    }
}

struct NetRunner {
    handle: String,
    reputation: i32,
    connections: HashMap<String, bool>,
}

impl NetRunner {
    fn new(handle: &str) -> Self {
        Self { handle: handle.to_string(), reputation: 0, connections: HashMap::new() }
    }

    fn jack_in(&mut self, host: &str) -> Result<(), String> {
        if self.connections.contains_key(host) {
            return Err(format!("Already connected to {}", host));
        }
        println!("[{}] Jacking into {}...", self.handle, host);
        self.connections.insert(host.to_string(), true);
        Ok(())
    }

    fn breach_ice(&mut self, _target: &str) -> bool {
        for i in 0..3 {
            if rand::random::<f64>() < 0.3 + (i as f64 * 0.3) {
                self.reputation += 10;
                return true;
            }
        }
        false
    }
}

fn main() {
    let deck = CyberDeck::new("Ono-Sendai VII", 1024, true);
    let mut runner = NetRunner::new("Case");
    println!("Bandwidth: {:.2} mbps", deck.bandwidth());

    if runner.jack_in("matrix.net").is_ok() && runner.breach_ice("mainframe") {
        println!("ICE breached! Rep: {}", runner.reputation);
    }
}
