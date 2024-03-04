package ck;

import java.io.IOException;
import java.security.Principal;
import mj.c;
import oj.b0;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class b extends b0 implements Principal {
    public b(c cVar) {
        super((s) cVar.f());
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.util.c
    public byte[] getEncoded() {
        try {
            return u("DER");
        } catch (IOException e10) {
            throw new RuntimeException(e10.toString());
        }
    }

    @Override // java.security.Principal
    public String getName() {
        return toString();
    }
}
