package io.jsonwebtoken.impl.crypto;

import io.jsonwebtoken.security.SignatureException;
/* loaded from: classes6.dex */
public interface Signer {
    byte[] sign(byte[] bArr) throws SignatureException;
}
