package org.bouncycastle.jcajce.provider.asymmetric.dstu;

import dk.b;
import ek.e;
import gj.d;
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
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import vj.l;
import vj.p;
import yj.c;
import yj.f;
/* loaded from: classes7.dex */
public class BCDSTU4145PrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, b {
    static final long serialVersionUID = 7245981689601667138L;
    private String algorithm;
    private transient f attrCarrier;

    /* renamed from: d  reason: collision with root package name */
    private transient BigInteger f56051d;
    private transient ECParameterSpec ecSpec;
    private transient n0 publicKey;
    private boolean withCompression;

    protected BCDSTU4145PrivateKey() {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new f();
    }

    public BCDSTU4145PrivateKey(e eVar) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new f();
        throw null;
    }

    BCDSTU4145PrivateKey(d dVar) throws IOException {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new f();
        populateFromPrivKeyInfo(dVar);
    }

    public BCDSTU4145PrivateKey(String str, p pVar) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56051d = pVar.c();
        this.ecSpec = null;
    }

    public BCDSTU4145PrivateKey(String str, p pVar, BCDSTU4145PublicKey bCDSTU4145PublicKey, ek.d dVar) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new f();
        l b10 = pVar.b();
        this.algorithm = str;
        this.f56051d = pVar.c();
        this.ecSpec = dVar == null ? new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue()) : new ECParameterSpec(yj.b.b(dVar.a(), dVar.e()), yj.b.f(dVar.b()), dVar.d(), dVar.c().intValue());
        this.publicKey = getPublicKeyDetails(bCDSTU4145PublicKey);
    }

    public BCDSTU4145PrivateKey(String str, p pVar, BCDSTU4145PublicKey bCDSTU4145PublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new f();
        l b10 = pVar.b();
        this.algorithm = str;
        this.f56051d = pVar.c();
        if (eCParameterSpec == null) {
            this.ecSpec = new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue());
        } else {
            this.ecSpec = eCParameterSpec;
        }
        this.publicKey = getPublicKeyDetails(bCDSTU4145PublicKey);
    }

    public BCDSTU4145PrivateKey(ECPrivateKey eCPrivateKey) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new f();
        this.f56051d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
    }

    public BCDSTU4145PrivateKey(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new f();
        this.f56051d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
    }

    public BCDSTU4145PrivateKey(BCDSTU4145PrivateKey bCDSTU4145PrivateKey) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new f();
        this.f56051d = bCDSTU4145PrivateKey.f56051d;
        this.ecSpec = bCDSTU4145PrivateKey.ecSpec;
        this.withCompression = bCDSTU4145PrivateKey.withCompression;
        this.attrCarrier = bCDSTU4145PrivateKey.attrCarrier;
        this.publicKey = bCDSTU4145PrivateKey.publicKey;
    }

    private n0 getPublicKeyDetails(BCDSTU4145PublicKey bCDSTU4145PublicKey) {
        try {
            return v.z(r.G(bCDSTU4145PublicKey.getEncoded())).B();
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x018b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void populateFromPrivKeyInfo(gj.d r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.asymmetric.dstu.BCDSTU4145PrivateKey.populateFromPrivKeyInfo(gj.d):void");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        populateFromPrivKeyInfo(d.y(r.G((byte[]) objectInputStream.readObject())));
        this.attrCarrier = new f();
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

    ek.d engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? yj.b.g(eCParameterSpec) : BouncyCastleProvider.CONFIGURATION.b();
    }

    public boolean equals(Object obj) {
        if (obj instanceof BCDSTU4145PrivateKey) {
            BCDSTU4145PrivateKey bCDSTU4145PrivateKey = (BCDSTU4145PrivateKey) obj;
            return getD().equals(bCDSTU4145PrivateKey.getD()) && engineGetSpec().equals(bCDSTU4145PrivateKey.engineGetSpec());
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
        return this.f56051d;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ac A[Catch: IOException -> 0x00dc, TryCatch #0 {IOException -> 0x00dc, blocks: (B:16:0x00a2, B:18:0x00ac, B:20:0x00d5, B:19:0x00c1), top: B:23:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c1 A[Catch: IOException -> 0x00dc, TryCatch #0 {IOException -> 0x00dc, blocks: (B:16:0x00a2, B:18:0x00ac, B:20:0x00d5, B:19:0x00c1), top: B:23:0x00a2 }] */
    @Override // java.security.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] getEncoded() {
        /*
            r9 = this;
            java.security.spec.ECParameterSpec r0 = r9.ecSpec
            boolean r1 = r0 instanceof ek.c
            r2 = 0
            if (r1 == 0) goto L26
            ek.c r0 = (ek.c) r0
            java.lang.String r0 = r0.a()
            org.bouncycastle.asn1.n r0 = yj.c.g(r0)
            if (r0 != 0) goto L20
            org.bouncycastle.asn1.n r0 = new org.bouncycastle.asn1.n
            java.security.spec.ECParameterSpec r1 = r9.ecSpec
            ek.c r1 = (ek.c) r1
            java.lang.String r1 = r1.a()
            r0.<init>(r1)
        L20:
            pj.g r1 = new pj.g
            r1.<init>(r0)
            goto L79
        L26:
            if (r0 != 0) goto L3a
            pj.g r1 = new pj.g
            org.bouncycastle.asn1.u0 r0 = org.bouncycastle.asn1.u0.f55980a
            r1.<init>(r0)
            zj.b r0 = org.bouncycastle.jce.provider.BouncyCastleProvider.CONFIGURATION
            java.math.BigInteger r3 = r9.getS()
            int r0 = yj.c.h(r0, r2, r3)
            goto L89
        L3a:
            java.security.spec.EllipticCurve r0 = r0.getCurve()
            fk.e r4 = yj.b.a(r0)
            pj.i r0 = new pj.i
            pj.k r5 = new pj.k
            java.security.spec.ECParameterSpec r1 = r9.ecSpec
            java.security.spec.ECPoint r1 = r1.getGenerator()
            fk.i r1 = yj.b.d(r4, r1)
            boolean r3 = r9.withCompression
            r5.<init>(r1, r3)
            java.security.spec.ECParameterSpec r1 = r9.ecSpec
            java.math.BigInteger r6 = r1.getOrder()
            java.security.spec.ECParameterSpec r1 = r9.ecSpec
            int r1 = r1.getCofactor()
            long r7 = (long) r1
            java.math.BigInteger r7 = java.math.BigInteger.valueOf(r7)
            java.security.spec.ECParameterSpec r1 = r9.ecSpec
            java.security.spec.EllipticCurve r1 = r1.getCurve()
            byte[] r8 = r1.getSeed()
            r3 = r0
            r3.<init>(r4, r5, r6, r7, r8)
            pj.g r1 = new pj.g
            r1.<init>(r0)
        L79:
            zj.b r0 = org.bouncycastle.jce.provider.BouncyCastleProvider.CONFIGURATION
            java.security.spec.ECParameterSpec r3 = r9.ecSpec
            java.math.BigInteger r3 = r3.getOrder()
            java.math.BigInteger r4 = r9.getS()
            int r0 = yj.c.h(r0, r3, r4)
        L89:
            org.bouncycastle.asn1.n0 r3 = r9.publicKey
            if (r3 == 0) goto L99
            ij.a r3 = new ij.a
            java.math.BigInteger r4 = r9.getS()
            org.bouncycastle.asn1.n0 r5 = r9.publicKey
            r3.<init>(r0, r4, r5, r1)
            goto La2
        L99:
            ij.a r3 = new ij.a
            java.math.BigInteger r4 = r9.getS()
            r3.<init>(r0, r4, r1)
        La2:
            java.lang.String r0 = r9.algorithm     // Catch: java.io.IOException -> Ldc
            java.lang.String r4 = "DSTU4145"
            boolean r0 = r0.equals(r4)     // Catch: java.io.IOException -> Ldc
            if (r0 == 0) goto Lc1
            gj.d r0 = new gj.d     // Catch: java.io.IOException -> Ldc
            oj.a r4 = new oj.a     // Catch: java.io.IOException -> Ldc
            org.bouncycastle.asn1.n r5 = kj.f.f53994c     // Catch: java.io.IOException -> Ldc
            org.bouncycastle.asn1.r r1 = r1.f()     // Catch: java.io.IOException -> Ldc
            r4.<init>(r5, r1)     // Catch: java.io.IOException -> Ldc
            org.bouncycastle.asn1.r r1 = r3.f()     // Catch: java.io.IOException -> Ldc
            r0.<init>(r4, r1)     // Catch: java.io.IOException -> Ldc
            goto Ld5
        Lc1:
            gj.d r0 = new gj.d     // Catch: java.io.IOException -> Ldc
            oj.a r4 = new oj.a     // Catch: java.io.IOException -> Ldc
            org.bouncycastle.asn1.n r5 = pj.o.f56983v3     // Catch: java.io.IOException -> Ldc
            org.bouncycastle.asn1.r r1 = r1.f()     // Catch: java.io.IOException -> Ldc
            r4.<init>(r5, r1)     // Catch: java.io.IOException -> Ldc
            org.bouncycastle.asn1.r r1 = r3.f()     // Catch: java.io.IOException -> Ldc
            r0.<init>(r4, r1)     // Catch: java.io.IOException -> Ldc
        Ld5:
            java.lang.String r1 = "DER"
            byte[] r0 = r0.u(r1)     // Catch: java.io.IOException -> Ldc
            return r0
        Ldc:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.asymmetric.dstu.BCDSTU4145PrivateKey.getEncoded():byte[]");
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
        return this.f56051d;
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
        return c.i(this.algorithm, this.f56051d, engineGetSpec());
    }
}
