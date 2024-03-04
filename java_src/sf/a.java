package sf;

import com.tencent.xmagic.license.LicenceCheck;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f57885a = {100, 23, 84, 114, 72, 0, 4, 97, 73, 97, 2, 52, 84, 102, 18, 32};

    private static Cipher a(byte[] bArr, int i9) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(f57885a);
        Cipher cipher = Cipher.getInstance(LicenceCheck.AES_DECODE_ALGORITHM);
        cipher.init(i9, secretKeySpec, ivParameterSpec);
        return cipher;
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        return a(bArr, 2).doFinal(bArr2);
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        return a(bArr, 1).doFinal(bArr2);
    }
}
