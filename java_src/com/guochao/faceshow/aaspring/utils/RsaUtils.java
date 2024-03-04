package com.guochao.faceshow.aaspring.utils;

import com.tencent.xmagic.license.RSAUtils;
import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
/* loaded from: classes3.dex */
public class RsaUtils {
    private static final int INITIALIZE_LENGTH = 1024;
    private static final String KEY_ALGORITHM = "RSA/ECB/PKCS1Padding";
    private static final int MAX_DECRYPT_BLOCK = 128;
    private static final int MAX_ENCRYPT_BLOCK = 117;
    public static final String publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDecb942lrj0FoBeILmahxRKRMj57Za8JHmlkLgBo1X5tAS8iAwzSByk3Q5aXzMRynNPSrIRaXY0Eixb8mQVw/WChmO4N742o5WM2p7FSn+LnLli9hvIFrSP1F4wyHRNsAuiZhd503hMvmkD/UxRjr1BmSAChtNxbGK1NSsDnBaoQIDAQAB";

    public static String decodeByPrivateKey(String str, RSAPrivateKey rSAPrivateKey) throws Exception {
        Cipher cipher = Cipher.getInstance(KEY_ALGORITHM);
        cipher.init(2, rSAPrivateKey);
        return new String(decodec(cipher, Base64.decode(str)));
    }

    public static String decodeByPublicKey(String str, RSAPublicKey rSAPublicKey) throws Exception {
        Cipher cipher = Cipher.getInstance(KEY_ALGORITHM);
        cipher.init(2, rSAPublicKey);
        return new String(decodec(cipher, Base64.decode(str)));
    }

    private static byte[] decodec(Cipher cipher, byte[] bArr) throws Exception {
        byte[] doFinal;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i9 = 0;
        int i10 = 0;
        while (bArr.length > i9) {
            if (bArr.length - i9 > 128) {
                doFinal = cipher.doFinal(bArr, i9, 128);
            } else {
                doFinal = cipher.doFinal(bArr, i9, bArr.length - i9);
            }
            byteArrayOutputStream.write(doFinal, 0, doFinal.length);
            i10++;
            i9 = i10 * 128;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    public static String encodeByPrivateKey(String str, RSAPrivateKey rSAPrivateKey) throws Exception {
        Cipher cipher = Cipher.getInstance(KEY_ALGORITHM);
        cipher.init(1, rSAPrivateKey);
        return Base64.encode(encodec(cipher, str.getBytes(StandardCharsets.UTF_8)));
    }

    public static String encodeByPublicKey(String str, RSAPublicKey rSAPublicKey) throws Exception {
        Cipher cipher = Cipher.getInstance(KEY_ALGORITHM);
        cipher.init(1, rSAPublicKey);
        return Base64.encode(encodec(cipher, str.getBytes(StandardCharsets.UTF_8)));
    }

    private static byte[] encodec(Cipher cipher, byte[] bArr) throws Exception {
        byte[] doFinal;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i9 = 0;
        int i10 = 0;
        while (bArr.length > i9) {
            if (bArr.length - i9 > 117) {
                doFinal = cipher.doFinal(bArr, i9, 117);
            } else {
                doFinal = cipher.doFinal(bArr, i9, bArr.length - i9);
            }
            byteArrayOutputStream.write(doFinal, 0, doFinal.length);
            i10++;
            i9 = i10 * 117;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    public static RSAPrivateKey getRsaPrivateKey(String str) throws Exception {
        return (RSAPrivateKey) KeyFactory.getInstance(RSAUtils.RSA).generatePrivate(new PKCS8EncodedKeySpec(Base64.decode(str)));
    }

    public static RSAPublicKey getRsaPublicKey(String str) throws Exception {
        return (RSAPublicKey) KeyFactory.getInstance(RSAUtils.RSA).generatePublic(new X509EncodedKeySpec(Base64.decode(str)));
    }
}
