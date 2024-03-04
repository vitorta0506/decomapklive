package yb;

import android.text.TextUtils;
import bc.b;
import bc.c;
import bc.f;
import com.tencent.xmagic.license.LicenceCheck;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
public final class a {
    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return str.substring(0, 6) + str.substring(12, 16) + str.substring(26, 32) + str.substring(48);
        } catch (Exception e10) {
            f.c("CBC", "get encryptword exception : " + e10.getMessage());
            return "";
        }
    }

    private static String b(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                return str2.substring(0, 6) + str.substring(0, 6) + str2.substring(6, 10) + str.substring(6, 16) + str2.substring(10, 16) + str.substring(16) + str2.substring(16);
            } catch (Exception e10) {
                f.c("CBC", "mix exception: " + e10.getMessage());
            }
        }
        return "";
    }

    private static byte[] c(String str, byte[] bArr, byte[] bArr2) {
        if (TextUtils.isEmpty(str)) {
            f.c("CBC", "encrypt 5 content is null");
            return new byte[0];
        } else if (bArr == null) {
            f.c("CBC", "encrypt 5 key is null");
            return new byte[0];
        } else if (bArr.length < 16) {
            f.c("CBC", "encrypt 5 key lengh is not right");
            return new byte[0];
        } else if (bArr2 == null) {
            f.c("CBC", "encrypt 5 iv is null");
            return new byte[0];
        } else if (bArr2.length < 16) {
            f.c("CBC", "encrypt 5 iv lengh is not right");
            return new byte[0];
        } else {
            try {
                return m(str.getBytes("UTF-8"), bArr, bArr2);
            } catch (UnsupportedEncodingException e10) {
                f.c("CBC", " cbc encrypt data error" + e10.getMessage());
                return new byte[0];
            }
        }
    }

    private static byte[] d(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    private static String e(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return str.substring(6, 12) + str.substring(16, 26) + str.substring(32, 48);
        } catch (Exception e10) {
            f.c("CBC", "getIv exception : " + e10.getMessage());
            return "";
        }
    }

    public static String f(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            f.c("CBC", "decrypt 1 content is null");
            return "";
        } else if (TextUtils.isEmpty(str2)) {
            f.c("CBC", "decrypt 1 key is null");
            return "";
        } else {
            byte[] b10 = c.b(str2);
            if (b10.length < 16) {
                f.c("CBC", "decrypt 1 key length is not right");
                return "";
            }
            return g(str, b10);
        }
    }

    public static String g(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str)) {
            f.c("CBC", "decrypt 2 content is null");
            return "";
        } else if (bArr == null) {
            f.c("CBC", "decrypt 2 key is null");
            return "";
        } else if (bArr.length < 16) {
            f.c("CBC", "decrypt 2 key lengh is not right");
            return "";
        } else {
            String e10 = e(str);
            String a10 = a(str);
            if (TextUtils.isEmpty(e10)) {
                f.c("CBC", "decrypt 2 iv is null");
                return "";
            } else if (TextUtils.isEmpty(a10)) {
                f.c("CBC", "decrypt 2 encrypt content is null");
                return "";
            } else {
                return h(a10, bArr, c.b(e10));
            }
        }
    }

    public static String h(String str, byte[] bArr, byte[] bArr2) {
        if (TextUtils.isEmpty(str)) {
            f.c("CBC", "decrypt 4 content is null");
            return "";
        } else if (bArr == null) {
            f.c("CBC", "decrypt 4 key is null");
            return "";
        } else if (bArr.length < 16) {
            f.c("CBC", "decrypt 4 key lengh is not right");
            return "";
        } else if (bArr2 == null) {
            f.c("CBC", "decrypt 4 iv is null");
            return "";
        } else if (bArr2.length < 16) {
            f.c("CBC", "decrypt 4 iv lengh is not right");
            return "";
        } else {
            try {
                return new String(i(c.b(str), bArr, bArr2), "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                f.c("CBC", " cbc decrypt data error" + e10.getMessage());
                return "";
            }
        }
    }

    public static byte[] i(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            f.c("CBC", "decrypt 6 content is null");
            return new byte[0];
        } else if (bArr.length == 0) {
            f.c("CBC", "decrypt 6 content length is 0");
            return new byte[0];
        } else if (bArr2 == null) {
            f.c("CBC", "decrypt 6 key is null");
            return new byte[0];
        } else if (bArr2.length < 16) {
            f.c("CBC", "decrypt 6 key length is error");
            return new byte[0];
        } else if (bArr3 == null) {
            f.c("CBC", "decrypt 6 iv is null");
            return new byte[0];
        } else if (bArr3.length < 16) {
            f.c("CBC", "decrypt 6 iv length is error");
            return new byte[0];
        } else {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            try {
                Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
                cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
                return cipher.doFinal(bArr);
            } catch (InvalidAlgorithmParameterException e10) {
                f.c("CBC", "InvalidAlgorithmParameterException: " + e10.getMessage());
                return new byte[0];
            } catch (InvalidKeyException e11) {
                f.c("CBC", "InvalidKeyException: " + e11.getMessage());
                return new byte[0];
            } catch (NoSuchAlgorithmException e12) {
                f.c("CBC", "NoSuchAlgorithmException: " + e12.getMessage());
                return new byte[0];
            } catch (BadPaddingException e13) {
                f.c("CBC", "BadPaddingException: " + e13.getMessage());
                f.c("CBC", "key is not right");
                return new byte[0];
            } catch (IllegalBlockSizeException e14) {
                f.c("CBC", "IllegalBlockSizeException: " + e14.getMessage());
                return new byte[0];
            } catch (NoSuchPaddingException e15) {
                f.c("CBC", "NoSuchPaddingException: " + e15.getMessage());
                return new byte[0];
            }
        }
    }

    public static String j(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            f.c("CBC", "encrypt 1 content is null");
            return "";
        } else if (TextUtils.isEmpty(str2)) {
            f.c("CBC", "encrypt 1 key is null");
            return "";
        } else {
            byte[] b10 = c.b(str2);
            if (b10.length < 16) {
                f.c("CBC", "encrypt 1 key length is not right");
                return "";
            }
            return k(str, b10);
        }
    }

    public static String k(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str)) {
            f.c("CBC", "encrypt 2 content is null");
            return "";
        } else if (bArr == null) {
            f.c("CBC", "encrypt 2 key is null");
            return "";
        } else if (bArr.length < 16) {
            f.c("CBC", "encrypt 2 key lengh is not right");
            return "";
        } else {
            byte[] c10 = b.c(16);
            byte[] c11 = c(str, bArr, c10);
            return (c11 == null || c11.length == 0) ? "" : b(c.a(c10), c.a(c11));
        }
    }

    public static byte[] l(byte[] bArr, byte[] bArr2) {
        byte[] c10 = b.c(16);
        return d(c10, m(bArr, bArr2, c10));
    }

    public static byte[] m(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            f.c("CBC", "encrypt 6 content is null");
            return new byte[0];
        } else if (bArr.length == 0) {
            f.c("CBC", "encrypt 6 content length is 0");
            return new byte[0];
        } else if (bArr2 == null) {
            f.c("CBC", "encrypt 6 key is null");
            return new byte[0];
        } else if (bArr2.length < 16) {
            f.c("CBC", "encrypt 6 key length is error");
            return new byte[0];
        } else if (bArr3 == null) {
            f.c("CBC", "encrypt 6 iv is null");
            return new byte[0];
        } else if (bArr3.length < 16) {
            f.c("CBC", "encrypt 6 iv length is error");
            return new byte[0];
        } else {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            try {
                Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
                cipher.init(1, secretKeySpec, new IvParameterSpec(bArr3));
                return cipher.doFinal(bArr);
            } catch (InvalidAlgorithmParameterException e10) {
                f.c("CBC", "InvalidAlgorithmParameterException: " + e10.getMessage());
                return new byte[0];
            } catch (InvalidKeyException e11) {
                f.c("CBC", "InvalidKeyException: " + e11.getMessage());
                return new byte[0];
            } catch (NoSuchAlgorithmException e12) {
                f.c("CBC", "NoSuchAlgorithmException: " + e12.getMessage());
                return new byte[0];
            } catch (BadPaddingException e13) {
                f.c("CBC", "BadPaddingException: " + e13.getMessage());
                return new byte[0];
            } catch (IllegalBlockSizeException e14) {
                f.c("CBC", "IllegalBlockSizeException: " + e14.getMessage());
                return new byte[0];
            } catch (NoSuchPaddingException e15) {
                f.c("CBC", "NoSuchPaddingException: " + e15.getMessage());
                return new byte[0];
            }
        }
    }
}
