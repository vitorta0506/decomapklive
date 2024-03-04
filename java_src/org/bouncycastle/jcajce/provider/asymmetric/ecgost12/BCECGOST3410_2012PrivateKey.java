package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

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
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.r;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import vj.l;
import vj.p;
import yj.c;
import yj.f;
import zi.e;
/* loaded from: classes7.dex */
public class BCECGOST3410_2012PrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, b {
    static final long serialVersionUID = 7245981689601667138L;
    private String algorithm;
    private transient f attrCarrier;

    /* renamed from: d  reason: collision with root package name */
    private transient BigInteger f56054d;
    private transient ECParameterSpec ecSpec;
    private transient e gostParams;
    private transient n0 publicKey;
    private boolean withCompression;

    protected BCECGOST3410_2012PrivateKey() {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new f();
    }

    public BCECGOST3410_2012PrivateKey(ek.e eVar) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new f();
        throw null;
    }

    BCECGOST3410_2012PrivateKey(d dVar) throws IOException {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new f();
        populateFromPrivKeyInfo(dVar);
    }

    public BCECGOST3410_2012PrivateKey(String str, p pVar) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56054d = pVar.c();
        this.ecSpec = null;
    }

    public BCECGOST3410_2012PrivateKey(String str, p pVar, BCECGOST3410_2012PublicKey bCECGOST3410_2012PublicKey, ek.d dVar) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new f();
        l b10 = pVar.b();
        this.algorithm = str;
        this.f56054d = pVar.c();
        this.ecSpec = dVar == null ? new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue()) : new ECParameterSpec(yj.b.b(dVar.a(), dVar.e()), yj.b.f(dVar.b()), dVar.d(), dVar.c().intValue());
        this.gostParams = bCECGOST3410_2012PublicKey.getGostParams();
        this.publicKey = getPublicKeyDetails(bCECGOST3410_2012PublicKey);
    }

    public BCECGOST3410_2012PrivateKey(String str, p pVar, BCECGOST3410_2012PublicKey bCECGOST3410_2012PublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new f();
        l b10 = pVar.b();
        this.algorithm = str;
        this.f56054d = pVar.c();
        if (eCParameterSpec == null) {
            this.ecSpec = new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue());
        } else {
            this.ecSpec = eCParameterSpec;
        }
        this.gostParams = bCECGOST3410_2012PublicKey.getGostParams();
        this.publicKey = getPublicKeyDetails(bCECGOST3410_2012PublicKey);
    }

    public BCECGOST3410_2012PrivateKey(ECPrivateKey eCPrivateKey) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new f();
        this.f56054d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
    }

    public BCECGOST3410_2012PrivateKey(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new f();
        this.f56054d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
    }

    public BCECGOST3410_2012PrivateKey(BCECGOST3410_2012PrivateKey bCECGOST3410_2012PrivateKey) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new f();
        this.f56054d = bCECGOST3410_2012PrivateKey.f56054d;
        this.ecSpec = bCECGOST3410_2012PrivateKey.ecSpec;
        this.withCompression = bCECGOST3410_2012PrivateKey.withCompression;
        this.attrCarrier = bCECGOST3410_2012PrivateKey.attrCarrier;
        this.publicKey = bCECGOST3410_2012PrivateKey.publicKey;
        this.gostParams = bCECGOST3410_2012PrivateKey.gostParams;
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

    private n0 getPublicKeyDetails(BCECGOST3410_2012PublicKey bCECGOST3410_2012PublicKey) {
        return v.z(bCECGOST3410_2012PublicKey.getEncoded()).B();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void populateFromPrivKeyInfo(gj.d r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.asymmetric.ecgost12.BCECGOST3410_2012PrivateKey.populateFromPrivKeyInfo(gj.d):void");
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
        if (obj instanceof BCECGOST3410_2012PrivateKey) {
            BCECGOST3410_2012PrivateKey bCECGOST3410_2012PrivateKey = (BCECGOST3410_2012PrivateKey) obj;
            return getD().equals(bCECGOST3410_2012PrivateKey.getD()) && engineGetSpec().equals(bCECGOST3410_2012PrivateKey.engineGetSpec());
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
        return this.f56054d;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00db  */
    @Override // java.security.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] getEncoded() {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.asymmetric.ecgost12.BCECGOST3410_2012PrivateKey.getEncoded():byte[]");
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
        return this.f56054d;
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
        return c.i(this.algorithm, this.f56054d, engineGetSpec());
    }
}
