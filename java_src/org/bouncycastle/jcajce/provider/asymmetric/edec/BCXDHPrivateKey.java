package org.bouncycastle.jcajce.provider.asymmetric.edec;

import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.u;
import org.bouncycastle.jcajce.interfaces.XDHPrivateKey;
import org.bouncycastle.jcajce.interfaces.XDHPublicKey;
import org.bouncycastle.util.h;
import vj.g0;
import vj.i0;
/* loaded from: classes7.dex */
public class BCXDHPrivateKey implements XDHPrivateKey {
    static final long serialVersionUID = 1;
    private final byte[] attributes;
    private final boolean hasPublicKey;
    transient vj.a xdhPrivateKey;

    BCXDHPrivateKey(d dVar) throws IOException {
        this.hasPublicKey = dVar.H();
        this.attributes = dVar.x() != null ? dVar.x().getEncoded() : null;
        populateFromPrivateKeyInfo(dVar);
    }

    BCXDHPrivateKey(vj.a aVar) {
        this.hasPublicKey = true;
        this.attributes = null;
        this.xdhPrivateKey = aVar;
    }

    private void populateFromPrivateKeyInfo(d dVar) throws IOException {
        o z10 = dVar.z();
        byte[] M = z10.M();
        if (M.length != 32 && M.length != 56) {
            z10 = o.K(dVar.I());
        }
        this.xdhPrivateKey = aj.a.f796c.F(dVar.B().x()) ? new i0(o.K(z10).M(), 0) : new g0(o.K(z10).M(), 0);
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
        return this.xdhPrivateKey;
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
        return this.xdhPrivateKey instanceof i0 ? "X448" : "X25519";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            u L = u.L(this.attributes);
            d a10 = xj.b.a(this.xdhPrivateKey, L);
            return (!this.hasPublicKey || h.b("org.bouncycastle.pkcs8.v1_info_only")) ? new d(a10.B(), a10.I(), L).getEncoded() : a10.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jcajce.interfaces.XDHPrivateKey
    public XDHPublicKey getPublicKey() {
        vj.a aVar = this.xdhPrivateKey;
        return aVar instanceof i0 ? new BCXDHPublicKey(((i0) aVar).b()) : new BCXDHPublicKey(((g0) aVar).b());
    }

    public int hashCode() {
        return org.bouncycastle.util.a.r(getEncoded());
    }

    public String toString() {
        vj.a aVar = this.xdhPrivateKey;
        return b.c("Private Key", getAlgorithm(), aVar instanceof i0 ? ((i0) aVar).b() : ((g0) aVar).b());
    }
}
