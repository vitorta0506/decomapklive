package org.bouncycastle.jcajce.provider.asymmetric.gost;

import ek.k;
import ek.m;
import ek.n;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import oj.v;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.jce.interfaces.GOST3410PublicKey;
import vj.b0;
import yj.d;
import zi.e;
/* loaded from: classes7.dex */
public class BCGOST3410PublicKey implements GOST3410PublicKey {
    static final long serialVersionUID = -6251023343619275990L;
    private transient dk.a gost3410Spec;

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f56062y;

    BCGOST3410PublicKey(n nVar) {
        throw null;
    }

    BCGOST3410PublicKey(BigInteger bigInteger, k kVar) {
        this.f56062y = bigInteger;
        this.gost3410Spec = kVar;
    }

    BCGOST3410PublicKey(v vVar) {
        e z10 = e.z(vVar.x().B());
        try {
            byte[] M = ((w0) vVar.F()).M();
            byte[] bArr = new byte[M.length];
            for (int i9 = 0; i9 != M.length; i9++) {
                bArr[i9] = M[(M.length - 1) - i9];
            }
            this.f56062y = new BigInteger(1, bArr);
            this.gost3410Spec = k.e(z10);
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in GOST3410 public key");
        }
    }

    BCGOST3410PublicKey(GOST3410PublicKey gOST3410PublicKey) {
        this.f56062y = gOST3410PublicKey.getY();
        this.gost3410Spec = gOST3410PublicKey.getParameters();
    }

    BCGOST3410PublicKey(b0 b0Var, k kVar) {
        this.f56062y = b0Var.c();
        this.gost3410Spec = kVar;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.gost3410Spec = new k(str, (String) objectInputStream.readObject(), (String) objectInputStream.readObject());
            return;
        }
        this.gost3410Spec = new k(new m((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject()));
        objectInputStream.readObject();
        objectInputStream.readObject();
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
        if (obj instanceof BCGOST3410PublicKey) {
            BCGOST3410PublicKey bCGOST3410PublicKey = (BCGOST3410PublicKey) obj;
            return this.f56062y.equals(bCGOST3410PublicKey.f56062y) && this.gost3410Spec.equals(bCGOST3410PublicKey.gost3410Spec);
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "GOST3410";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        byte[] byteArray = getY().toByteArray();
        byte[] bArr = new byte[byteArray[0] == 0 ? byteArray.length - 1 : byteArray.length];
        for (int i9 = 0; i9 != bArr.length; i9++) {
            bArr[i9] = byteArray[(byteArray.length - 1) - i9];
        }
        try {
            dk.a aVar = this.gost3410Spec;
            return yj.e.e(aVar instanceof k ? aVar.b() != null ? new v(new oj.a(zi.a.f60561l, new e(new org.bouncycastle.asn1.n(this.gost3410Spec.c()), new org.bouncycastle.asn1.n(this.gost3410Spec.d()), new org.bouncycastle.asn1.n(this.gost3410Spec.b()))), new w0(bArr)) : new v(new oj.a(zi.a.f60561l, new e(new org.bouncycastle.asn1.n(this.gost3410Spec.c()), new org.bouncycastle.asn1.n(this.gost3410Spec.d()))), new w0(bArr)) : new v(new oj.a(zi.a.f60561l), new w0(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410PublicKey
    public dk.a getParameters() {
        return this.gost3410Spec;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410PublicKey
    public BigInteger getY() {
        return this.f56062y;
    }

    public int hashCode() {
        return this.f56062y.hashCode() ^ this.gost3410Spec.hashCode();
    }

    public String toString() {
        try {
            return a.c("GOST3410", this.f56062y, ((b0) d.b(this)).b());
        } catch (InvalidKeyException e10) {
            throw new IllegalStateException(e10.getMessage());
        }
    }
}
