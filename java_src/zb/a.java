package zb;

import android.os.Build;
import bc.f;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60423a = "PBKDF2";

    private static byte[] a(char[] cArr, byte[] bArr, int i9, int i10, boolean z10) {
        SecretKeyFactory secretKeyFactory;
        try {
            PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr, bArr, i9, i10);
            if (z10) {
                secretKeyFactory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
            } else {
                secretKeyFactory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
            }
            return secretKeyFactory.generateSecret(pBEKeySpec).getEncoded();
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e10) {
            String str = f60423a;
            f.c(str, "pbkdf exception : " + e10.getMessage());
            return new byte[0];
        }
    }

    public static byte[] b(char[] cArr, byte[] bArr, int i9, int i10) {
        return a(cArr, bArr, i9, i10, false);
    }

    public static byte[] c(char[] cArr, byte[] bArr, int i9, int i10) {
        byte[] bArr2 = new byte[0];
        if (Build.VERSION.SDK_INT < 26) {
            f.c(f60423a, "system version not high than 26");
            return bArr2;
        }
        return a(cArr, bArr, i9, i10, true);
    }
}
