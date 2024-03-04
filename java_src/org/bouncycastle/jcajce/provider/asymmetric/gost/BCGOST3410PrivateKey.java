package org.bouncycastle.jcajce.provider.asymmetric.gost;

import dk.b;
import ek.l;
import ek.m;
import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.util.Enumeration;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.jce.interfaces.GOST3410PrivateKey;
import vj.a0;
import yj.f;
import zi.e;
/* loaded from: classes7.dex */
public class BCGOST3410PrivateKey implements GOST3410PrivateKey, b {
    static final long serialVersionUID = 8581661527592305464L;
    private transient b attrCarrier = new f();
    private transient dk.a gost3410Spec;

    /* renamed from: x  reason: collision with root package name */
    private BigInteger f56061x;

    protected BCGOST3410PrivateKey() {
    }

    BCGOST3410PrivateKey(l lVar) {
        throw null;
    }

    BCGOST3410PrivateKey(d dVar) throws IOException {
        BigInteger bigInteger;
        e z10 = e.z(dVar.B().B());
        org.bouncycastle.asn1.e I = dVar.I();
        if (I instanceof k) {
            bigInteger = k.K(I).M();
        } else {
            byte[] M = o.K(dVar.I()).M();
            byte[] bArr = new byte[M.length];
            for (int i9 = 0; i9 != M.length; i9++) {
                bArr[i9] = M[(M.length - 1) - i9];
            }
            bigInteger = new BigInteger(1, bArr);
        }
        this.f56061x = bigInteger;
        this.gost3410Spec = ek.k.e(z10);
    }

    BCGOST3410PrivateKey(GOST3410PrivateKey gOST3410PrivateKey) {
        this.f56061x = gOST3410PrivateKey.getX();
        this.gost3410Spec = gOST3410PrivateKey.getParameters();
    }

    BCGOST3410PrivateKey(a0 a0Var, ek.k kVar) {
        this.f56061x = a0Var.c();
        this.gost3410Spec = kVar;
        if (kVar == null) {
            throw new IllegalArgumentException("spec is null");
        }
    }

    private boolean compareObj(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.gost3410Spec = new ek.k(str, (String) objectInputStream.readObject(), (String) objectInputStream.readObject());
        } else {
            this.gost3410Spec = new ek.k(new m((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject()));
            objectInputStream.readObject();
            objectInputStream.readObject();
        }
        this.attrCarrier = new f();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        Object a10;
        objectOutputStream.defaultWriteObject();
        if (this.gost3410Spec.c() != null) {
            a10 = this.gost3410Spec.c();
        } else {
            objectOutputStream.writeObject(null);
            objectOutputStream.writeObject(this.gost3410Spec.a().b());
            objectOutputStream.writeObject(this.gost3410Spec.a().c());
            a10 = this.gost3410Spec.a().a();
        }
        objectOutputStream.writeObject(a10);
        objectOutputStream.writeObject(this.gost3410Spec.d());
        objectOutputStream.writeObject(this.gost3410Spec.b());
    }

    public boolean equals(Object obj) {
        if (obj instanceof GOST3410PrivateKey) {
            GOST3410PrivateKey gOST3410PrivateKey = (GOST3410PrivateKey) obj;
            return getX().equals(gOST3410PrivateKey.getX()) && getParameters().a().equals(gOST3410PrivateKey.getParameters().a()) && getParameters().d().equals(gOST3410PrivateKey.getParameters().d()) && compareObj(getParameters().b(), gOST3410PrivateKey.getParameters().b());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "GOST3410";
    }

    @Override // dk.b
    public org.bouncycastle.asn1.e getBagAttribute(n nVar) {
        return this.attrCarrier.getBagAttribute(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        byte[] byteArray = getX().toByteArray();
        byte[] bArr = new byte[byteArray[0] == 0 ? byteArray.length - 1 : byteArray.length];
        for (int i9 = 0; i9 != bArr.length; i9++) {
            bArr[i9] = byteArray[(byteArray.length - 1) - i9];
        }
        try {
            return (this.gost3410Spec instanceof ek.k ? new d(new oj.a(zi.a.f60561l, new e(new n(this.gost3410Spec.c()), new n(this.gost3410Spec.d()))), new w0(bArr)) : new d(new oj.a(zi.a.f60561l), new w0(bArr))).u("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410PrivateKey
    public dk.a getParameters() {
        return this.gost3410Spec;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410PrivateKey
    public BigInteger getX() {
        return this.f56061x;
    }

    public int hashCode() {
        return getX().hashCode() ^ this.gost3410Spec.hashCode();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, org.bouncycastle.asn1.e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }

    public String toString() {
        try {
            return a.b("GOST3410", this.f56061x, ((a0) yj.d.a(this)).b());
        } catch (InvalidKeyException e10) {
            throw new IllegalStateException(e10.getMessage());
        }
    }
}
