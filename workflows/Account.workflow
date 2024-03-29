<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Account_website_added</fullName>
        <description>Account website added</description>
        <protected>false</protected>
        <recipients>
            <recipient>rajeshreddy1227@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Rajesh/Account_website_Added</template>
    </alerts>
    <fieldUpdates>
        <fullName>Account_Type_To_Customer</fullName>
        <field>Type</field>
        <literalValue>Customer</literalValue>
        <name>Account Type To Customer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Type_To_Pending</fullName>
        <field>Type</field>
        <literalValue>Pending</literalValue>
        <name>Account Type To Pending</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Type_To_Prospect</fullName>
        <field>Type</field>
        <literalValue>Prospect</literalValue>
        <name>Account Type To Prospect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateActiveField</fullName>
        <field>Active__c</field>
        <literalValue>Yes</literalValue>
        <name>UpdateActiveField</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_Industry_Segment</fullName>
        <field>Industry</field>
        <literalValue>Entertainment</literalValue>
        <name>Update Account Industry Segment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>website</fullName>
        <field>Website</field>
        <formula>&quot;www.abc.ocm&quot;</formula>
        <name>website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update</fullName>
        <actions>
            <name>Update_Account_Industry_Segment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.BillingCity</field>
            <operation>equals</operation>
            <value>Greensboro</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Fields</fullName>
        <actions>
            <name>Account_website_added</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>website</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Account_Website_Added</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>test</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.BillingCity</field>
            <operation>equals</operation>
            <value>Greensboro</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Account_Website_Added</fullName>
        <assignedTo>rajeshreddy1227@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Comments: Account website Added</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Account.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Account Website Added</subject>
    </tasks>
</Workflow>
