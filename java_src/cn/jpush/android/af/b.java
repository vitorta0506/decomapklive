package cn.jpush.android.af;

import android.text.TextUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2895a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static ConcurrentHashMap<String, ThreadLocal<SimpleDateFormat>> f2896b = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends ThreadLocal<SimpleDateFormat> {

        /* renamed from: a  reason: collision with root package name */
        private String f2897a;

        a(String str) {
            this.f2897a = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat(this.f2897a, Locale.ENGLISH);
        }
    }

    public static SimpleDateFormat a(String str) {
        ThreadLocal<SimpleDateFormat> threadLocal = f2896b.get(str);
        if (threadLocal == null) {
            synchronized (f2895a) {
                threadLocal = f2896b.get(str);
                if (threadLocal == null) {
                    threadLocal = new a(str);
                    f2896b.put(str, threadLocal);
                }
            }
        }
        return threadLocal.get();
    }

    public static boolean a(long j10, long j11) {
        try {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
            Long valueOf = Long.valueOf(j10);
            Long valueOf2 = Long.valueOf(j11);
            String format = simpleDateFormat.format(valueOf);
            String format2 = simpleDateFormat2.format(valueOf2);
            Date parse = simpleDateFormat.parse(format);
            Date parse2 = simpleDateFormat2.parse(format2);
            calendar.setTime(parse);
            calendar2.setTime(parse2);
            if (calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1)) {
                return calendar.get(6) == calendar2.get(6);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static long b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        try {
            return a("yyyy-MM-dd HH:mm:ss").parse(str).getTime();
        } catch (ParseException unused) {
            return -1L;
        }
    }
}
