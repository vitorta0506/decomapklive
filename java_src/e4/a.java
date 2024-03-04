package e4;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2.dex */
public class a {
    @Nullable
    @Deprecated
    public static byte[] a(@NonNull Context context, @NonNull String str) throws PackageManager.NameNotFoundException {
        MessageDigest b10;
        PackageInfo e10 = g4.c.a(context).e(str, 64);
        Signature[] signatureArr = e10.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (b10 = b("SHA1")) == null) {
            return null;
        }
        return b10.digest(e10.signatures[0].toByteArray());
    }

    @Nullable
    public static MessageDigest b(@NonNull String str) {
        MessageDigest messageDigest;
        for (int i9 = 0; i9 < 2; i9++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }
}
