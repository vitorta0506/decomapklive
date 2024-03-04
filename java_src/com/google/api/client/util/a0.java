package com.google.api.client.util;

import com.facebook.internal.security.OidcSecurityUtil;
import com.google.api.client.util.y;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.xmagic.license.RSAUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.PKCS8EncodedKeySpec;
/* loaded from: classes2.dex */
public final class a0 {
    public static KeyStore a(InputStream inputStream) throws GeneralSecurityException, IOException {
        KeyStore keyStore = KeyStore.getInstance("JKS");
        y.a aVar = null;
        keyStore.load(null);
        y yVar = new y(new InputStreamReader(inputStream));
        y.a aVar2 = null;
        while (true) {
            if (aVar != null && aVar2 != null) {
                break;
            }
            y.a c10 = yVar.c();
            if (c10 == null) {
                break;
            } else if (aVar == null && "CERTIFICATE".equals(c10.b())) {
                aVar = c10;
            } else if ("PRIVATE KEY".equals(c10.b())) {
                aVar2 = c10;
            }
        }
        if (aVar != null) {
            if (aVar2 != null) {
                X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(aVar.a()));
                keyStore.setKeyEntry(PushConstants.SUB_ALIAS_STATUS_NAME, KeyFactory.getInstance(x509Certificate.getPublicKey().getAlgorithm()).generatePrivate(new PKCS8EncodedKeySpec(aVar2.a())), new char[0], new X509Certificate[]{x509Certificate});
                return keyStore;
            }
            throw new IllegalArgumentException("private key is missing from certAndKey string");
        }
        throw new IllegalArgumentException("certificate is missing from certAndKey string");
    }

    public static KeyFactory b() throws NoSuchAlgorithmException {
        return KeyFactory.getInstance(RSAUtils.RSA);
    }

    public static Signature c() throws NoSuchAlgorithmException {
        return Signature.getInstance(OidcSecurityUtil.SIGNATURE_ALGORITHM_SHA256);
    }

    public static byte[] d(Signature signature, PrivateKey privateKey, byte[] bArr) throws InvalidKeyException, SignatureException {
        signature.initSign(privateKey);
        signature.update(bArr);
        return signature.sign();
    }
}
