package z;

import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static a f60290a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static d f60291b = new f();

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Set<Integer> f60292a = new HashSet();

        boolean a(int i9) {
            return this.f60292a.contains(Integer.valueOf(i9));
        }
    }

    public static int a(String str, String str2) {
        return f60291b.d(str, str2);
    }

    public static int b(String str, String str2, int i9) {
        if (f60290a.a(i9)) {
            return a(str, str2);
        }
        return 0;
    }

    public static int c(String str, String str2) {
        return f60291b.e(str, str2);
    }

    public static int d(String str, String str2) {
        return f60291b.i(str, str2);
    }

    public static int e(String str, String str2, int i9) {
        if (f60290a.a(i9)) {
            return d(str, str2);
        }
        return 0;
    }

    public static int f(String str, String str2) {
        return f60291b.w(str, str2);
    }
}
