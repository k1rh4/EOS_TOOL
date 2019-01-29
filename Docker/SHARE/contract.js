const Eos = require('eosjs')

const config = {
    	httpEndpoint:'https://127.0.0.1:8888',
    	chainId:'cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f',
    	keyProvider:['5JfDZWdWX2Nf3CQxnjb43ZM3ZJnBp6ZryBqECdE8CFqqZEvbz4'],
	expireInSeconds: 60,
	sign: true,
	broadcast: true,
	verbose: false, // API activity
};

//emmjbc

Eos(config).contract('vrtpkn').then((contract)=>{
	//contract.ping("child.acnt",{authorization:['child.acnt']}).then((res) => {
	contract.hi("k1rh4").then((res) => {
		console.log(res);

	})


})
