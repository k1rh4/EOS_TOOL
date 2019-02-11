Eos = require("eosjs");
const fs = require("fs");
// Optional configuration..

var argv1 = (process.argv[2]);
var argv2 = (process.argv[3]);
console.log(argv1);
console.log(argv2);

contractFile = "eos3dio12345"

config = {
  keyProvider: [argv2],
  httpEndpoint: "http://127.0.0.1:8888"
};

config.binaryen = require("binaryen");
eos = Eos(config);

a1 = "./" + contractFile + "/" + contractFile +".wasm"
a2 = "./" + contractFile + "/" + contractFile +".abi"
wast = fs.readFileSync(a1);
abi = fs.readFileSync(a2);


// Publish contract to the blockchain
//
contractName =argv1
//eos.setcode(contractName, 0, 0, wast, abi);


eos.contract("ggfasj").then(contract => {
  contract.hi("abcde5",{ authorization: [contractName] }).then(res => {  //currently taking username static 'axay'
  //contract.ping ({ authorization: [contractName] }).then(res => {  //currently taking username static 'axay'
  //ontract.hi("1.0000 EOS",{ authorization: [contractName] }).then(res => {
  //contract.maintain({ authorization: [contractName] }).then(res => {
  //contract.transfer(contractName,'uyoces','-22.0000 EOS','memo',{authorization: [contractName]}).then(res => {
  //contract.test({authorization: [contractName]}).then(res => {
  //contract.create(contractName,'100.0000 ABC',{authorization: [contractName]}).then(res => {
  //contract.issue(contractName,'-1.0000 ABC','memo',{authorization: [contractName]}).then(res => {
  //contract.retire('10.0000 EOS',',memo',{authorization: [contractName]}).then(res => {
  //contract.jackpot({authorization: [contractName]}).then(res => {
  //contract.addfilebytes(12345,"1234","12",{authorization: [contractName]}).then(res => {
  //contract.createpool('svtbrs','bbb',1,{authorization: [contractName]}).then(res => {
  //contract.end({authorization: [contractName]}).then(res => {
  //contract.init(contractName,{authorization: [contractName]}).then(res => {
	  console.log(res);
	  //console.log(res['processed']['action_traces']);
	  //console.log(res['processed']['action_traces'][0]['act']);
  }).catch(error=>{
	  console.error(error)
  });
}).catch(error=>{
	console.error(error)
});
