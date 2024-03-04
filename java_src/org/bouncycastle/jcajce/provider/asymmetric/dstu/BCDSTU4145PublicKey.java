package org.bouncycastle.jcajce.provider.asymmetric.dstu;

import ek.f;
import fk.e;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import kj.a;
import kj.c;
import kj.d;
import oj.v;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import pj.g;
import pj.i;
import vj.l;
import vj.q;
import zj.b;
/* loaded from: classes7.dex */
public class BCDSTU4145PublicKey implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 7026240464295649314L;
    private String algorithm;
    private transient d dstuParams;
    private transient q ecPublicKey;
    private transient ECParameterSpec ecSpec;
    private boolean withCompression;

    public BCDSTU4145PublicKey(f fVar, b bVar) {
        this.algorithm = "DSTU4145";
        throw null;
    }

    public BCDSTU4145PublicKey(String str, q qVar) {
        this.algorithm = str;
        this.ecPublicKey = qVar;
        this.ecSpec = null;
    }

    public BCDSTU4145PublicKey(String str, q qVar, ek.d dVar) {
        this.algorithm = "DSTU4145";
        l b10 = qVar.b();
        this.algorithm = str;
        this.ecSpec = dVar == null ? createSpec(yj.b.b(b10.a(), b10.e()), b10) : yj.b.h(yj.b.b(dVar.a(), dVar.e()), dVar);
        this.ecPublicKey = qVar;
    }

    public BCDSTU4145PublicKey(String str, q qVar, ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        l b10 = qVar.b();
        this.algorithm = str;
        this.ecPublicKey = qVar;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(yj.b.b(b10.a(), b10.e()), b10);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public BCDSTU4145PublicKey(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "DSTU4145";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new q(yj.b.e(params, eCPublicKeySpec.getW()), yj.b.l(null, this.ecSpec));
    }

    BCDSTU4145PublicKey(v vVar) {
        this.algorithm = "DSTU4145";
        populateFromPubKeyInfo(vVar);
    }

    public BCDSTU4145PublicKey(BCDSTU4145PublicKey bCDSTU4145PublicKey) {
        this.algorithm = "DSTU4145";
        this.ecPublicKey = bCDSTU4145PublicKey.ecPublicKey;
        this.ecSpec = bCDSTU4145PublicKey.ecSpec;
        this.withCompression = bCDSTU4145PublicKey.withCompression;
        this.dstuParams = bCDSTU4145PublicKey.dstuParams;
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, l lVar) {
        return new ECParameterSpec(ellipticCurve, yj.b.f(lVar.b()), lVar.d(), lVar.c().intValue());
    }

    private void populateFromPubKeyInfo(v vVar) {
        ek.d dVar;
        i iVar;
        ECParameterSpec j10;
        n0 B = vVar.B();
        this.algorithm = "DSTU4145";
        try {
            byte[] M = ((o) r.G(B.L())).M();
            n x10 = vVar.x().x();
            n nVar = kj.f.f53993b;
            if (x10.F(nVar)) {
                reverseBytes(M);
            }
            s K = s.K(vVar.x().B());
            if (K.M(0) instanceof k) {
                iVar = i.B(K);
                dVar = new ek.d(iVar.x(), iVar.y(), iVar.F(), iVar.z(), iVar.G());
            } else {
                d B2 = d.B(K);
                this.dstuParams = B2;
                if (B2.G()) {
                    n F = this.dstuParams.F();
                    l a10 = c.a(F);
                    dVar = new ek.b(F.O(), a10.a(), a10.b(), a10.d(), a10.c(), a10.e());
                } else {
                    kj.b z10 = this.dstuParams.z();
                    byte[] y10 = z10.y();
                    if (vVar.x().x().F(nVar)) {
                        reverseBytes(y10);
                    }
                    a z11 = z10.z();
                    e.C0426e c0426e = new e.C0426e(z11.F(), z11.y(), z11.z(), z11.B(), z10.x(), new BigInteger(1, y10));
                    byte[] B3 = z10.B();
                    if (vVar.x().x().F(nVar)) {
                        reverseBytes(B3);
                    }
                    dVar = new ek.d(c0426e, kj.e.a(c0426e, B3), z10.G());
                }
                iVar = null;
            }
            e a11 = dVar.a();
            EllipticCurve b10 = yj.b.b(a11, dVar.e());
            if (this.dstuParams != null) {
                ECPoint f10 = yj.b.f(dVar.b());
                j10 = this.dstuParams.G() ? new ek.c(this.dstuParams.F().O(), b10, f10, dVar.d(), dVar.c()) : new ECParameterSpec(b10, f10, dVar.d(), dVar.c().intValue());
            } else {
                j10 = yj.b.j(iVar);
            }
            this.ecSpec = j10;
            this.ecPublicKey = new q(kj.e.a(a11, M), yj.b.l(null, this.ecSpec));
        } catch (IOException unused) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        populateFromPubKeyInfo(v.z(r.G((byte[]) objectInputStream.readObject())));
    }

    private void reverseBytes(byte[] bArr) {
        for (int i9 = 0; i9 < bArr.length / 2; i9++) {
            byte b10 = bArr[i9];
            bArr[i9] = bArr[(bArr.length - 1) - i9];
            bArr[(bArr.length - 1) - i9] = b10;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    q engineGetKeyParameters() {
        return this.ecPublicKey;
    }

    ek.d engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? yj.b.g(eCParameterSpec) : BouncyCastleProvider.CONFIGURATION.b();
    }

    public boolean equals(Object obj) {
        if (obj instanceof BCDSTU4145PublicKey) {
            BCDSTU4145PublicKey bCDSTU4145PublicKey = (BCDSTU4145PublicKey) obj;
            return this.ecPublicKey.c().e(bCDSTU4145PublicKey.ecPublicKey.c()) && engineGetSpec().equals(bCDSTU4145PublicKey.engineGetSpec());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        m mVar = this.dstuParams;
        if (mVar == null) {
            ECParameterSpec eCParameterSpec = this.ecSpec;
            if (eCParameterSpec instanceof ek.c) {
                mVar = new d(new n(((ek.c) this.ecSpec).a()));
            } else {
                e a10 = yj.b.a(eCParameterSpec.getCurve());
                mVar = new g(new i(a10, new pj.k(yj.b.d(a10, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
        }
        try {
            return yj.e.e(new v(new oj.a(kj.f.f53994c, mVar), new w0(kj.e.b(this.ecPublicKey.c()))));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.jce.interfaces.ECPublicKey
    public ek.d getParameters() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        if (eCParameterSpec == null) {
            return null;
        }
        return yj.b.g(eCParameterSpec);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.ecSpec;
    }

    @Override // org.bouncycastle.jce.interfaces.ECPublicKey
    public fk.i getQ() {
        fk.i c10 = this.ecPublicKey.c();
        return this.ecSpec == null ? c10.k() : c10;
    }

    public byte[] getSbox() {
        d dVar = this.dstuParams;
        return dVar != null ? dVar.x() : d.y();
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        return yj.b.f(this.ecPublicKey.c());
    }

    public int hashCode() {
        return this.ecPublicKey.c().hashCode() ^ engineGetSpec().hashCode();
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return yj.c.j(this.algorithm, this.ecPublicKey.c(), engineGetSpec());
    }
}
