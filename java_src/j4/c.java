package j4;

import android.util.Base64;
import java.util.Random;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Random f53150a = new Random();

    public static String a() {
        byte[] bArr = new byte[16];
        f53150a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
