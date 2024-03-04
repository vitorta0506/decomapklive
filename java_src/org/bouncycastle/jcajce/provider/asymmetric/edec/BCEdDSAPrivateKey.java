package org.bouncycastle.jcajce.provider.asymmetric.edec;

import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.u;
import org.bouncycastle.jcajce.interfaces.EdDSAPrivateKey;
import org.bouncycastle.jcajce.interfaces.EdDSAPublicKey;
import org.bouncycastle.util.h;
import vj.r;
import vj.t;
/* loaded from: classes7.dex */
public class BCEdDSAPrivateKey implements EdDSAPrivateKey {
    static final long serialVersionUID = 1;
    private final byte[] attributes;
    transient vj.a eddsaPrivateKey;
    private final boolean hasPublicKey;

    BCEdDSAPrivateKey(d dVar) throws IOException {
        this.hasPublicKey = dVar.H();
        this.attributes = dVar.x() != null ? dVar.x().getEncoded() : null;
        populateFromPrivateKeyInfo(dVar);
    }

    BCEdDSAPrivateKey(vj.a aVar) {
        this.hasPublicKey = true;
        this.attributes = null;
        this.eddsaPrivateKey = aVar;
    }

    private void populateFromPrivateKeyInfo(d dVar) throws IOException {
        e I = dVar.I();
        this.eddsaPrivateKey = aj.a.f798e.F(dVar.B().x()) ? new t(o.K(I).M(), 0) : new r(o.K(I).M(), 0);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        populateFromPrivateKeyInfo(d.y((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    vj.a engineGetKeyParameters() {
        return this.eddsaPrivateKey;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PrivateKey) {
            return org.bouncycastle.util.a.a(((PrivateKey) obj).getEncoded(), getEncoded());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.eddsaPrivateKey instanceof t ? "Ed448" : "Ed25519";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            u L = u.L(this.attributes);
            d a10 = xj.b.a(this.eddsaPrivateKey, L);
            return (!this.hasPublicKey || h.b("org.bouncycastle.pkcs8.v1_info_only")) ? new d(a10.B(), a10.I(), L).getEncoded() : a10.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jcajce.interfaces.EdDSAPrivateKey
    public EdDSAPublicKey getPublicKey() {
        vj.a aVar = this.eddsaPrivateKey;
        return aVar instanceof t ? new BCEdDSAPublicKey(((t) aVar).b()) : new BCEdDSAPublicKey(((r) aVar).b());
    }

    public int hashCode() {
        return org.bouncycastle.util.a.r(getEncoded());
    }

    public String toString() {
        vj.a aVar = this.eddsaPrivateKey;
        return b.c("Private Key", getAlgorithm(), aVar instanceof t ? ((t) aVar).b() : ((r) aVar).b());
    }
}
