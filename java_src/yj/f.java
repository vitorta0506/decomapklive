package yj;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.q;
/* loaded from: classes7.dex */
public class f implements dk.b {

    /* renamed from: a  reason: collision with root package name */
    private Hashtable f60273a;

    /* renamed from: b  reason: collision with root package name */
    private Vector f60274b;

    public f() {
        this(new Hashtable(), new Vector());
    }

    f(Hashtable hashtable, Vector vector) {
        this.f60273a = hashtable;
        this.f60274b = vector;
    }

    public void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        Object readObject = objectInputStream.readObject();
        if (readObject instanceof Hashtable) {
            this.f60273a = (Hashtable) readObject;
            this.f60274b = (Vector) objectInputStream.readObject();
            return;
        }
        j jVar = new j((byte[]) readObject);
        while (true) {
            n nVar = (n) jVar.o();
            if (nVar == null) {
                return;
            }
            setBagAttribute(nVar, jVar.o());
        }
    }

    public void b(ObjectOutputStream objectOutputStream) throws IOException {
        if (this.f60274b.size() == 0) {
            objectOutputStream.writeObject(new Hashtable());
            objectOutputStream.writeObject(new Vector());
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        q a10 = q.a(byteArrayOutputStream);
        Enumeration bagAttributeKeys = getBagAttributeKeys();
        while (bagAttributeKeys.hasMoreElements()) {
            n P = n.P(bagAttributeKeys.nextElement());
            a10.t(P);
            a10.s((org.bouncycastle.asn1.e) this.f60273a.get(P));
        }
        objectOutputStream.writeObject(byteArrayOutputStream.toByteArray());
    }

    @Override // dk.b
    public org.bouncycastle.asn1.e getBagAttribute(n nVar) {
        return (org.bouncycastle.asn1.e) this.f60273a.get(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.f60274b.elements();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, org.bouncycastle.asn1.e eVar) {
        if (this.f60273a.containsKey(nVar)) {
            this.f60273a.put(nVar, eVar);
            return;
        }
        this.f60273a.put(nVar, eVar);
        this.f60274b.addElement(nVar);
    }
}
