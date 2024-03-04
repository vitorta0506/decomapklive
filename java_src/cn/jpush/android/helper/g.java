package cn.jpush.android.helper;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static long f3101a = 1;

    public static long a() {
        long j10 = f3101a + 1;
        f3101a = j10;
        if (j10 >= 2147483647L) {
            f3101a = 1L;
        }
        return f3101a;
    }
}
