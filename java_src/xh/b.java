package xh;

import java.util.Objects;
import vh.d;
/* loaded from: classes7.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final d<Object, Object> f59953a = new a();

    /* loaded from: classes7.dex */
    static final class a implements d<Object, Object> {
        a() {
        }

        @Override // vh.d
        public boolean test(Object obj, Object obj2) {
            return b.c(obj, obj2);
        }
    }

    public static int a(int i9, int i10) {
        if (i9 < i10) {
            return -1;
        }
        return i9 > i10 ? 1 : 0;
    }

    public static int b(long j10, long j11) {
        int i9 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        return i9 > 0 ? 1 : 0;
    }

    public static boolean c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <T> d<T, T> d() {
        return (d<T, T>) f59953a;
    }

    public static <T> T e(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    public static int f(int i9, String str) {
        if (i9 > 0) {
            return i9;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i9);
    }

    public static long g(long j10, String str) {
        if (j10 > 0) {
            return j10;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j10);
    }
}
