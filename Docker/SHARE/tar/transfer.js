const Eos = require('eosjs')

const config = {
	httpEndpoint:'http://127.0.0.1:8888',
    	chainId:'cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f',
    	keyProvider:['5Jn1LfeMBwo1RdLCVnv8oabFcbPaQeJj9o6oSPdcwDc2rWbnsWx']
};

Eos(config).transfer('kvnyco',"edrezz",'22.1200 EOS','transfer token', (error,result)=>{
    if(error){
        console.error(error);
    }
    console.log(result);
});

