package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import ek.d;
import ek.f;
import hj.a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import oj.v;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import pj.g;
import pj.i;
import pj.k;
import vj.l;
import vj.m;
import vj.q;
import yj.c;
import zi.e;
import zj.b;
/* loaded from: classes7.dex */
public class BCECGOST3410_2012PublicKey implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 7026240464295649314L;
    private String algorithm;
    private transient q ecPublicKey;
    private transient ECParameterSpec ecSpec;
    private transient e gostParams;
    private boolean withCompression;

    public BCECGOST3410_2012PublicKey(f fVar, b bVar) {
        this.algorithm = "ECGOST3410-2012";
        throw null;
    }

    public BCECGOST3410_2012PublicKey(String str, q qVar) {
        this.algorithm = str;
        this.ecPublicKey = qVar;
        this.ecSpec = null;
    }

    public BCECGOST3410_2012PublicKey(String str, q qVar, d dVar) {
        this.algorithm = "ECGOST3410-2012";
        l b10 = qVar.b();
        this.algorithm = str;
        this.ecPublicKey = qVar;
        this.ecSpec = dVar == null ? createSpec(yj.b.b(b10.a(), b10.e()), b10) : yj.b.h(yj.b.b(dVar.a(), dVar.e()), dVar);
    }

    public BCECGOST3410_2012PublicKey(String str, q qVar, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410-2012";
        l b10 = qVar.b();
        this.algorithm = str;
        this.ecPublicKey = qVar;
        if (b10 instanceof m) {
            m mVar = (m) b10;
            this.gostParams = new e(mVar.k(), mVar.i(), mVar.j());
        }
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(yj.b.b(b10.a(), b10.e()), b10);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public BCECGOST3410_2012PublicKey(ECPublicKey eCPublicKey) {
        this.algorithm = "ECGOST3410-2012";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new q(yj.b.e(params, eCPublicKey.getW()), yj.b.l(null, eCPublicKey.getParams()));
    }

    public BCECGOST3410_2012PublicKey(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "ECGOST3410-2012";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new q(yj.b.e(params, eCPublicKeySpec.getW()), yj.b.l(null, eCPublicKeySpec.getParams()));
    }

    BCECGOST3410_2012PublicKey(v vVar) {
        this.algorithm = "ECGOST3410-2012";
        populateFromPubKeyInfo(vVar);
    }

    public BCECGOST3410_2012PublicKey(BCECGOST3410_2012PublicKey bCECGOST3410_2012PublicKey) {
        this.algorithm = "ECGOST3410-2012";
        this.ecPublicKey = bCECGOST3410_2012PublicKey.ecPublicKey;
        this.ecSpec = bCECGOST3410_2012PublicKey.ecSpec;
        this.withCompression = bCECGOST3410_2012PublicKey.withCompression;
        this.gostParams = bCECGOST3410_2012PublicKey.gostParams;
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, l lVar) {
        return new ECParameterSpec(ellipticCurve, yj.b.f(lVar.b()), lVar.d(), lVar.c().intValue());
    }

    private void extractBytes(byte[] bArr, int i9, int i10, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < i9) {
            byte[] bArr2 = new byte[i9];
            System.arraycopy(byteArray, 0, bArr2, i9 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i11 = 0; i11 != i9; i11++) {
            bArr[i10 + i11] = byteArray[(byteArray.length - 1) - i11];
        }
    }

    private void populateFromPubKeyInfo(v vVar) {
        n x10 = vVar.x().x();
        n0 B = vVar.B();
        this.algorithm = "ECGOST3410-2012";
        try {
            byte[] M = ((o) r.G(B.L())).M();
            int i9 = x10.F(a.f40796h) ? 64 : 32;
            int i10 = i9 * 2;
            byte[] bArr = new byte[i10 + 1];
            bArr[0] = 4;
            for (int i11 = 1; i11 <= i9; i11++) {
                bArr[i11] = M[i9 - i11];
                bArr[i11 + i9] = M[i10 - i11];
            }
            e z10 = e.z(vVar.x().B());
            this.gostParams = z10;
            ek.b a10 = ck.a.a(zi.b.f(z10.B()));
            fk.e a11 = a10.a();
            EllipticCurve b10 = yj.b.b(a11, a10.e());
            this.ecPublicKey = new q(a11.h(bArr), c.d(null, a10));
            this.ecSpec = new ek.c(zi.b.f(this.gostParams.B()), b10, yj.b.f(a10.b()), a10.d(), a10.c());
        } catch (IOException unused) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        populateFromPubKeyInfo(v.z(r.G((byte[]) objectInputStream.readObject())));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    q engineGetKeyParameters() {
        return this.ecPublicKey;
    }

    d engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? yj.b.g(eCParameterSpec) : BouncyCastleProvider.CONFIGURATION.b();
    }

    public boolean equals(Object obj) {
        if (obj instanceof BCECGOST3410_2012PublicKey) {
            BCECGOST3410_2012PublicKey bCECGOST3410_2012PublicKey = (BCECGOST3410_2012PublicKey) obj;
            return this.ecPublicKey.c().e(bCECGOST3410_2012PublicKey.ecPublicKey.c()) && engineGetSpec().equals(bCECGOST3410_2012PublicKey.engineGetSpec());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        int i9;
        n nVar;
        org.bouncycastle.asn1.m gVar;
        BigInteger t10 = this.ecPublicKey.c().f().t();
        BigInteger t11 = this.ecPublicKey.c().g().t();
        boolean z10 = t10.bitLength() > 256;
        org.bouncycastle.asn1.m gostParams = getGostParams();
        if (gostParams == null) {
            ECParameterSpec eCParameterSpec = this.ecSpec;
            if (eCParameterSpec instanceof ek.c) {
                n g10 = zi.b.g(((ek.c) eCParameterSpec).a());
                gVar = z10 ? new e(g10, a.f40792d) : new e(g10, a.f40791c);
            } else {
                fk.e a10 = yj.b.a(eCParameterSpec.getCurve());
                gVar = new g(new i(a10, new k(yj.b.d(a10, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
            gostParams = gVar;
        }
        int i10 = 64;
        if (z10) {
            nVar = a.f40796h;
            i9 = 64;
            i10 = 128;
        } else {
            i9 = 32;
            nVar = a.f40795g;
        }
        byte[] bArr = new byte[i10];
        int i11 = i10 / 2;
        extractBytes(bArr, i11, 0, t10);
        extractBytes(bArr, i11, i9, t11);
        try {
            return yj.e.e(new v(new oj.a(nVar, gostParams), new w0(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public e getGostParams() {
        if (this.gostParams == null && (this.ecSpec instanceof ek.c)) {
            this.gostParams = this.ecPublicKey.c().f().t().bitLength() > 256 ? new e(zi.b.g(((ek.c) this.ecSpec).a()), a.f40792d) : new e(zi.b.g(((ek.c) this.ecSpec).a()), a.f40791c);
        }
        return this.gostParams;
    }

    @Override // org.bouncycastle.jce.interfaces.ECPublicKey
    public d getParameters() {
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
        return this.ecSpec == null ? this.ecPublicKey.c().k() : this.ecPublicKey.c();
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
        return c.j(this.algorithm, this.ecPublicKey.c(), engineGetSpec());
    }
}
