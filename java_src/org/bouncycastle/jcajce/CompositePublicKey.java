package org.bouncycastle.jcajce;

import java.io.IOException;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import oj.a;
import oj.v;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.f;
/* loaded from: classes7.dex */
public class CompositePublicKey implements PublicKey {
    private final List<PublicKey> keys;

    public CompositePublicKey(PublicKey... publicKeyArr) {
        if (publicKeyArr == null || publicKeyArr.length == 0) {
            throw new IllegalArgumentException("at least one public key must be provided");
        }
        ArrayList arrayList = new ArrayList(publicKeyArr.length);
        for (int i9 = 0; i9 != publicKeyArr.length; i9++) {
            arrayList.add(publicKeyArr[i9]);
        }
        this.keys = Collections.unmodifiableList(arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CompositePublicKey) {
            return this.keys.equals(((CompositePublicKey) obj).keys);
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
            fVar.a(v.z(this.keys.get(i9).getEncoded()));
        }
        try {
            return new v(new a(dj.a.N), new a1(fVar)).u("DER");
        } catch (IOException e10) {
            throw new IllegalStateException("unable to encode composite key: " + e10.getMessage());
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public List<PublicKey> getPublicKeys() {
        return this.keys;
    }

    public int hashCode() {
        return this.keys.hashCode();
    }
}
