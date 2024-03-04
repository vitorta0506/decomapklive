package org.bouncycastle.jcajce.provider.asymmetric.dh;

import dk.b;
import gj.c;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.s;
import pj.o;
import vj.d;
import yj.f;
/* loaded from: classes7.dex */
public class BCDHPrivateKey implements DHPrivateKey, b {
    static final long serialVersionUID = 311058815616901812L;
    private transient f attrCarrier = new f();
    private transient d dhPrivateKey;
    private transient DHParameterSpec dhSpec;
    private transient gj.d info;

    /* renamed from: x  reason: collision with root package name */
    private BigInteger f56046x;

    protected BCDHPrivateKey() {
    }

    public BCDHPrivateKey(gj.d dVar) throws IOException {
        d dVar2;
        s K = s.K(dVar.B().B());
        n x10 = dVar.B().x();
        this.info = dVar;
        this.f56046x = ((k) dVar.I()).N();
        if (x10.F(c.C0)) {
            gj.b y10 = gj.b.y(K);
            if (y10.z() != null) {
                this.dhSpec = new DHParameterSpec(y10.B(), y10.x(), y10.z().intValue());
                dVar2 = new d(this.f56046x, new vj.c(y10.B(), y10.x(), null, y10.z().intValue()));
            } else {
                this.dhSpec = new DHParameterSpec(y10.B(), y10.x());
                dVar2 = new d(this.f56046x, new vj.c(y10.B(), y10.x()));
            }
        } else if (!x10.F(o.f56970o4)) {
            throw new IllegalArgumentException("unknown algorithm type: " + x10);
        } else {
            pj.c y11 = pj.c.y(K);
            this.dhSpec = new bk.a(y11.F(), y11.G(), y11.x(), y11.z(), 0);
            dVar2 = new d(this.f56046x, new vj.c(y11.F(), y11.x(), y11.G(), y11.z(), null));
        }
        this.dhPrivateKey = dVar2;
    }

    BCDHPrivateKey(DHPrivateKey dHPrivateKey) {
        this.f56046x = dHPrivateKey.getX();
        this.dhSpec = dHPrivateKey.getParams();
    }

    BCDHPrivateKey(DHPrivateKeySpec dHPrivateKeySpec) {
        this.f56046x = dHPrivateKeySpec.getX();
        if (dHPrivateKeySpec instanceof bk.b) {
            this.dhSpec = ((bk.b) dHPrivateKeySpec).a();
        } else {
            this.dhSpec = new DHParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
        }
    }

    BCDHPrivateKey(d dVar) {
        this.f56046x = dVar.c();
        this.dhSpec = new bk.a(dVar.b());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.info = null;
        this.attrCarrier = new f();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    d engineGetKeyParameters() {
        d dVar = this.dhPrivateKey;
        if (dVar != null) {
            return dVar;
        }
        DHParameterSpec dHParameterSpec = this.dhSpec;
        return dHParameterSpec instanceof bk.a ? new d(this.f56046x, ((bk.a) dHParameterSpec).a()) : new d(this.f56046x, new vj.c(dHParameterSpec.getP(), this.dhSpec.getG(), null, this.dhSpec.getL()));
    }

    public boolean equals(Object obj) {
        if (obj instanceof DHPrivateKey) {
            DHPrivateKey dHPrivateKey = (DHPrivateKey) obj;
            return getX().equals(dHPrivateKey.getX()) && getParams().getG().equals(dHPrivateKey.getParams().getG()) && getParams().getP().equals(dHPrivateKey.getParams().getP()) && getParams().getL() == dHPrivateKey.getParams().getL();
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DH";
    }

    @Override // dk.b
    public e getBagAttribute(n nVar) {
        return this.attrCarrier.getBagAttribute(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        gj.d dVar;
        try {
            gj.d dVar2 = this.info;
            if (dVar2 != null) {
                return dVar2.u("DER");
            }
            DHParameterSpec dHParameterSpec = this.dhSpec;
            if (!(dHParameterSpec instanceof bk.a) || ((bk.a) dHParameterSpec).b() == null) {
                dVar = new gj.d(new oj.a(c.C0, new gj.b(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL()).f()), new k(getX()));
            } else {
                vj.c a10 = ((bk.a) this.dhSpec).a();
                vj.f h10 = a10.h();
                dVar = new gj.d(new oj.a(o.f56970o4, new pj.c(a10.f(), a10.b(), a10.g(), a10.c(), h10 != null ? new pj.e(h10.b(), h10.a()) : null).f()), new k(getX()));
            }
            return dVar.u("DER");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return this.dhSpec;
    }

    @Override // javax.crypto.interfaces.DHPrivateKey
    public BigInteger getX() {
        return this.f56046x;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }

    public String toString() {
        return a.b("DH", this.f56046x, new vj.c(this.dhSpec.getP(), this.dhSpec.getG()));
    }
}
