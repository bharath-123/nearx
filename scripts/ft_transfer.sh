near call $CONTRACT_NAME ft_transfer '{"receiver_id": "'"$ID"'", "amount": "3000000000000000000000000"}' --accountId=$ID --depositYocto=1 --gas=300000000000000;

near call $CONTRACT_NAME ft_transfer_call '{"receiver_id": "nearx-rc-1.staderlabs-test.near", "amount": "3000000000000000000000000", "msg": "{"amount": "3000000000000000000000000"}" }' --depositYocto=1 --accountId=$ID --gas=300000000000000;
