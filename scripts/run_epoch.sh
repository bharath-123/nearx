near call $CONTRACT_NAME autocompounding_epoch '{"validator": "aurora.pool.f863973.m0"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "01node.pool.f863973.m0"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_2"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_3"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_4"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_5"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_6"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_7"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_8"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_9"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_10"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_11"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_12"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_13"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_14"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_15"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_16"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME autocompounding_epoch '{"validator": "'"$STAKE_POOL_17"'"}' --accountId=$ID --gas=300000000000000

near call $CONTRACT_NAME staking_epoch --accountId=$ID --gas=300000000000000;

near call $CONTRACT_NAME update_rewards_buffer --accountId=$ID --gas=300000000000000 --amount=2;

# run till false is returned
near call $CONTRACT_NAME unstaking_epoch --accountId=$ID --gas=300000000000000;

near call $CONTRACT_NAME withdraw_epoch '{"validator": "pathrocknetwork.pool.f863973.m0"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME withdraw_epoch '{"validator": "'"$STAKE_POOL_1"'"}' --accountId=$ID --gas=300000000000000
near call $CONTRACT_NAME withdraw_epoch '{"validator": "'"$STAKE_POOL_2"'"}' --accountId=$ID --gas=300000000000000

near call $CONTRACT_NAME sync_balance_from_validator '{"validator_id": "'"$STAKE_POOL_0"'"}' --accountId=$ID --gas=300000000000000;
near call $CONTRACT_NAME sync_balance_from_validator '{"validator_id": "'"$STAKE_POOL_1"'"}' --accountId=$ID --gas=300000000000000;
near call $CONTRACT_NAME sync_balance_from_validator '{"validator_id": "'"$STAKE_POOL_2"'"}' --accountId=$ID --gas=300000000000000;