package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

import dk.b;
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
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.r;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import vj.l;
import vj.p;
import yj.c;
import yj.f;
/* loaded from: classes7.dex */
public class BCECGOST3410PrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, b {
    static final long serialVersionUID = 7245981689601667138L;
    private String algorithm;
    private transient f attrCarrier;

    /* renamed from: d  reason: collision with root package name */
    private transient BigInteger f56053d;
    private transient ECParameterSpec ecSpec;
    private transient e gostParams;
    private transient n0 publicKey;
    private boolean withCompression;

    protected BCECGOST3410PrivateKey() {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new f();
    }

    public BCECGOST3410PrivateKey(ek.e eVar) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new f();
        throw null;
    }

    BCECGOST3410PrivateKey(d dVar) throws IOException {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new f();
        populateFromPrivKeyInfo(dVar);
    }

    public BCECGOST3410PrivateKey(String str, p pVar) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56053d = pVar.c();
        this.ecSpec = null;
    }

    public BCECGOST3410PrivateKey(String str, p pVar, BCECGOST3410PublicKey bCECGOST3410PublicKey, ek.d dVar) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56053d = pVar.c();
        if (dVar == null) {
            l b10 = pVar.b();
            this.ecSpec = new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue());
        } else {
            this.ecSpec = new ECParameterSpec(yj.b.b(dVar.a(), dVar.e()), yj.b.f(dVar.b()), dVar.d(), dVar.c().intValue());
        }
        this.gostParams = bCECGOST3410PublicKey.getGostParams();
        this.publicKey = getPublicKeyDetails(bCECGOST3410PublicKey);
    }

    public BCECGOST3410PrivateKey(String str, p pVar, BCECGOST3410PublicKey bCECGOST3410PublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56053d = pVar.c();
        if (eCParameterSpec == null) {
            l b10 = pVar.b();
            eCParameterSpec = new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue());
        }
        this.ecSpec = eCParameterSpec;
        this.gostParams = bCECGOST3410PublicKey.getGostParams();
        this.publicKey = getPublicKeyDetails(bCECGOST3410PublicKey);
    }

    public BCECGOST3410PrivateKey(ECPrivateKey eCPrivateKey) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new f();
        this.f56053d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
    }

    public BCECGOST3410PrivateKey(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new f();
        this.f56053d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
    }

    public BCECGOST3410PrivateKey(BCECGOST3410PrivateKey bCECGOST3410PrivateKey) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new f();
        this.f56053d = bCECGOST3410PrivateKey.f56053d;
        this.ecSpec = bCECGOST3410PrivateKey.ecSpec;
        this.withCompression = bCECGOST3410PrivateKey.withCompression;
        this.attrCarrier = bCECGOST3410PrivateKey.attrCarrier;
        this.publicKey = bCECGOST3410PrivateKey.publicKey;
        this.gostParams = bCECGOST3410PrivateKey.gostParams;
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

    private n0 getPublicKeyDetails(BCECGOST3410PublicKey bCECGOST3410PublicKey) {
        try {
            return v.z(r.G(bCECGOST3410PublicKey.getEncoded())).B();
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void populateFromPrivKeyInfo(gj.d r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.asymmetric.ecgost.BCECGOST3410PrivateKey.populateFromPrivKeyInfo(gj.d):void");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        populateFromPrivKeyInfo(d.y(r.G((byte[]) objectInputStream.readObject())));
        this.attrCarrier = new f();
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
        if (obj instanceof BCECGOST3410PrivateKey) {
            BCECGOST3410PrivateKey bCECGOST3410PrivateKey = (BCECGOST3410PrivateKey) obj;
            return getD().equals(bCECGOST3410PrivateKey.getD()) && engineGetSpec().equals(bCECGOST3410PrivateKey.engineGetSpec());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // dk.b
    public e getBagAttribute(n nVar) {
        return this.attrCarrier.getBagAttribute(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
    public BigInteger getD() {
        return this.f56053d;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c4  */
    @Override // java.security.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] getEncoded() {
        /*
            r9 = this;
            org.bouncycastle.asn1.e r0 = r9.gostParams
            java.lang.String r1 = "DER"
            r2 = 0
            if (r0 == 0) goto L2c
            r0 = 32
            byte[] r0 = new byte[r0]
            r3 = 0
            java.math.BigInteger r4 = r9.getS()
            r9.extractBytes(r0, r3, r4)
            gj.d r3 = new gj.d     // Catch: java.io.IOException -> L2b
            oj.a r4 = new oj.a     // Catch: java.io.IOException -> L2b
            org.bouncycastle.asn1.n r5 = zi.a.f60562m     // Catch: java.io.IOException -> L2b
            org.bouncycastle.asn1.e r6 = r9.gostParams     // Catch: java.io.IOException -> L2b
            r4.<init>(r5, r6)     // Catch: java.io.IOException -> L2b
            org.bouncycastle.asn1.w0 r5 = new org.bouncycastle.asn1.w0     // Catch: java.io.IOException -> L2b
            r5.<init>(r0)     // Catch: java.io.IOException -> L2b
            r3.<init>(r4, r5)     // Catch: java.io.IOException -> L2b
            byte[] r0 = r3.u(r1)     // Catch: java.io.IOException -> L2b
            return r0
        L2b:
            return r2
        L2c:
            java.security.spec.ECParameterSpec r0 = r9.ecSpec
            boolean r3 = r0 instanceof ek.c
            if (r3 == 0) goto L51
            ek.c r0 = (ek.c) r0
            java.lang.String r0 = r0.a()
            org.bouncycastle.asn1.n r0 = yj.c.g(r0)
            if (r0 != 0) goto L4b
            org.bouncycastle.asn1.n r0 = new org.bouncycastle.asn1.n
            java.security.spec.ECParameterSpec r3 = r9.ecSpec
            ek.c r3 = (ek.c) r3
            java.lang.String r3 = r3.a()
            r0.<init>(r3)
        L4b:
            pj.g r3 = new pj.g
            r3.<init>(r0)
            goto La4
        L51:
            if (r0 != 0) goto L65
            pj.g r3 = new pj.g
            org.bouncycastle.asn1.u0 r0 = org.bouncycastle.asn1.u0.f55980a
            r3.<init>(r0)
            zj.b r0 = org.bouncycastle.jce.provider.BouncyCastleProvider.CONFIGURATION
            java.math.BigInteger r4 = r9.getS()
            int r0 = yj.c.h(r0, r2, r4)
            goto Lb4
        L65:
            java.security.spec.EllipticCurve r0 = r0.getCurve()
            fk.e r4 = yj.b.a(r0)
            pj.i r0 = new pj.i
            pj.k r5 = new pj.k
            java.security.spec.ECParameterSpec r3 = r9.ecSpec
            java.security.spec.ECPoint r3 = r3.getGenerator()
            fk.i r3 = yj.b.d(r4, r3)
            boolean r6 = r9.withCompression
            r5.<init>(r3, r6)
            java.security.spec.ECParameterSpec r3 = r9.ecSpec
            java.math.BigInteger r6 = r3.getOrder()
            java.security.spec.ECParameterSpec r3 = r9.ecSpec
            int r3 = r3.getCofactor()
            long r7 = (long) r3
            java.math.BigInteger r7 = java.math.BigInteger.valueOf(r7)
            java.security.spec.ECParameterSpec r3 = r9.ecSpec
            java.security.spec.EllipticCurve r3 = r3.getCurve()
            byte[] r8 = r3.getSeed()
            r3 = r0
            r3.<init>(r4, r5, r6, r7, r8)
            pj.g r3 = new pj.g
            r3.<init>(r0)
        La4:
            zj.b r0 = org.bouncycastle.jce.provider.BouncyCastleProvider.CONFIGURATION
            java.security.spec.ECParameterSpec r4 = r9.ecSpec
            java.math.BigInteger r4 = r4.getOrder()
            java.math.BigInteger r5 = r9.getS()
            int r0 = yj.c.h(r0, r4, r5)
        Lb4:
            org.bouncycastle.asn1.n0 r4 = r9.publicKey
            if (r4 == 0) goto Lc4
            ij.a r4 = new ij.a
            java.math.BigInteger r5 = r9.getS()
            org.bouncycastle.asn1.n0 r6 = r9.publicKey
            r4.<init>(r0, r5, r6, r3)
            goto Lcd
        Lc4:
            ij.a r4 = new ij.a
            java.math.BigInteger r5 = r9.getS()
            r4.<init>(r0, r5, r3)
        Lcd:
            gj.d r0 = new gj.d     // Catch: java.io.IOException -> Le6
            oj.a r5 = new oj.a     // Catch: java.io.IOException -> Le6
            org.bouncycastle.asn1.n r6 = zi.a.f60562m     // Catch: java.io.IOException -> Le6
            org.bouncycastle.asn1.r r3 = r3.f()     // Catch: java.io.IOException -> Le6
            r5.<init>(r6, r3)     // Catch: java.io.IOException -> Le6
            org.bouncycastle.asn1.r r3 = r4.f()     // Catch: java.io.IOException -> Le6
            r0.<init>(r5, r3)     // Catch: java.io.IOException -> Le6
            byte[] r0 = r0.u(r1)     // Catch: java.io.IOException -> Le6
            return r0
        Le6:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.asymmetric.ecgost.BCECGOST3410PrivateKey.getEncoded():byte[]");
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
        return this.f56053d;
    }

    public int hashCode() {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return c.i(this.algorithm, this.f56053d, engineGetSpec());
    }
}
