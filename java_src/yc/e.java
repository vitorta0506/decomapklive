package yc;

import androidx.annotation.NonNull;
import java.security.SecureRandom;
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60164a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f60165b;

    /* renamed from: c  reason: collision with root package name */
    private static final String f60166c;

    /* renamed from: d  reason: collision with root package name */
    private static final String f60167d;

    /* renamed from: e  reason: collision with root package name */
    private static final String f60168e;

    /* renamed from: f  reason: collision with root package name */
    private static final SecureRandom f60169f;

    static {
        String c10 = c('a', 'z');
        f60164a = c10;
        String c11 = c('A', 'Z');
        f60165b = c11;
        String c12 = c('0', '9');
        f60166c = c12;
        String str = c10 + c11;
        f60167d = str;
        f60168e = str + c12;
        f60169f = new SecureRandom();
    }

    @NonNull
    public static String a(int i9) {
        return b(f60168e, i9);
    }

    @NonNull
    public static String b(String str, int i9) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < i9; i10++) {
            sb2.append(str.charAt(f60169f.nextInt(str.length())));
        }
        return sb2.toString();
    }

    @NonNull
    public static String c(char c10, char c11) {
        StringBuilder sb2 = new StringBuilder();
        while (c10 <= c11) {
            sb2.append(c10);
            c10 = (char) (c10 + 1);
        }
        return sb2.toString();
    }
}
