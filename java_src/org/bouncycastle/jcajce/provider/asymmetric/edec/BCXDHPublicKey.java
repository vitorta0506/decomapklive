package org.bouncycastle.jcajce.provider.asymmetric.edec;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import oj.v;
import org.bouncycastle.jcajce.interfaces.XDHPublicKey;
import vj.h0;
import vj.j0;
/* loaded from: classes7.dex */
public class BCXDHPublicKey implements XDHPublicKey {
    static final long serialVersionUID = 1;
    transient vj.a xdhPublicKey;

    BCXDHPublicKey(v vVar) {
        populateFromPubKeyInfo(vVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCXDHPublicKey(vj.a aVar) {
        this.xdhPublicKey = aVar;
    }

    BCXDHPublicKey(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException {
        vj.a h0Var;
        int length = bArr.length;
        if (!b.b(bArr, bArr2)) {
            throw new InvalidKeySpecException("raw key data not recognised");
        }
        if (bArr2.length - length == 56) {
            h0Var = new j0(bArr2, length);
        } else if (bArr2.length - length != 32) {
            throw new InvalidKeySpecException("raw key data not recognised");
        } else {
            h0Var = new h0(bArr2, length);
        }
        this.xdhPublicKey = h0Var;
    }

    private void populateFromPubKeyInfo(v vVar) {
        this.xdhPublicKey = aj.a.f796c.F(vVar.x().x()) ? new j0(vVar.B().M(), 0) : new h0(vVar.B().M(), 0);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        populateFromPubKeyInfo(v.z((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    vj.a engineGetKeyParameters() {
        return this.xdhPublicKey;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PublicKey) {
            return org.bouncycastle.util.a.a(((PublicKey) obj).getEncoded(), getEncoded());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.xdhPublicKey instanceof j0 ? "X448" : "X25519";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        if (this.xdhPublicKey instanceof j0) {
            byte[] bArr = a.f56055a;
            byte[] bArr2 = new byte[bArr.length + 56];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            ((j0) this.xdhPublicKey).b(bArr2, bArr.length);
            return bArr2;
        }
        byte[] bArr3 = a.f56056b;
        byte[] bArr4 = new byte[bArr3.length + 32];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        ((h0) this.xdhPublicKey).b(bArr4, bArr3.length);
        return bArr4;
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.r(getEncoded());
    }

    public String toString() {
        return b.c("Public Key", getAlgorithm(), this.xdhPublicKey);
    }
}
