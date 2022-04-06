const driver = require("bigchaindb-driver");
const API_PATH = "http://ox21.xyz/api/v1/";
const conn = new driver.Connection(API_PATH);

const alice = new driver.Ed25519Keypair();
console.log("Alice: ", alice.publicKey);

// Define the asset to store, in this example
// we store a bicycle with its serial number and manufacturer
assetdata = {
  bicycle: {
    serial_number: "cde",
    manufacturer: "Bicycle Inc.",
  },
};

var txTransferBobSigned;

// Construct a transaction payload
const txCreateAliceSimple = driver.Transaction.makeCreateTransaction(
  assetdata,
  { meta: "meta" },
  // A transaction needs an output
  [
    driver.Transaction.makeOutput(
      driver.Transaction.makeEd25519Condition(alice.publicKey)
    ),
  ],
  alice.publicKey
);

// // Sign the transaction with private keys of Alice to fulfill it
const txCreateAliceSimpleSigned = driver.Transaction.signTransaction(
  txCreateAliceSimple,
  alice.privateKey
);
console.log(
  "\n\nPosting signed create transaction for Alice:\n",
  txCreateAliceSimpleSigned
);

conn
  .postTransactionCommit(txCreateAliceSimpleSigned)

  // Transfer bicycle from Alice to Bob
  .then(() => conn.listOutputs(alice.publicKey, true))
  .then((listSpentOutputs) => {
    console.log("\nSpent outputs for Alice: ", listSpentOutputs.length); // Spent outputs: 1
    return conn.listOutputs(alice.publicKey, false);
  })
  .then((listUnspentOutputs) => {
    console.log("Unspent outputs for Chris: ", listUnspentOutputs.length); // Unspent outputs: 1
  })
  .catch((res) => {
    console.log(res);
  });

// const axios = require("axios");

// axios.get("http://ox21.xyz/api/v1/").then((result) => {
//   console.log(result);
// });

// const WebSocket = require("ws");

// const ws = new WebSocket(
//   "ws://bigchaindb:9985/api/v1/streams/valid_transactions"
// );

// ws.on("open", () => {
//   console.log("CONNECTED");
// });

// ws.on("message", (data) => {
//   let json = JSON.parse(data);
//   console.log("\nTransactionId: ", json.transaction_id);
//   console.log("AssetId: ", json.asset_id);
//   console.log("BlockId: ", json.block_id);
// });
