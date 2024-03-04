package cn.jiguang.f;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2573b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static ConcurrentHashMap<String, ThreadLocal<SimpleDateFormat>> f2574c = new ConcurrentHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    public static String f2572a = "yyyyMMdd_HHmm";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends ThreadLocal<SimpleDateFormat> {

        /* renamed from: a  reason: collision with root package name */
        private String f2575a;

        a(String str) {
            this.f2575a = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat(this.f2575a, Locale.ENGLISH);
        }
    }

    public static long a(int i9) {
        Calendar calendar = Calendar.getInstance();
        calendar.roll(6, i9);
        return calendar.getTime().getTime();
    }

    public static String a() {
        return a("yyyy-MM-dd_HH:mm:ss").format(new Date());
    }

    public static SimpleDateFormat a(String str) {
        ThreadLocal<SimpleDateFormat> threadLocal = f2574c.get(str);
        if (threadLocal == null) {
            synchronized (f2573b) {
                threadLocal = f2574c.get(str);
                if (threadLocal == null) {
                    threadLocal = new a(str);
                    f2574c.put(str, threadLocal);
                }
            }
        }
        return threadLocal.get();
    }
}
