module my_nft::my_nft;
use std::string::String;

public struct HeroNFT has key, store {
    id: UID,
    name: String,
    description: String,  // A short bio for the hero.
    image_url: String,
    generation: u64,
}

fun init(ctx: &mut TxContext) {

    let publisher = tx_context::sender(ctx);

    // --- Minting "Captain Comet"
    let hero1 = HeroNFT {
        id: object::new(ctx),
        name: b"Captain Comet".to_string(),
        description: b"The fearless leader of the Galactic Guardians.".to_string(),
        image_url: b"ipfs://some_hash_for_comet.png".to_string(),
        generation: 1,
    };
    
    transfer::transfer(hero1, publisher);
}



