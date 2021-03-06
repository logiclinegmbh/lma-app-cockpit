public class LmaPackage extends DomainBuilder {

    private static Integer count = 0;

    public LmaPackage() {
        super(sfLma__Package__c.SObjectType);

        name('MyApp');
        ns('ns');
        set(sfLma__Package__c.sfLma__Release_Date__c, System.today());
        id('03300000000000' + count++);
    }

    public LmaPackage ns(String value) {
        return (LmaPackage) set(sfLma__Package__c.txt_Namespace__c, value);
    }

    public LmaPackage name(String value) {
        return (LmaPackage) set(sfLma__Package__c.Name, value);
    }

    public LmaPackage id(Id value) {
        return (LmaPackage) set(sfLma__Package__c.sfLma__Package_ID__c, value);
    }

    public LmaPackage add(LmaVersion v) {
        return (LmaPackage) v.setParent(sfLma__Package_Version__c.sfLma__Package__c, this);
    }
}