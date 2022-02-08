updatesecret() {
  aws secretsmanager update-secret --secret-id "$1" --secret-string "$2"
}
createsecret-preprod() {
  aws secretsmanager create-secret --name "$1" --secret-string "$2" --description "$3" --kms-key-id "b09b8b23-73cc-4e77-a496-d9dc6c3f8a1d"
}
createsecret-production() {
  aws secretsmanager create-secret --name "$1" --secret-string "$2" --description "$3" --kms-key-id "c19d6ac6-caf1-4a50-abea-c59f397accf4"
}
