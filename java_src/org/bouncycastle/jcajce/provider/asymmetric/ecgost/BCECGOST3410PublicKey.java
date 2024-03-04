package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

import ck.a;
import ek.d;
import ek.f;
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
import org.bouncycastle.asn1.e;
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
import zj.b;
/* loaded from: classes7.dex */
public class BCECGOST3410PublicKey implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 7026240464295649314L;
    private String algorithm;
    private transient q ecPublicKey;
    private transient ECParameterSpec ecSpec;
    private transient e gostParams;
    private boolean withCompression;

    public BCECGOST3410PublicKey(f fVar, b bVar) {
        this.algorithm = "ECGOST3410";
        throw null;
    }

    public BCECGOST3410PublicKey(String str, q qVar) {
        this.algorithm = str;
        this.ecPublicKey = qVar;
        this.ecSpec = null;
    }

    public BCECGOST3410PublicKey(String str, q qVar, d dVar) {
        this.algorithm = "ECGOST3410";
        l b10 = qVar.b();
        this.algorithm = str;
        this.ecPublicKey = qVar;
        this.ecSpec = dVar == null ? createSpec(yj.b.b(b10.a(), b10.e()), b10) : yj.b.h(yj.b.b(dVar.a(), dVar.e()), dVar);
    }

    public BCECGOST3410PublicKey(String str, q qVar, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        l b10 = qVar.b();
        if (b10 instanceof m) {
            m mVar = (m) b10;
            this.gostParams = new zi.e(mVar.k(), mVar.i(), mVar.j());
        }
        this.algorithm = str;
        this.ecPublicKey = qVar;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(yj.b.b(b10.a(), b10.e()), b10);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public BCECGOST3410PublicKey(ECPublicKey eCPublicKey) {
        this.algorithm = "ECGOST3410";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new q(yj.b.e(params, eCPublicKey.getW()), yj.b.l(null, eCPublicKey.getParams()));
    }

    public BCECGOST3410PublicKey(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "ECGOST3410";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new q(yj.b.e(params, eCPublicKeySpec.getW()), yj.b.l(null, eCPublicKeySpec.getParams()));
    }

    BCECGOST3410PublicKey(v vVar) {
        this.algorithm = "ECGOST3410";
        populateFromPubKeyInfo(vVar);
    }

    public BCECGOST3410PublicKey(BCECGOST3410PublicKey bCECGOST3410PublicKey) {
        this.algorithm = "ECGOST3410";
        this.ecPublicKey = bCECGOST3410PublicKey.ecPublicKey;
        this.ecSpec = bCECGOST3410PublicKey.ecSpec;
        this.withCompression = bCECGOST3410PublicKey.withCompression;
        this.gostParams = bCECGOST3410PublicKey.gostParams;
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, l lVar) {
        return new ECParameterSpec(ellipticCurve, yj.b.f(lVar.b()), lVar.d(), lVar.c().intValue());
    }

    private void extractBytes(byte[] bArr, int i9, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < 32) {
            byte[] bArr2 = new byte[32];
            System.arraycopy(byteArray, 0, bArr2, 32 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i10 = 0; i10 != 32; i10++) {
            bArr[i9 + i10] = byteArray[(byteArray.length - 1) - i10];
        }
    }

    private void populateFromPubKeyInfo(v vVar) {
        n B;
        n0 B2 = vVar.B();
        this.algorithm = "ECGOST3410";
        try {
            byte[] M = ((o) r.G(B2.L())).M();
            byte[] bArr = new byte[65];
            bArr[0] = 4;
            for (int i9 = 1; i9 <= 32; i9++) {
                bArr[i9] = M[32 - i9];
                bArr[i9 + 32] = M[64 - i9];
            }
            boolean z10 = vVar.x().B() instanceof n;
            e B3 = vVar.x().B();
            if (z10) {
                B = n.P(B3);
                this.gostParams = B;
            } else {
                zi.e z11 = zi.e.z(B3);
                this.gostParams = z11;
                B = z11.B();
            }
            ek.b a10 = a.a(zi.b.f(B));
            fk.e a11 = a10.a();
            EllipticCurve b10 = yj.b.b(a11, a10.e());
            this.ecPublicKey = new q(a11.h(bArr), c.d(null, a10));
            this.ecSpec = new ek.c(zi.b.f(B), b10, yj.b.f(a10.b()), a10.d(), a10.c());
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
        if (obj instanceof BCECGOST3410PublicKey) {
            BCECGOST3410PublicKey bCECGOST3410PublicKey = (BCECGOST3410PublicKey) obj;
            return this.ecPublicKey.c().e(bCECGOST3410PublicKey.ecPublicKey.c()) && engineGetSpec().equals(bCECGOST3410PublicKey.engineGetSpec());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        e gVar;
        e gostParams = getGostParams();
        if (gostParams == null) {
            ECParameterSpec eCParameterSpec = this.ecSpec;
            if (eCParameterSpec instanceof ek.c) {
                gVar = new zi.e(zi.b.g(((ek.c) eCParameterSpec).a()), zi.a.f60565p);
            } else {
                fk.e a10 = yj.b.a(eCParameterSpec.getCurve());
                gVar = new g(new i(a10, new k(yj.b.d(a10, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
            gostParams = gVar;
        }
        BigInteger t10 = this.ecPublicKey.c().f().t();
        BigInteger t11 = this.ecPublicKey.c().g().t();
        byte[] bArr = new byte[64];
        extractBytes(bArr, 0, t10);
        extractBytes(bArr, 32, t11);
        try {
            return yj.e.e(new v(new oj.a(zi.a.f60562m, gostParams), new w0(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e getGostParams() {
        if (this.gostParams == null) {
            ECParameterSpec eCParameterSpec = this.ecSpec;
            if (eCParameterSpec instanceof ek.c) {
                this.gostParams = new zi.e(zi.b.g(((ek.c) eCParameterSpec).a()), zi.a.f60565p);
            }
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
