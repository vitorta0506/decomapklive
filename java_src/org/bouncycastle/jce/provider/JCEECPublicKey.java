package org.bouncycastle.jce.provider;

import ek.f;
import fk.i;
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
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.asn1.w0;
import pj.g;
import pj.k;
import vj.l;
import vj.q;
import zi.e;
/* loaded from: classes7.dex */
public class JCEECPublicKey implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey {
    private String algorithm;
    private ECParameterSpec ecSpec;
    private e gostParams;

    /* renamed from: q  reason: collision with root package name */
    private i f56091q;
    private boolean withCompression;

    public JCEECPublicKey(String str, f fVar) {
        this.algorithm = str;
        throw null;
    }

    public JCEECPublicKey(String str, ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = str;
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.f56091q = yj.b.e(params, eCPublicKeySpec.getW());
    }

    public JCEECPublicKey(String str, JCEECPublicKey jCEECPublicKey) {
        this.algorithm = str;
        this.f56091q = jCEECPublicKey.f56091q;
        this.ecSpec = jCEECPublicKey.ecSpec;
        this.withCompression = jCEECPublicKey.withCompression;
        this.gostParams = jCEECPublicKey.gostParams;
    }

    public JCEECPublicKey(String str, q qVar) {
        this.algorithm = str;
        this.f56091q = qVar.c();
        this.ecSpec = null;
    }

    public JCEECPublicKey(String str, q qVar, ek.d dVar) {
        this.algorithm = "EC";
        l b10 = qVar.b();
        this.algorithm = str;
        this.f56091q = qVar.c();
        this.ecSpec = dVar == null ? createSpec(yj.b.b(b10.a(), b10.e()), b10) : yj.b.h(yj.b.b(dVar.a(), dVar.e()), dVar);
    }

