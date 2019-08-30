public class inheritextendsDemo extends  inheritDemo{
    public override void meth1()
    {
        system.debug('I am in subclass');
    }

}

/*inheritDemo id1 = new inheritDemo();
id1.meth1();
id1.meth2();

inheritextendsDemo id2 = new inheritextendsDemo();
id2.meth1();
*/