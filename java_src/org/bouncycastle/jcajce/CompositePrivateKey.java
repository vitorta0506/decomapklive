package org.bouncycastle.jcajce;

import gj.d;
import java.io.IOException;
import java.security.PrivateKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import oj.a;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.f;
/* loaded from: classes7.dex */
public class CompositePrivateKey implements PrivateKey {
    private final List<PrivateKey> keys;

    public CompositePrivateKey(PrivateKey... privateKeyArr) {
        if (privateKeyArr == null || privateKeyArr.length == 0) {
            throw new IllegalArgumentException("at least one public key must be provided");
        }
        ArrayList arrayList = new ArrayList(privateKeyArr.length);
        for (int i9 = 0; i9 != privateKeyArr.length; i9++) {
            arrayList.add(privateKeyArr[i9]);
        }
        this.keys = Collections.unmodifiableList(arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CompositePrivateKey) {
            return this.keys.equals(((CompositePrivateKey) obj).keys);
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "Composite";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        f fVar = new f();
        for (int i9 = 0; i9 != this.keys.size(); i9++) {
            fVar.a(d.y(this.keys.get(i9).getEncoded()));
        }
        try {
            return new d(new a(dj.a.N), new a1(fVar)).u("DER");
        } catch (IOException e10) {
            throw new IllegalStateException("unable to encode composite key: " + e10.getMessage());
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public List<PrivateKey> getPrivateKeys() {
        return this.keys;
    }

    public int hashCode() {
        return this.keys.hashCode();
    }
}
