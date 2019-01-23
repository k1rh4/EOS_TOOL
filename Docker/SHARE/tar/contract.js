const Eos = require('eosjs')

const config = {
	httpEndpoint:'https://127.0.0.1:8888',
    chainId:'cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f',
    keyProvider:['5JS51EtT7dBNwMJthJRDX4pJ4h3wFQoSVP4GJQVnPfAtRWqf38x']
};




Eos(config).transaction('eosio.token', (coin)=> {
    coin.transfer('eosio', 'ybytqe', '1.0000 EOS', 'transaction2');
}).then(console.log).catch(console.error);

/*
Eos(config).contract('dteako')
    .then(coin => coin.transfer('dteako','kjmkww','0.0000 EOS','mesg'))
    .then(console.log).catch(console.error);

*/
