package cn.jiguang.s;

import android.text.TextUtils;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static long f2768a = 1;

    public static long a() {
        long j10 = f2768a + 1;
        f2768a = j10;
        if (j10 >= 2147483647L) {
            f2768a = 1L;
        }
        return f2768a;
    }

    public static byte[] a(long j10, String str) {
        cn.jiguang.t.a aVar = new cn.jiguang.t.a(20480);
        aVar.a(0);
        aVar.a(j10);
        if (str != null && !TextUtils.isEmpty(str)) {
            aVar.a(cn.jiguang.o.d.e(str));
        }
        return aVar.a();
    }
}
