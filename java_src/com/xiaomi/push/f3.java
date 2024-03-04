package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class f3 {

    /* renamed from: e  reason: collision with root package name */
    private static volatile f3 f36874e;

    /* renamed from: a  reason: collision with root package name */
    private ScheduledThreadPoolExecutor f36875a = new ScheduledThreadPoolExecutor(1);

    /* renamed from: b  reason: collision with root package name */
    private Map<String, ScheduledFuture> f36876b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private Object f36877c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private SharedPreferences f36878d;

    /* loaded from: classes5.dex */
    public static abstract class a implements Runnable {
        public abstract String b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        a f36879a;

        public b(a aVar) {
            this.f36879a = aVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
        }

        void c() {
            throw null;
        }

        @Override // java.lang.Runnable
        public void run() {
            b();
            this.f36879a.run();
            c();
        }
    }

    private f3(Context context) {
        this.f36878d = context.getSharedPreferences("mipush_extra", 0);
    }

    public static f3 b(Context context) {
        if (f36874e == null) {
            synchronized (f3.class) {
                if (f36874e == null) {
                    f36874e = new f3(context);
                }
            }
        }
        return f36874e;
    }

    private static String d(String str) {
        return "last_job_time" + str;
    }

    private ScheduledFuture f(a aVar) {
        ScheduledFuture scheduledFuture;
        synchronized (this.f36877c) {
            scheduledFuture = this.f36876b.get(aVar.b());
        }
        return scheduledFuture;
    }

    public void g(Runnable runnable) {
        h(runnable, 0);
    }

    public void h(Runnable runnable, int i9) {
        this.f36875a.schedule(runnable, i9, TimeUnit.SECONDS);
    }

    public boolean i(a aVar, int i9) {
        return j(aVar, i9, 0);
    }

    public boolean j(a aVar, int i9, int i10) {
        return k(aVar, i9, i10, false);
    }

    public boolean k(a aVar, int i9, int i10, boolean z10) {
        if (aVar == null || f(aVar) != null) {
            return false;
        }
        String d10 = d(aVar.b());
        g3 g3Var = new g3(this, aVar, z10, d10);
        if (!z10) {
            long abs = Math.abs(System.currentTimeMillis() - this.f36878d.getLong(d10, 0L)) / 1000;
            if (abs < i9 - i10) {
                i10 = (int) (i9 - abs);
            }
        }
        try {
            ScheduledFuture<?> scheduleAtFixedRate = this.f36875a.scheduleAtFixedRate(g3Var, i10, i9, TimeUnit.SECONDS);
            synchronized (this.f36877c) {
                this.f36876b.put(aVar.b(), scheduleAtFixedRate);
            }
            return true;
        } catch (Exception e10) {
            tf.c.o(e10);
            return true;
        }
    }

    public boolean l(String str) {
        synchronized (this.f36877c) {
            ScheduledFuture scheduledFuture = this.f36876b.get(str);
            if (scheduledFuture == null) {
                return false;
            }
            this.f36876b.remove(str);
            return scheduledFuture.cancel(false);
        }
    }

    public boolean m(a aVar, int i9) {
        if (aVar == null || f(aVar) != null) {
            return false;
        }
        ScheduledFuture<?> schedule = this.f36875a.schedule(new h3(this, aVar), i9, TimeUnit.SECONDS);
        synchronized (this.f36877c) {
            this.f36876b.put(aVar.b(), schedule);
        }
        return true;
    }
}
