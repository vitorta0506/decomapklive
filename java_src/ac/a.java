package ac;

import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import bc.c;
import bc.f;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, SecretKey> f726a = new HashMap();

    private static SecretKey a(String str) {
        f.d("GCMKS", "load key");
        SecretKey secretKey = null;
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            Key key = keyStore.getKey(str, null);
            if (key instanceof SecretKey) {
                secretKey = (SecretKey) key;
            } else {
                f.d("GCMKS", "generate key");
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                keyGenerator.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).build());
                secretKey = keyGenerator.generateKey();
            }
        } catch (IOException e10) {
            f.c("GCMKS", "IOException : " + e10.getMessage());
        } catch (InvalidAlgorithmParameterException e11) {
            f.c("GCMKS", "InvalidAlgorithmParameterException : " + e11.getMessage());
        } catch (KeyStoreException e12) {
            f.c("GCMKS", "KeyStoreException : " + e12.getMessage());
        } catch (NoSuchAlgorithmException e13) {
            f.c("GCMKS", "NoSuchAlgorithmException : " + e13.getMessage());
        } catch (NoSuchProviderException e14) {
            f.c("GCMKS", "NoSuchProviderException : " + e14.getMessage());
        } catch (UnrecoverableKeyException e15) {
            f.c("GCMKS", "UnrecoverableKeyException : " + e15.getMessage());
        } catch (CertificateException e16) {
            f.c("GCMKS", "CertificateException : " + e16.getMessage());
        } catch (Exception e17) {
            f.c("GCMKS", "Exception: " + e17.getMessage());
        }
        f726a.put(str, secretKey);
        return secretKey;
    }

    private static boolean b() {
        return Build.VERSION.SDK_INT >= 23;
    }

    private static SecretKey c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (f726a.get(str) == null) {
            a(str);
        }
        return f726a.get(str);
    }

    public static String d(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                return new String(e(str, c.b(str2)), "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                f.c("GCMKS", "decrypt: UnsupportedEncodingException : " + e10.getMessage());
                return "";
            }
        }
        f.c("GCMKS", "alias or encrypt content is null");
        return "";
    }

    public static byte[] e(String str, byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (!TextUtils.isEmpty(str) && bArr != null) {
            if (!b()) {
                f.c("GCMKS", "sdk version is too low");
                return bArr2;
            } else if (bArr.length <= 12) {
                f.c("GCMKS", "Decrypt source data is invalid.");
                return bArr2;
            } else {
                return f(c(str), bArr);
            }
        }
        f.c("GCMKS", "alias or encrypt content is null");
        return bArr2;
    }

    public static byte[] f(SecretKey secretKey, byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (secretKey == null) {
            f.c("GCMKS", "Decrypt secret key is null");
            return bArr2;
        } else if (bArr == null) {
            f.c("GCMKS", "content is null");
            return bArr2;
        } else if (!b()) {
            f.c("GCMKS", "sdk version is too low");
            return bArr2;
        } else if (bArr.length <= 12) {
            f.c("GCMKS", "Decrypt source data is invalid.");
            return bArr2;
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, 12);
            try {
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(2, secretKey, new GCMParameterSpec(128, copyOf));
                return cipher.doFinal(bArr, 12, bArr.length - 12);
            } catch (InvalidAlgorithmParameterException e10) {
                f.c("GCMKS", "InvalidAlgorithmParameterException : " + e10.getMessage());
                return bArr2;
            } catch (InvalidKeyException e11) {
                f.c("GCMKS", "InvalidKeyException : " + e11.getMessage());
                return bArr2;
            } catch (NoSuchAlgorithmException e12) {
                f.c("GCMKS", "NoSuchAlgorithmException : " + e12.getMessage());
                return bArr2;
            } catch (BadPaddingException e13) {
                f.c("GCMKS", "BadPaddingException : " + e13.getMessage());
                return bArr2;
            } catch (IllegalBlockSizeException e14) {
                f.c("GCMKS", "IllegalBlockSizeException : " + e14.getMessage());
                return bArr2;
            } catch (NoSuchPaddingException e15) {
                f.c("GCMKS", "NoSuchPaddingException : " + e15.getMessage());
                return bArr2;
            } catch (Exception e16) {
                f.c("GCMKS", "Exception: " + e16.getMessage());
                return bArr2;
            }
        }
    }

    public static String g(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                return c.a(h(str, str2.getBytes("UTF-8")));
            } catch (UnsupportedEncodingException e10) {
                f.c("GCMKS", "encrypt: UnsupportedEncodingException : " + e10.getMessage());
                return "";
            }
        }
        f.c("GCMKS", "alias or encrypt content is null");
        return "";
    }

    public static byte[] h(String str, byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (!TextUtils.isEmpty(str) && bArr != null) {
            if (!b()) {
                f.c("GCMKS", "sdk version is too low");
                return bArr2;
            }
            return i(c(str), bArr);
        }
        f.c("GCMKS", "alias or encrypt content is null");
        return bArr2;
    }

    public static byte[] i(SecretKey secretKey, byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (bArr == null) {
            f.c("GCMKS", "content is null");
            return bArr2;
        } else if (secretKey == null) {
            f.c("GCMKS", "secret key is null");
            return bArr2;
        } else if (!b()) {
            f.c("GCMKS", "sdk version is too low");
            return bArr2;
        } else {
            try {
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, secretKey);
                byte[] doFinal = cipher.doFinal(bArr);
                byte[] iv = cipher.getIV();
                if (iv != null && iv.length == 12) {
                    byte[] copyOf = Arrays.copyOf(iv, iv.length + doFinal.length);
                    System.arraycopy(doFinal, 0, copyOf, iv.length, doFinal.length);
                    return copyOf;
                }
                f.c("GCMKS", "IV is invalid.");
                return bArr2;
            } catch (InvalidKeyException e10) {
                f.c("GCMKS", "InvalidKeyException : " + e10.getMessage());
                return bArr2;
            } catch (NoSuchAlgorithmException e11) {
                f.c("GCMKS", "NoSuchAlgorithmException : " + e11.getMessage());
                return bArr2;
            } catch (BadPaddingException e12) {
                f.c("GCMKS", "BadPaddingException : " + e12.getMessage());
                return bArr2;
            } catch (IllegalBlockSizeException e13) {
                f.c("GCMKS", "IllegalBlockSizeException : " + e13.getMessage());
                return bArr2;
            } catch (NoSuchPaddingException e14) {
                f.c("GCMKS", "NoSuchPaddingException : " + e14.getMessage());
                return bArr2;
            } catch (Exception e15) {
                f.c("GCMKS", "Exception: " + e15.getMessage());
                return bArr2;
            }
        }
    }
}