    public JCEECPublicKey(String str, q qVar, ECParameterSpec eCParameterSpec) {
        this.algorithm = "EC";
        l b10 = qVar.b();
        this.algorithm = str;
        this.f56091q = qVar.c();
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(yj.b.b(b10.a(), b10.e()), b10);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public JCEECPublicKey(ECPublicKey eCPublicKey) {
        this.algorithm = "EC";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.ecSpec = params;
        this.f56091q = yj.b.e(params, eCPublicKey.getW());
    }

    JCEECPublicKey(v vVar) {
        this.algorithm = "EC";
        populateFromPubKeyInfo(vVar);
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
        fk.e x10;
        ECParameterSpec eCParameterSpec;
        byte[] L;
        o w0Var;
        oj.a x11 = vVar.x();
        if (x11.x().F(zi.a.f60562m)) {
            n0 B = vVar.B();
            this.algorithm = "ECGOST3410";
            try {
                byte[] M = ((o) r.G(B.L())).M();
                byte[] bArr = new byte[65];
                bArr[0] = 4;
                for (int i9 = 1; i9 <= 32; i9++) {
                    bArr[i9] = M[32 - i9];
                    bArr[i9 + 32] = M[64 - i9];
                }
                e z10 = e.z(x11.B());
                this.gostParams = z10;
                ek.b a10 = ck.a.a(zi.b.f(z10.B()));
                fk.e a11 = a10.a();
                EllipticCurve b10 = yj.b.b(a11, a10.e());
                this.f56091q = a11.h(bArr);
                this.ecSpec = new ek.c(zi.b.f(this.gostParams.B()), b10, yj.b.f(a10.b()), a10.d(), a10.c());
                return;
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        g x12 = g.x(x11.B());
        if (x12.B()) {
            n nVar = (n) x12.y();
            pj.i f10 = yj.c.f(nVar);
            x10 = f10.x();
            eCParameterSpec = new ek.c(yj.c.c(nVar), yj.b.b(x10, f10.G()), yj.b.f(f10.y()), f10.F(), f10.z());
        } else if (x12.z()) {
            this.ecSpec = null;
            x10 = BouncyCastleProvider.CONFIGURATION.b().a();
            L = vVar.B().L();
            w0Var = new w0(L);
            if (L[0] == 4 && L[1] == L.length - 2 && ((L[2] == 2 || L[2] == 3) && new pj.n().a(x10) >= L.length - 3)) {
                try {
                    w0Var = (o) r.G(L);
                } catch (IOException unused2) {
                    throw new IllegalArgumentException("error recovering public key");
                }
            }
            this.f56091q = new k(x10, w0Var).x();
        } else {
            pj.i B2 = pj.i.B(x12.y());
            x10 = B2.x();
            eCParameterSpec = new ECParameterSpec(yj.b.b(x10, B2.G()), yj.b.f(B2.y()), B2.F(), B2.z().intValue());
        }
        this.ecSpec = eCParameterSpec;
        L = vVar.B().L();
        w0Var = new w0(L);
        if (L[0] == 4) {
            w0Var = (o) r.G(L);
        }
        this.f56091q = new k(x10, w0Var).x();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        populateFromPubKeyInfo(v.z(r.G((byte[]) objectInputStream.readObject())));
        this.algorithm = (String) objectInputStream.readObject();
        this.withCompression = objectInputStream.readBoolean();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.algorithm);
        objectOutputStream.writeBoolean(this.withCompression);
    }

    public i engineGetQ() {
        return this.f56091q;
    }

    ek.d engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? yj.b.g(eCParameterSpec) : BouncyCastleProvider.CONFIGURATION.b();
    }

    public boolean equals(Object obj) {
        if (obj instanceof JCEECPublicKey) {
            JCEECPublicKey jCEECPublicKey = (JCEECPublicKey) obj;
            return engineGetQ().e(jCEECPublicKey.engineGetQ()) && engineGetSpec().equals(jCEECPublicKey.engineGetSpec());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        g gVar;
        v vVar;
        m gVar2;
        if (this.algorithm.equals("ECGOST3410")) {
            m mVar = this.gostParams;
            if (mVar == null) {
                ECParameterSpec eCParameterSpec = this.ecSpec;
                if (eCParameterSpec instanceof ek.c) {
                    gVar2 = new e(zi.b.g(((ek.c) eCParameterSpec).a()), zi.a.f60565p);
                } else {
                    fk.e a10 = yj.b.a(eCParameterSpec.getCurve());
                    gVar2 = new g(new pj.i(a10, new k(yj.b.d(a10, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
                }
                mVar = gVar2;
            }
            BigInteger t10 = this.f56091q.f().t();
            BigInteger t11 = this.f56091q.g().t();
            byte[] bArr = new byte[64];
            extractBytes(bArr, 0, t10);
            extractBytes(bArr, 32, t11);
            try {
                vVar = new v(new oj.a(zi.a.f60562m, mVar), new w0(bArr));
            } catch (IOException unused) {
                return null;
            }
        } else {
            ECParameterSpec eCParameterSpec2 = this.ecSpec;
            if (eCParameterSpec2 instanceof ek.c) {
                n g10 = yj.c.g(((ek.c) eCParameterSpec2).a());
                if (g10 == null) {
                    g10 = new n(((ek.c) this.ecSpec).a());
                }
                gVar = new g(g10);
            } else if (eCParameterSpec2 == null) {
                gVar = new g((org.bouncycastle.asn1.l) u0.f55980a);
            } else {
                fk.e a11 = yj.b.a(eCParameterSpec2.getCurve());
                gVar = new g(new pj.i(a11, new k(yj.b.d(a11, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
            vVar = new v(new oj.a(pj.o.f56983v3, gVar), getQ().l(this.withCompression));
        }
        return yj.e.e(vVar);
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
    public i getQ() {
        return this.ecSpec == null ? this.f56091q.k() : this.f56091q;
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        return yj.b.f(this.f56091q);
    }

    public int hashCode() {
        return engineGetQ().hashCode() ^ engineGetSpec().hashCode();
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = org.bouncycastle.util.i.d();
        stringBuffer.append("EC Public Key");
        stringBuffer.append(d10);
        stringBuffer.append("            X: ");
        stringBuffer.append(this.f56091q.f().t().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(this.f56091q.g().t().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
