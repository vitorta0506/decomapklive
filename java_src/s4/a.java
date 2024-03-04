package s4;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.internal.stats.zzi;
import e4.g;
import e4.o;
import e4.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import m4.h;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: r  reason: collision with root package name */
    private static final long f57650r = TimeUnit.DAYS.toMillis(366);

    /* renamed from: s  reason: collision with root package name */
    private static volatile ScheduledExecutorService f57651s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final Object f57652t = new Object();

    /* renamed from: u  reason: collision with root package name */
    private static volatile e f57653u = new c();

    /* renamed from: a  reason: collision with root package name */
    private final Object f57654a;
    @GuardedBy("acquireReleaseLock")

    /* renamed from: b  reason: collision with root package name */
    private final PowerManager.WakeLock f57655b;
    @GuardedBy("acquireReleaseLock")

    /* renamed from: c  reason: collision with root package name */
    private int f57656c;
    @GuardedBy("acquireReleaseLock")

    /* renamed from: d  reason: collision with root package name */
    private Future<?> f57657d;
    @GuardedBy("acquireReleaseLock")

    /* renamed from: e  reason: collision with root package name */
    private long f57658e;
    @GuardedBy("acquireReleaseLock")

    /* renamed from: f  reason: collision with root package name */
    private final Set<f> f57659f;
    @GuardedBy("acquireReleaseLock")

    /* renamed from: g  reason: collision with root package name */
    private boolean f57660g;
    @GuardedBy("acquireReleaseLock")

    /* renamed from: h  reason: collision with root package name */
    private int f57661h;
    @GuardedBy("acquireReleaseLock")

    /* renamed from: i  reason: collision with root package name */
    m4.b f57662i;

    /* renamed from: j  reason: collision with root package name */
    private e4.d f57663j;

    /* renamed from: k  reason: collision with root package name */
    private WorkSource f57664k;

    /* renamed from: l  reason: collision with root package name */
    private final String f57665l;

    /* renamed from: m  reason: collision with root package name */
    private final String f57666m;

    /* renamed from: n  reason: collision with root package name */
    private final Context f57667n;
    @GuardedBy("acquireReleaseLock")

    /* renamed from: o  reason: collision with root package name */
    private final Map<String, d> f57668o;

    /* renamed from: p  reason: collision with root package name */
    private AtomicInteger f57669p;

    /* renamed from: q  reason: collision with root package name */
    private final ScheduledExecutorService f57670q;

    public a(@NonNull Context context, int i9, @NonNull String str) {
        String packageName = context.getPackageName();
        this.f57654a = new Object();
        this.f57656c = 0;
        this.f57659f = new HashSet();
        this.f57660g = true;
        this.f57663j = g.c();
        this.f57668o = new HashMap();
        this.f57669p = new AtomicInteger(0);
        p.k(context, "WakeLock: context must not be null");
        p.g(str, "WakeLock: wakeLockName must not be empty");
        this.f57667n = context.getApplicationContext();
        this.f57666m = str;
        this.f57662i = null;
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.f57665l = str;
        } else {
            String valueOf = String.valueOf(str);
            this.f57665l = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager != null) {
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(i9, str);
            this.f57655b = newWakeLock;
            if (q.c(context)) {
                WorkSource b10 = q.b(context, o.a(packageName) ? context.getPackageName() : packageName);
                this.f57664k = b10;
                if (b10 != null) {
                    i(newWakeLock, b10);
                }
            }
            ScheduledExecutorService scheduledExecutorService = f57651s;
            if (scheduledExecutorService == null) {
                synchronized (f57652t) {
                    scheduledExecutorService = f57651s;
                    if (scheduledExecutorService == null) {
                        h.a();
                        scheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
                        f57651s = scheduledExecutorService;
                    }
                }
            }
            this.f57670q = scheduledExecutorService;
            return;
        }
        StringBuilder sb2 = new StringBuilder(29);
        sb2.append((CharSequence) "expected a non-null reference", 0, 29);
        throw new zzi(sb2.toString());
    }

    public static /* synthetic */ void e(@NonNull a aVar) {
        synchronized (aVar.f57654a) {
            if (aVar.b()) {
                Log.e("WakeLock", String.valueOf(aVar.f57665l).concat(" ** IS FORCE-RELEASED ON TIMEOUT **"));
                aVar.g();
                if (aVar.b()) {
                    aVar.f57656c = 1;
                    aVar.h(0);
                }
            }
        }
    }

    @GuardedBy("acquireReleaseLock")
    private final String f(String str) {
        if (this.f57660g) {
            TextUtils.isEmpty(null);
        }
        return null;
    }

    @GuardedBy("acquireReleaseLock")
    private final void g() {
        if (this.f57659f.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f57659f);
        this.f57659f.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        f fVar = (f) arrayList.get(0);
        throw null;
    }

    private final void h(int i9) {
        synchronized (this.f57654a) {
            if (b()) {
                if (this.f57660g) {
                    int i10 = this.f57656c - 1;
                    this.f57656c = i10;
                    if (i10 > 0) {
                        return;
                    }
                } else {
                    this.f57656c = 0;
                }
                g();
                for (d dVar : this.f57668o.values()) {
                    dVar.f57672a = 0;
                }
                this.f57668o.clear();
                Future<?> future = this.f57657d;
                if (future != null) {
                    future.cancel(false);
                    this.f57657d = null;
                    this.f57658e = 0L;
                }
                this.f57661h = 0;
                if (this.f57655b.isHeld()) {
                    try {
                        this.f57655b.release();
                        if (this.f57662i != null) {
                            this.f57662i = null;
                        }
                    } catch (RuntimeException e10) {
                        if (e10.getClass().equals(RuntimeException.class)) {
                            Log.e("WakeLock", String.valueOf(this.f57665l).concat(" failed to release!"), e10);
                            if (this.f57662i != null) {
                                this.f57662i = null;
                            }
                        } else {
                            throw e10;
                        }
                    }
                } else {
                    Log.e("WakeLock", String.valueOf(this.f57665l).concat(" should be held!"));
                }
            }
        }
    }

    private static void i(PowerManager.WakeLock wakeLock, WorkSource workSource) {
        try {
            wakeLock.setWorkSource(workSource);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e10) {
            Log.wtf("WakeLock", e10.toString());
        }
    }

    public void a(long j10) {
        this.f57669p.incrementAndGet();
        long max = Math.max(Math.min(Long.MAX_VALUE, f57650r), 1L);
        if (j10 > 0) {
            max = Math.min(j10, max);
        }
        synchronized (this.f57654a) {
            if (!b()) {
                this.f57662i = m4.b.a(false, null);
                this.f57655b.acquire();
                this.f57663j.b();
            }
            this.f57656c++;
            this.f57661h++;
            f(null);
            d dVar = this.f57668o.get(null);
            if (dVar == null) {
                dVar = new d(null);
                this.f57668o.put(null, dVar);
            }
            dVar.f57672a++;
            long b10 = this.f57663j.b();
            long j11 = Long.MAX_VALUE - b10 > max ? b10 + max : Long.MAX_VALUE;
            if (j11 > this.f57658e) {
                this.f57658e = j11;
                Future<?> future = this.f57657d;
                if (future != null) {
                    future.cancel(false);
                }
                this.f57657d = this.f57670q.schedule(new Runnable() { // from class: s4.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.e(a.this);
                    }
                }, max, TimeUnit.MILLISECONDS);
            }
        }
    }

    public boolean b() {
        boolean z10;
        synchronized (this.f57654a) {
            z10 = this.f57656c > 0;
        }
        return z10;
    }

    public void c() {
        if (this.f57669p.decrementAndGet() < 0) {
            Log.e("WakeLock", String.valueOf(this.f57665l).concat(" release without a matched acquire!"));
        }
        synchronized (this.f57654a) {
            f(null);
            if (this.f57668o.containsKey(null)) {
                d dVar = this.f57668o.get(null);
                if (dVar != null) {
                    int i9 = dVar.f57672a - 1;
                    dVar.f57672a = i9;
                    if (i9 == 0) {
                        this.f57668o.remove(null);
                    }
                }
            } else {
                Log.w("WakeLock", String.valueOf(this.f57665l).concat(" counter does not exist"));
            }
            h(0);
        }
    }

    public void d(boolean z10) {
        synchronized (this.f57654a) {
            this.f57660g = z10;
        }
    }
}
