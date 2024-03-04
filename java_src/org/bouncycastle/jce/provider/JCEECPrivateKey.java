package org.bouncycastle.jce.provider;

import ek.e;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPrivateKeySpec;
import java.util.Enumeration;
import oj.v;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.u0;
import pj.g;
import pj.i;
import pj.k;
import pj.o;
import vj.l;
import vj.p;
import yj.f;
/* loaded from: classes7.dex */
public class JCEECPrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, dk.b {
    private String algorithm;
    private f attrCarrier;

    /* renamed from: d  reason: collision with root package name */
    private BigInteger f56090d;
    private ECParameterSpec ecSpec;
    private n0 publicKey;
    private boolean withCompression;

    protected JCEECPrivateKey() {
        this.algorithm = "EC";
        this.attrCarrier = new f();
    }

    JCEECPrivateKey(gj.d dVar) throws IOException {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        populateFromPrivKeyInfo(dVar);
    }

    public JCEECPrivateKey(String str, e eVar) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        throw null;
    }

    public JCEECPrivateKey(String str, ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56090d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
    }

    public JCEECPrivateKey(String str, JCEECPrivateKey jCEECPrivateKey) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56090d = jCEECPrivateKey.f56090d;
        this.ecSpec = jCEECPrivateKey.ecSpec;
        this.withCompression = jCEECPrivateKey.withCompression;
        this.attrCarrier = jCEECPrivateKey.attrCarrier;
        this.publicKey = jCEECPrivateKey.publicKey;
    }

    public JCEECPrivateKey(String str, p pVar) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56090d = pVar.c();
        this.ecSpec = null;
    }

    public JCEECPrivateKey(String str, p pVar, JCEECPublicKey jCEECPublicKey, ek.d dVar) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56090d = pVar.c();
        if (dVar == null) {
            l b10 = pVar.b();
            this.ecSpec = new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue());
        } else {
            this.ecSpec = new ECParameterSpec(yj.b.b(dVar.a(), dVar.e()), yj.b.f(dVar.b()), dVar.d(), dVar.c().intValue());
        }
        this.publicKey = getPublicKeyDetails(jCEECPublicKey);
    }

    public JCEECPrivateKey(String str, p pVar, JCEECPublicKey jCEECPublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56090d = pVar.c();
        if (eCParameterSpec == null) {
            l b10 = pVar.b();
            eCParameterSpec = new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue());
        }
        this.ecSpec = eCParameterSpec;
        this.publicKey = getPublicKeyDetails(jCEECPublicKey);
    }

    public JCEECPrivateKey(ECPrivateKey eCPrivateKey) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.f56090d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
    }

    private n0 getPublicKeyDetails(JCEECPublicKey jCEECPublicKey) {
        try {
            return v.z(r.G(jCEECPublicKey.getEncoded())).B();
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void populateFromPrivKeyInfo(gj.d r11) throws java.io.IOException {
        /*
            r10 = this;
            oj.a r0 = r11.B()
            org.bouncycastle.asn1.e r0 = r0.B()
            pj.g r0 = pj.g.x(r0)
            boolean r1 = r0.B()
            if (r1 == 0) goto L72
            org.bouncycastle.asn1.r r0 = r0.y()
            org.bouncycastle.asn1.n r0 = org.bouncycastle.asn1.n.P(r0)
            pj.i r1 = yj.c.f(r0)
            if (r1 != 0) goto L4b
            vj.l r1 = zi.b.d(r0)
            fk.e r2 = r1.a()
            byte[] r3 = r1.e()
            java.security.spec.EllipticCurve r6 = yj.b.b(r2, r3)
            ek.c r2 = new ek.c
            java.lang.String r5 = zi.b.f(r0)
            fk.i r0 = r1.b()
            java.security.spec.ECPoint r7 = yj.b.f(r0)
            java.math.BigInteger r8 = r1.d()
            java.math.BigInteger r9 = r1.c()
            r4 = r2
            r4.<init>(r5, r6, r7, r8, r9)
            goto La9
        L4b:
            fk.e r2 = r1.x()
            byte[] r3 = r1.G()
            java.security.spec.EllipticCurve r6 = yj.b.b(r2, r3)
            ek.c r2 = new ek.c
            java.lang.String r5 = yj.c.c(r0)
            fk.i r0 = r1.y()
            java.security.spec.ECPoint r7 = yj.b.f(r0)
            java.math.BigInteger r8 = r1.F()
            java.math.BigInteger r9 = r1.z()
            r4 = r2
            r4.<init>(r5, r6, r7, r8, r9)
            goto La9
        L72:
            boolean r1 = r0.z()
            if (r1 == 0) goto L7c
            r0 = 0
            r10.ecSpec = r0
            goto Lab
        L7c:
            org.bouncycastle.asn1.r r0 = r0.y()
            pj.i r0 = pj.i.B(r0)
            fk.e r1 = r0.x()
            byte[] r2 = r0.G()
            java.security.spec.EllipticCurve r1 = yj.b.b(r1, r2)
            java.security.spec.ECParameterSpec r2 = new java.security.spec.ECParameterSpec
            fk.i r3 = r0.y()
            java.security.spec.ECPoint r3 = yj.b.f(r3)
            java.math.BigInteger r4 = r0.F()
            java.math.BigInteger r0 = r0.z()
            int r0 = r0.intValue()
            r2.<init>(r1, r3, r4, r0)
        La9:
            r10.ecSpec = r2
        Lab:
            org.bouncycastle.asn1.e r11 = r11.I()
            boolean r0 = r11 instanceof org.bouncycastle.asn1.k
            if (r0 == 0) goto Lbe
            org.bouncycastle.asn1.k r11 = org.bouncycastle.asn1.k.K(r11)
            java.math.BigInteger r11 = r11.N()
            r10.f56090d = r11
            goto Ld1
        Lbe:
            ij.b r0 = new ij.b
            org.bouncycastle.asn1.s r11 = (org.bouncycastle.asn1.s) r11
            r0.<init>(r11)
            java.math.BigInteger r11 = r0.x()
            r10.f56090d = r11
            org.bouncycastle.asn1.n0 r11 = r0.z()
            r10.publicKey = r11
        Ld1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.JCEECPrivateKey.populateFromPrivKeyInfo(gj.d):void");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        populateFromPrivKeyInfo(gj.d.y(r.G((byte[]) objectInputStream.readObject())));
        this.algorithm = (String) objectInputStream.readObject();
        this.withCompression = objectInputStream.readBoolean();
        f fVar = new f();
        this.attrCarrier = fVar;
        fVar.a(objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.algorithm);
        objectOutputStream.writeBoolean(this.withCompression);
        this.attrCarrier.b(objectOutputStream);
    }

    ek.d engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? yj.b.g(eCParameterSpec) : BouncyCastleProvider.CONFIGURATION.b();
    }

    public boolean equals(Object obj) {
        if (obj instanceof JCEECPrivateKey) {
            JCEECPrivateKey jCEECPrivateKey = (JCEECPrivateKey) obj;
            return getD().equals(jCEECPrivateKey.getD()) && engineGetSpec().equals(jCEECPrivateKey.engineGetSpec());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // dk.b
    public org.bouncycastle.asn1.e getBagAttribute(n nVar) {
        return this.attrCarrier.getBagAttribute(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
    public BigInteger getD() {
        return this.f56090d;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        g gVar;
        ECParameterSpec eCParameterSpec = this.ecSpec;
        if (eCParameterSpec instanceof ek.c) {
            n g10 = yj.c.g(((ek.c) eCParameterSpec).a());
            if (g10 == null) {
                g10 = new n(((ek.c) this.ecSpec).a());
            }
            gVar = new g(g10);
        } else if (eCParameterSpec == null) {
            gVar = new g((org.bouncycastle.asn1.l) u0.f55980a);
        } else {
            fk.e a10 = yj.b.a(eCParameterSpec.getCurve());
            gVar = new g(new i(a10, new k(yj.b.d(a10, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
        }
        ij.b bVar = this.publicKey != null ? new ij.b(getS(), this.publicKey, gVar) : new ij.b(getS(), gVar);
        try {
            return (this.algorithm.equals("ECGOST3410") ? new gj.d(new oj.a(zi.a.f60562m, gVar.f()), bVar.f()) : new gj.d(new oj.a(o.f56983v3, gVar.f()), bVar.f())).u("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
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

    @Override // java.security.interfaces.ECPrivateKey
    public BigInteger getS() {
        return this.f56090d;
    }

    public int hashCode() {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, org.bouncycastle.asn1.e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = org.bouncycastle.util.i.d();
        stringBuffer.append("EC Private Key");
        stringBuffer.append(d10);
        stringBuffer.append("             S: ");
        stringBuffer.append(this.f56090d.toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
