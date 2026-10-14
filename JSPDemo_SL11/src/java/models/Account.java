package models;

public class Account {
    public String AccountId;
    public String Password;
    public int RoleId;

    public Account() { }
    
    public Account(String AccountId, String Password, int RoleId) {
        this.AccountId = AccountId;
        this.Password = Password;
        this.RoleId = RoleId;
    }
}