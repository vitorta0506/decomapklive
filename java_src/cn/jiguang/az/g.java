package cn.jiguang.az;

import android.content.Context;
import android.os.Message;
import android.os.SystemClock;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static volatile g f2308a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2309b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private Context f2310c;

    /* renamed from: d  reason: collision with root package name */
    private cn.jiguang.bd.a f2311d = new cn.jiguang.bd.a() { // from class: cn.jiguang.az.g.1
        @Override // cn.jiguang.bd.a
        public void a(Message message) {
            cn.jiguang.as.d.c("PeriodWorker", "time is up, next period=" + (h.a().g() * 1000));
            g gVar = g.this;
            gVar.c(gVar.f2310c);
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private long f2312e;

    private g() {
    }

    public static g a() {
        if (f2308a == null) {
            synchronized (f2309b) {
                if (f2308a == null) {
                    f2308a = new g();
                }
            }
        }
        return f2308a;
    }

    private void b(Context context) {
        this.f2312e = SystemClock.elapsedRealtime();
        if (((Boolean) cn.jiguang.g.b.a(context, cn.jiguang.g.a.A())).booleanValue()) {
            a.a(context);
        } else {
            a.b(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context) {
        cn.jiguang.as.d.c("PeriodWorker", "periodTask...");
        b(context);
        cn.jiguang.a.a.a(context, false, 0L);
        b.a().a(context, 19, 0, "periodTask");
        e.a(context, "periodtask", null);
        cn.jiguang.b.a.a(context);
        cn.jiguang.ar.b.a(context);
    }

    public void a(Context context) {
        this.f2310c = context;
        cn.jiguang.bd.b.a().a(8000, h.a().f() * 1000, this.f2311d);
    }

    public void a(Context context, boolean z10) {
        cn.jiguang.as.d.e("PeriodWorker", "PeriodWorker resume");
        if (this.f2312e > 0 && SystemClock.elapsedRealtime() > this.f2312e + ((h.a().f() + 5) * 1000)) {
            cn.jiguang.as.d.e("PeriodWorker", "schedule time is expired, execute now");
            a(context);
            c(context);
        } else if (!z10) {
            cn.jiguang.as.d.c("PeriodWorker", "need not change period task");
        } else {
            a(context);
            b(context);
        }
    }

    public void b() {
        this.f2312e = SystemClock.elapsedRealtime();
        a.a(this.f2310c);
        cn.jiguang.bd.b.a().a(8000, h.a().f() * 1000, this.f2311d);
    }
}
