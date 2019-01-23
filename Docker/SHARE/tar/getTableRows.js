const Eos = require('eosjs')

const config = {
    httpEndpoint:'https://jungle.eoscanada.com'
};



Eos(config).getTableRows({
    json:true,
    code: 'eosio',
    scope:'eosio',
    table:'rammarket'
}, (error,TableInfo)=>{
    if(error){
        console.error(error);
    }
    console.log(TableInfo);
});

