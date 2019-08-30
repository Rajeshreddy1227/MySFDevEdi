trigger AccDesc on Account (before Insert) {
for (Account a: trigger.New)
{
    a.description = 'Created from Trigger';
}

}