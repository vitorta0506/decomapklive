package com.meizu.cloud.pushsdk.util;

import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.tencent.xmagic.license.RSAUtils;
import java.nio.charset.Charset;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f28812a = Charset.forName("UTF-8");

    public static String a(String str, String str2) {
        if (str != null) {
            try {
                if (TextUtils.isEmpty(str2)) {
                    return null;
                }
                return new String(a(a(str), b(str2)), f28812a);
            } catch (Exception e10) {
                DebugLogger.e("RSAUtils", "decrypt " + e10.getMessage());
                return null;
            }
        }
        return null;
    }

    private static RSAPublicKey a(String str) {
        StringBuilder sb2;
        String message;
        try {
            return (RSAPublicKey) KeyFactory.getInstance(RSAUtils.RSA).generatePublic(new X509EncodedKeySpec(b(str)));
        } catch (NoSuchAlgorithmException e10) {
            sb2 = new StringBuilder();
            sb2.append("loadPublicKey NoSuchAlgorithmException ");
            message = e10.getMessage();
            sb2.append(message);
            DebugLogger.e("RSAUtils", sb2.toString());
            return null;
        } catch (InvalidKeySpecException e11) {
            sb2 = new StringBuilder();
            sb2.append("loadPublicKey InvalidKeySpecException ");
            message = e11.getMessage();
            sb2.append(message);
            DebugLogger.e("RSAUtils", sb2.toString());
            return null;
        }
    }

    private static byte[] a(PublicKey publicKey, byte[] bArr) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(2, publicKey);
        return cipher.doFinal(bArr);
    }

    private static byte[] b(String str) {
        return com.meizu.cloud.pushsdk.c.g.a.a(str);
    }
}
