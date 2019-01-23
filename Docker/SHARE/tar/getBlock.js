const Eos = require('eosjs')

const config = {
	httpEndpoint:'http://127.0.0.1:8888'
};

Eos(config).getBlock(5656169, (error,BlockInfo)=>{
    if(error){
        console.error(error);
    }
    console.log(BlockInfo.transactions[0].trx.transaction.actions);
});
// blockNumber : 5656168
//Eos(config).getBlock(1).then(console.log).catch(console.error);

