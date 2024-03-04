package tb;

import com.tencent.xmagic.license.LicenceCheck;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
class k {
    public static SecretKey a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i9) throws NoSuchAlgorithmException, InvalidKeySpecException {
        if (bArr.length == 16 && bArr2.length == 16 && bArr3.length == 16) {
            return new SecretKeySpec(SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(a.c(e(bArr, bArr2, bArr3)).toCharArray(), bArr4, i9, 128)).getEncoded(), "AES");
        }
        throw new IllegalArgumentException("invalid data for generating the key.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(SecretKey secretKey, byte[] bArr) throws GeneralSecurityException {
        if (secretKey == null || bArr == null) {
            throw new NullPointerException("key or cipherText must not be null.");
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, 1, 17);
        Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
        cipher.init(2, secretKey, new IvParameterSpec(copyOfRange));
        return cipher.doFinal(bArr, copyOfRange.length + 1, (bArr.length - copyOfRange.length) - 1);
    }

    private static byte[] c(byte[] bArr, int i9) {
        Objects.requireNonNull(bArr, "bytes must not be null.");
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (i9 < 0) {
                bArr[i10] = (byte) (bArr[i10] << (-i9));
            } else {
                bArr[i10] = (byte) (bArr[i10] >> i9);
            }
        }
        return bArr;
    }

    private static byte[] d(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            throw new NullPointerException("left or right must not be null.");
        }
        if (bArr.length == bArr2.length) {
            byte[] bArr3 = new byte[bArr.length];
            for (int i9 = 0; i9 < bArr.length; i9++) {
                bArr3[i9] = (byte) (bArr[i9] ^ bArr2[i9]);
            }
            return bArr3;
        }
        throw new IllegalArgumentException("left and right must be the same length.");
    }

    public static byte[] e(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return d(c(d(c(bArr, -4), bArr2), 6), bArr3);
    }
}
