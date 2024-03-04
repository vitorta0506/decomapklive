package cn.jpush.android.v;

import android.content.Context;
import android.os.Message;
import android.os.SystemClock;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f3400a;

    /* renamed from: b  reason: collision with root package name */
    private static AtomicInteger f3401b = new AtomicInteger(0);

    /* renamed from: c  reason: collision with root package name */
    private long f3402c = 0;

    /* renamed from: d  reason: collision with root package name */
    private f f3403d = new f() { // from class: cn.jpush.android.v.d.1
        @Override // cn.jpush.android.v.f
        public void a(Message message) {
            Logger.d("InAppPeriodWorker", "time is up, next period=" + c.a().d());
            d.this.d(JPushConstants.mApplicationContext);
        }
    };

    private d() {
    }

    public static d a() {
        if (f3400a == null) {
            synchronized (d.class) {
                if (f3400a == null) {
                    f3400a = new d();
                }
            }
        }
        return f3400a;
    }

    private void b(Context context) {
        g.a().a(8000, c.a().c() * 1000, this.f3403d);
    }

    private void c(Context context) {
        this.f3402c = SystemClock.elapsedRealtime();
        if (cn.jpush.android.cache.a.d(context)) {
            return;
        }
        c.a().b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context) {
        Logger.d("InAppPeriodWorker", "periodTask...");
        c(context);
        c.a().a(context, "tcp_rtc", false, 0L);
    }

    public void a(Context context) {
        if (g.a().a(8000)) {
            g.a().b(8000);
        }
    }

    public void a(Context context, boolean z10) {
        Logger.i("InAppPeriodWorker", "PeriodWorker resume, reset: " + z10);
        if (this.f3402c > 0 && SystemClock.elapsedRealtime() > this.f3402c + ((c.a().c() + 5) * 1000)) {
            Logger.i("InAppPeriodWorker", "schedule time is expired, execute now");
            b(context);
            d(context);
        } else if (!z10) {
            Logger.d("InAppPeriodWorker", "need not change period task");
        } else {
            Logger.i("InAppPeriodWorker", "force reset init send task and update interval...");
            b(context);
            c(context);
        }
    }

    public void b() {
        this.f3402c = SystemClock.elapsedRealtime();
        g.a().a(8000, c.a().c() * 1000, this.f3403d);
    }
}
