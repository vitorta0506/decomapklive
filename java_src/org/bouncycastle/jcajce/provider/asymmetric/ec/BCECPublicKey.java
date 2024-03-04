package org.bouncycastle.jcajce.provider.asymmetric.ec;

import ek.d;
import ek.f;
import fk.e;
import fk.i;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import oj.v;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.util.h;
import pj.g;
import pj.k;
import pj.n;
import vj.l;
import vj.q;
import yj.c;
import zj.b;
/* loaded from: classes7.dex */
public class BCECPublicKey implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 2422789860422731812L;
    private String algorithm;
    private transient b configuration;
    private transient q ecPublicKey;
    private transient ECParameterSpec ecSpec;
    private boolean withCompression;

    public BCECPublicKey(String str, f fVar, b bVar) {
        this.algorithm = str;
        throw null;
    }

    public BCECPublicKey(String str, ECPublicKeySpec eCPublicKeySpec, b bVar) {
        this.algorithm = str;
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new q(yj.b.e(params, eCPublicKeySpec.getW()), yj.b.l(bVar, eCPublicKeySpec.getParams()));
        this.configuration = bVar;
    }

    BCECPublicKey(String str, v vVar, b bVar) {
        this.algorithm = str;
        this.configuration = bVar;
        populateFromPubKeyInfo(vVar);
    }

    public BCECPublicKey(String str, BCECPublicKey bCECPublicKey) {
        this.algorithm = str;
        this.ecPublicKey = bCECPublicKey.ecPublicKey;
        this.ecSpec = bCECPublicKey.ecSpec;
        this.withCompression = bCECPublicKey.withCompression;
        this.configuration = bCECPublicKey.configuration;
    }

    public BCECPublicKey(String str, q qVar, d dVar, b bVar) {
        this.algorithm = "EC";
        l b10 = qVar.b();
        this.algorithm = str;
        this.ecSpec = dVar == null ? createSpec(yj.b.b(b10.a(), b10.e()), b10) : yj.b.h(yj.b.b(dVar.a(), dVar.e()), dVar);
        this.ecPublicKey = qVar;
        this.configuration = bVar;
    }

    public BCECPublicKey(String str, q qVar, ECParameterSpec eCParameterSpec, b bVar) {
        this.algorithm = "EC";
        l b10 = qVar.b();
        this.algorithm = str;
        this.ecPublicKey = qVar;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(yj.b.b(b10.a(), b10.e()), b10);
        } else {
            this.ecSpec = eCParameterSpec;
        }
        this.configuration = bVar;
    }

    public BCECPublicKey(String str, q qVar, b bVar) {
        this.algorithm = str;
        this.ecPublicKey = qVar;
        this.ecSpec = null;
        this.configuration = bVar;
    }

    public BCECPublicKey(ECPublicKey eCPublicKey, b bVar) {
        this.algorithm = "EC";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new q(yj.b.e(params, eCPublicKey.getW()), yj.b.l(bVar, eCPublicKey.getParams()));
        this.configuration = bVar;
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, l lVar) {
        return new ECParameterSpec(ellipticCurve, yj.b.f(lVar.b()), lVar.d(), lVar.c().intValue());
    }

    private void populateFromPubKeyInfo(v vVar) {
        g x10 = g.x(vVar.x().B());
        e k10 = yj.b.k(this.configuration, x10);
        this.ecSpec = yj.b.i(x10, k10);
        byte[] L = vVar.B().L();
        o w0Var = new w0(L);
        if (L[0] == 4 && L[1] == L.length - 2 && ((L[2] == 2 || L[2] == 3) && new n().a(k10) >= L.length - 3)) {
            try {
                w0Var = (o) r.G(L);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        this.ecPublicKey = new q(new k(k10, w0Var).x(), c.e(this.configuration, x10));
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.configuration = BouncyCastleProvider.CONFIGURATION;
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
        return eCParameterSpec != null ? yj.b.g(eCParameterSpec) : this.configuration.b();
    }

    public boolean equals(Object obj) {
        if (obj instanceof BCECPublicKey) {
            BCECPublicKey bCECPublicKey = (BCECPublicKey) obj;
            return this.ecPublicKey.c().e(bCECPublicKey.ecPublicKey.c()) && engineGetSpec().equals(bCECPublicKey.engineGetSpec());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        boolean z10 = this.withCompression || h.b("org.bouncycastle.ec.enable_pc");
        return yj.e.d(new oj.a(pj.o.f56983v3, a.a(this.ecSpec, z10)), this.ecPublicKey.c().l(z10));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
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
    public i getQ() {
        i c10 = this.ecPublicKey.c();
        return this.ecSpec == null ? c10.k() : c10;
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
        return c.j("EC", this.ecPublicKey.c(), engineGetSpec());
    }
}
