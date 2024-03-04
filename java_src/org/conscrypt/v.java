package org.conscrypt;

import java.io.IOException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.util.Arrays;
import org.conscrypt.NativeRef;
/* loaded from: classes7.dex */
final class v implements ECPublicKey, x {
    private static final long serialVersionUID = 3215842926808298020L;

    /* renamed from: a  reason: collision with root package name */
    protected transient w f56418a;

    /* renamed from: b  reason: collision with root package name */
    protected transient t f56419b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(w wVar) {
        this.f56419b = new t(new NativeRef.EC_GROUP(NativeCrypto.EC_KEY_get1_group(wVar.a())));
        this.f56418a = wVar;
    }

    private ECPoint a() {
        return new u(this.f56419b, new NativeRef.EC_POINT(NativeCrypto.EC_KEY_get_public_key(this.f56418a.a()))).a();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        try {
            this.f56418a = new w(NativeCrypto.EVP_parse_public_key((byte[]) objectInputStream.readObject()));
            this.f56419b = new t(new NativeRef.EC_GROUP(NativeCrypto.EC_KEY_get1_group(this.f56418a.a())));
        } catch (y e10) {
            throw new IOException(e10);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        if (!this.f56418a.c()) {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(getEncoded());
            return;
        }
        throw new NotSerializableException("Hardware backed keys cannot be serialized");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            return this.f56418a.equals(((v) obj).f56418a);
        }
        if (obj instanceof ECPublicKey) {
            ECPublicKey eCPublicKey = (ECPublicKey) obj;
            if (a().equals(eCPublicKey.getW())) {
                ECParameterSpec params = getParams();
                ECParameterSpec params2 = eCPublicKey.getParams();
                return params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor();
            }
            return false;
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "EC";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return NativeCrypto.EVP_marshal_public_key(this.f56418a.a());
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.conscrypt.x
    public w getOpenSSLKey() {
        return this.f56418a;
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.f56419b.a();
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        return a();
    }

    public int hashCode() {
        return Arrays.hashCode(NativeCrypto.EVP_marshal_public_key(this.f56418a.a()));
    }

    public String toString() {
        return NativeCrypto.EVP_PKEY_print_public(this.f56418a.a());
    }
}
