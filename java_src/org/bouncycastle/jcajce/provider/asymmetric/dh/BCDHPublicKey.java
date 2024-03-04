package org.bouncycastle.jcajce.provider.asymmetric.dh;

import gj.b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import oj.v;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.s;
import pj.o;
import vj.c;
import vj.e;
import vj.f;
/* loaded from: classes7.dex */
public class BCDHPublicKey implements DHPublicKey {
    static final long serialVersionUID = -216691575254424324L;
    private transient e dhPublicKey;
    private transient DHParameterSpec dhSpec;
    private transient v info;

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f56047y;

    BCDHPublicKey(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.f56047y = bigInteger;
        this.dhSpec = dHParameterSpec;
        this.dhPublicKey = dHParameterSpec instanceof bk.a ? new e(bigInteger, ((bk.a) dHParameterSpec).a()) : new e(bigInteger, new c(dHParameterSpec.getP(), dHParameterSpec.getG()));
    }

    BCDHPublicKey(DHPublicKey dHPublicKey) {
        this.f56047y = dHPublicKey.getY();
        DHParameterSpec params = dHPublicKey.getParams();
        this.dhSpec = params;
        if (params instanceof bk.a) {
            this.dhPublicKey = new e(this.f56047y, ((bk.a) params).a());
        } else {
            this.dhPublicKey = new e(this.f56047y, new c(this.dhSpec.getP(), this.dhSpec.getG()));
        }
    }

    BCDHPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.f56047y = dHPublicKeySpec.getY();
        this.dhSpec = dHPublicKeySpec instanceof bk.c ? ((bk.c) dHPublicKeySpec).a() : new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
        DHParameterSpec dHParameterSpec = this.dhSpec;
        if (dHParameterSpec instanceof bk.a) {
            this.dhPublicKey = new e(this.f56047y, ((bk.a) dHParameterSpec).a());
        } else {
            this.dhPublicKey = new e(this.f56047y, new c(dHPublicKeySpec.getP(), dHPublicKeySpec.getG()));
        }
    }

    public BCDHPublicKey(v vVar) {
        e eVar;
        this.info = vVar;
        try {
            this.f56047y = ((k) vVar.F()).N();
            s K = s.K(vVar.x().B());
            n x10 = vVar.x().x();
            if (x10.F(gj.c.C0) || isPKCSParam(K)) {
                b y10 = b.y(K);
                if (y10.z() != null) {
                    this.dhSpec = new DHParameterSpec(y10.B(), y10.x(), y10.z().intValue());
                    eVar = new e(this.f56047y, new c(this.dhSpec.getP(), this.dhSpec.getG(), null, this.dhSpec.getL()));
                } else {
                    this.dhSpec = new DHParameterSpec(y10.B(), y10.x());
                    eVar = new e(this.f56047y, new c(this.dhSpec.getP(), this.dhSpec.getG()));
                }
                this.dhPublicKey = eVar;
            } else if (!x10.F(o.f56970o4)) {
                throw new IllegalArgumentException("unknown algorithm type: " + x10);
            } else {
                pj.c y11 = pj.c.y(K);
                pj.e H = y11.H();
                if (H != null) {
                    this.dhPublicKey = new e(this.f56047y, new c(y11.F(), y11.x(), y11.G(), y11.z(), new f(H.z(), H.y().intValue())));
                } else {
                    this.dhPublicKey = new e(this.f56047y, new c(y11.F(), y11.x(), y11.G(), y11.z(), null));
                }
                this.dhSpec = new bk.a(this.dhPublicKey.b());
            }
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    BCDHPublicKey(e eVar) {
        this.f56047y = eVar.c();
        this.dhSpec = new bk.a(eVar.b());
        this.dhPublicKey = eVar;
    }

    private boolean isPKCSParam(s sVar) {
        if (sVar.size() == 2) {
            return true;
        }
        if (sVar.size() > 3) {
            return false;
        }
        return k.K(sVar.M(2)).N().compareTo(BigInteger.valueOf((long) k.K(sVar.M(0)).N().bitLength())) <= 0;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.info = null;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    public e engineGetKeyParameters() {
        return this.dhPublicKey;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DHPublicKey) {
            DHPublicKey dHPublicKey = (DHPublicKey) obj;
            return getY().equals(dHPublicKey.getY()) && getParams().getG().equals(dHPublicKey.getParams().getG()) && getParams().getP().equals(dHPublicKey.getParams().getP()) && getParams().getL() == dHPublicKey.getParams().getL();
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        v vVar = this.info;
        if (vVar != null) {
            return yj.e.e(vVar);
        }
        DHParameterSpec dHParameterSpec = this.dhSpec;
        if (!(dHParameterSpec instanceof bk.a) || ((bk.a) dHParameterSpec).b() == null) {
            return yj.e.c(new oj.a(gj.c.C0, new b(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL()).f()), new k(this.f56047y));
        }
        c a10 = ((bk.a) this.dhSpec).a();
        f h10 = a10.h();
        return yj.e.c(new oj.a(o.f56970o4, new pj.c(a10.f(), a10.b(), a10.g(), a10.c(), h10 != null ? new pj.e(h10.b(), h10.a()) : null).f()), new k(this.f56047y));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return this.dhSpec;
    }

    @Override // javax.crypto.interfaces.DHPublicKey
    public BigInteger getY() {
        return this.f56047y;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    public String toString() {
        return a.c("DH", this.f56047y, new c(this.dhSpec.getP(), this.dhSpec.getG()));
    }
}
