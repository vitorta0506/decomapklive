package org.bouncycastle.jcajce.provider.asymmetric.edec;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import oj.v;
import org.bouncycastle.jcajce.interfaces.EdDSAPublicKey;
import vj.s;
import vj.u;
/* loaded from: classes7.dex */
public class BCEdDSAPublicKey implements EdDSAPublicKey {
    static final long serialVersionUID = 1;
    transient vj.a eddsaPublicKey;

    BCEdDSAPublicKey(v vVar) {
        populateFromPubKeyInfo(vVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCEdDSAPublicKey(vj.a aVar) {
        this.eddsaPublicKey = aVar;
    }

    BCEdDSAPublicKey(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException {
        vj.a sVar;
        int length = bArr.length;
        if (!b.b(bArr, bArr2)) {
            throw new InvalidKeySpecException("raw key data not recognised");
        }
        if (bArr2.length - length == 57) {
            sVar = new u(bArr2, length);
        } else if (bArr2.length - length != 32) {
            throw new InvalidKeySpecException("raw key data not recognised");
        } else {
            sVar = new s(bArr2, length);
        }
        this.eddsaPublicKey = sVar;
    }

    private void populateFromPubKeyInfo(v vVar) {
        this.eddsaPublicKey = aj.a.f798e.F(vVar.x().x()) ? new u(vVar.B().M(), 0) : new s(vVar.B().M(), 0);
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
        return this.eddsaPublicKey;
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
        return this.eddsaPublicKey instanceof u ? "Ed448" : "Ed25519";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        if (this.eddsaPublicKey instanceof u) {
            byte[] bArr = a.f56057c;
            byte[] bArr2 = new byte[bArr.length + 57];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            ((u) this.eddsaPublicKey).b(bArr2, bArr.length);
            return bArr2;
        }
        byte[] bArr3 = a.f56058d;
        byte[] bArr4 = new byte[bArr3.length + 32];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        ((s) this.eddsaPublicKey).b(bArr4, bArr3.length);
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
        return b.c("Public Key", getAlgorithm(), this.eddsaPublicKey);
    }
}
