package com.google.api.gax.rpc;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public final class l0 implements Runnable, l5.d {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f11315f = Logger.getLogger(l0.class.getName());

    /* renamed from: g  reason: collision with root package name */
    private static Object f11316g = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<c, Object> f11317a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final k5.a f11318b;

    /* renamed from: c  reason: collision with root package name */
    private final Duration f11319c;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledExecutorService f11320d;

    /* renamed from: e  reason: collision with root package name */
    private ScheduledFuture<?> f11321e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11322a;

        static {
            int[] iArr = new int[b.values().length];
            f11322a = iArr;
            try {
                iArr[b.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11322a[b.WAITING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum b {
        IDLE,
        WAITING,
        DELIVERING
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c<ResponseT> extends d0<ResponseT> {

        /* renamed from: c  reason: collision with root package name */
        private final Object f11327c;

        /* renamed from: d  reason: collision with root package name */
        private final Duration f11328d;

        /* renamed from: e  reason: collision with root package name */
        private final Duration f11329e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f11330f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f11331g;

        /* renamed from: h  reason: collision with root package name */
        private final b0<ResponseT> f11332h;

        /* renamed from: i  reason: collision with root package name */
        private volatile e0 f11333i;

        /* renamed from: j  reason: collision with root package name */
        private b f11334j;

        /* renamed from: k  reason: collision with root package name */
        private int f11335k;

        /* renamed from: l  reason: collision with root package name */
        private long f11336l;

        /* renamed from: m  reason: collision with root package name */
        private volatile Throwable f11337m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ l0 f11338n;

        /* loaded from: classes2.dex */
        class a implements e0 {
            a() {
            }

            @Override // com.google.api.gax.rpc.e0
            public void cancel() {
                c.this.h();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            this.f11337m = new CancellationException("User cancelled stream");
            this.f11333i.cancel();
        }

        @Override // com.google.api.gax.rpc.d0
        public void b() {
            this.f11338n.f11317a.remove(this);
            this.f11332h.onComplete();
        }

        @Override // com.google.api.gax.rpc.d0
        public void c(Throwable th2) {
            if (this.f11337m != null) {
                th2 = this.f11337m;
            }
            this.f11338n.f11317a.remove(this);
            this.f11332h.onError(th2);
        }

        @Override // com.google.api.gax.rpc.d0
        public void d(ResponseT responset) {
            synchronized (this.f11327c) {
                this.f11334j = b.DELIVERING;
            }
            this.f11332h.onResponse(responset);
            synchronized (this.f11327c) {
                this.f11335k--;
                this.f11336l = this.f11338n.f11318b.millisTime();
                if (!this.f11331g && this.f11335k <= 0) {
                    this.f11334j = b.IDLE;
                }
                this.f11334j = b.WAITING;
            }
        }

        @Override // com.google.api.gax.rpc.d0
        public void e(e0 e0Var) {
            this.f11333i = e0Var;
            this.f11332h.a(new a());
            this.f11330f = true;
        }

        boolean g() {
            if (this.f11333i == null) {
                return false;
            }
            WatchdogTimeoutException watchdogTimeoutException = null;
            synchronized (this.f11327c) {
                long millisTime = this.f11338n.f11318b.millisTime() - this.f11336l;
                int i9 = a.f11322a[this.f11334j.ordinal()];
                if (i9 != 1) {
                    if (i9 == 2 && !this.f11328d.isZero() && millisTime >= this.f11328d.toMillis()) {
                        watchdogTimeoutException = new WatchdogTimeoutException("Canceled due to timeout waiting for next response", true);
                    }
                } else if (!this.f11329e.isZero() && millisTime >= this.f11329e.toMillis()) {
                    watchdogTimeoutException = new WatchdogTimeoutException("Canceled due to idle connection", false);
                }
            }
            if (watchdogTimeoutException != null) {
                this.f11337m = watchdogTimeoutException;
                this.f11333i.cancel();
                return true;
            }
            return false;
        }
    }

    private l0(k5.a aVar, Duration duration, ScheduledExecutorService scheduledExecutorService) {
        this.f11318b = (k5.a) com.google.common.base.o.t(aVar, "clock can't be null");
        this.f11319c = duration;
        this.f11320d = scheduledExecutorService;
    }

    public static l0 d(k5.a aVar, Duration duration, ScheduledExecutorService scheduledExecutorService) {
        l0 l0Var = new l0(aVar, duration, scheduledExecutorService);
        l0Var.k();
        return l0Var;
    }

    private void j() {
        Iterator<Map.Entry<c, Object>> it = this.f11317a.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().g()) {
                it.remove();
            }
        }
    }

    private void k() {
        this.f11321e = this.f11320d.scheduleAtFixedRate(this, this.f11319c.toMillis(), this.f11319c.toMillis(), TimeUnit.MILLISECONDS);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        shutdown();
    }

    @Override // l5.d
    public boolean isShutdown() {
        return this.f11320d.isShutdown();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            j();
        } catch (Throwable th2) {
            f11315f.log(Level.SEVERE, "Caught throwable in periodic Watchdog run. Continuing.", th2);
        }
    }

    @Override // l5.d
    public void shutdown() {
        this.f11321e.cancel(false);
    }
}
