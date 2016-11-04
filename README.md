#BitCoin Payment Method for OpenCart

Decentralized BitCoin payment method for OpenCart 2.1 that works with bitcoind via RPC.

**OLDER VERSIONS**

[OpenCart 2.0](https://github.com/shaman/opencart-bitcoin/tree/opencart-2.0)  
[OpenCart 1.5](https://github.com/shaman/opencart-bitcoin/tree/opencart-1.5)  

**FEATURES**  

    Real standalone Bitcoin module: receive your coins directly without third-parties  
    Clean and crisp module, no file modifications  
    Compatible with every theme  
    Automatic currency conversion when the BitCoin payment was changed  
    Automatic orders confirmation
    Minimum amount settings  
    Custom Geo-Zone settings  
    QR Code support  
    100% OpenSource under the GNU GPL v3 License  

**REQUIREMENTS**

1. bitcoind (this step requires the root access to install it)  
2. 50Gb of free disk space (os + block chain + website data)  
3. cURL module  

INSTALL  

1. Copy all files from the upload directory into the root of your store  
2. Create a new system currency and change its code to BTC  
3. Install, configure and activate the BitCoin module  
4. Add crontab task for automatical orders confirmation (curl required):  

    curl --silent --request GET 'http://yourhost/index.php?route=payment/bitcoin/update' > /dev/null 2>&1

**ALTERNATIVE USAGE (DEPRECATED)**

This module can be used with blockchain.info. No need to setup bitcoind on another server.  
Simply open a bitcoin wallet at blockchain.info and enter the following details into the module setup:  

    RPC Host: rpc.blockchain.info  
    RPC Port: 443  
    RPC Path: (leave blank)  
    RPC User: Your wallet Identifier (ex: a69f2er8-b601-6et2-91d1-j2dffff08giu)  
    RPC Password: Your blockchain.info wallet password  
    Bitcoin Currency: Select Euro, Pound or USD  
    QR Code: Google API  
    Order Total: 1  
    Order Status: Processing  
    Geo Zone: All Zones  
    Status: Enabled  
    Sort Order: 0  

    Don't forget to add your server IP to the whitelist and enable API access in the blockchain.info wallet settings.  
    If this method works for you please donate to BTC: 1HABcPRvwdnA1yAGTd9ukpLk82Zaei1yV3  

**SEE ALSO**

[Electrum Payment Method for OpenCart](https://github.com/shaman/opencart-electrum)

**DONATE BTC**

    1HdK2ppceaMvJSZqwEnQcpVaSe2xX3HYEa  
    
    
