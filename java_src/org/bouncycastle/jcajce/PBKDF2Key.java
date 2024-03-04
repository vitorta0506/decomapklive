package org.bouncycastle.jcajce;

import org.bouncycastle.crypto.b;
import org.bouncycastle.util.a;
/* loaded from: classes7.dex */
public class PBKDF2Key implements PBKDFKey {
    private final b converter;
    private final char[] password;

    public PBKDF2Key(char[] cArr, b bVar) {
        this.password = a.f(cArr);
        this.converter = bVar;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "PBKDF2";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return this.converter.convert(this.password);
    }

    @Override // java.security.Key
    public String getFormat() {
        return this.converter.getType();
    }

    public char[] getPassword() {
        return this.password;
    }
}
