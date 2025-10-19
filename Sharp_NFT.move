module simple_nft::simple_nft;

    use std::string;
    use sui::object;
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;

    // Define NFT object
    struct SimpleNFT has key, store {
        id: object::UID,
        name: string::String,
        description: string::String,
        url: string::String,
    }

    // Mint NFT into caller’s wallet
    public entry fun mint(
        name: string::String,
        description: string::String,
        url: string::String,
        ctx: &mut TxContext
    ) {
        let nft = SimpleNFT {
            id: object::new(ctx),
            name,
            description,
            url,
        };
        transfer::transfer(nft, tx_context::sender(ctx), ctx);
    }

    // Allow transfer from one wallet to another
    public entry fun transfer_nft(
        nft: SimpleNFT,
        recipient: address,
        ctx: &mut TxContext
    ) {
        transfer::transfer(nft, recipient, ctx);
    }
