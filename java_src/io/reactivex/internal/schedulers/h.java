package io.reactivex.internal.schedulers;

import com.facebook.internal.ServerProtocol;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import vh.o;
/* loaded from: classes7.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f52724a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f52725b;

    /* renamed from: c  reason: collision with root package name */
    static final AtomicReference<ScheduledExecutorService> f52726c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    static final Map<ScheduledThreadPoolExecutor, Object> f52727d = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = new ArrayList(h.f52727d.keySet()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    h.f52727d.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b implements o<String, String> {
        b() {
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(String str) throws Exception {
            return System.getProperty(str);
        }
    }

    static {
        b bVar = new b();
        boolean b10 = b(true, "rx2.purge-enabled", true, true, bVar);
        f52724a = b10;
        f52725b = c(b10, "rx2.purge-period-seconds", 1, 1, bVar);
        d();
    }

    public static ScheduledExecutorService a(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        e(f52724a, newScheduledThreadPool);
        return newScheduledThreadPool;
    }

    static boolean b(boolean z10, String str, boolean z11, boolean z12, o<String, String> oVar) {
        if (z10) {
            try {
                String apply = oVar.apply(str);
                return apply == null ? z11 : ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(apply);
            } catch (Throwable unused) {
                return z11;
            }
        }
        return z12;
    }

    static int c(boolean z10, String str, int i9, int i10, o<String, String> oVar) {
        if (z10) {
            try {
                String apply = oVar.apply(str);
                return apply == null ? i9 : Integer.parseInt(apply);
            } catch (Throwable unused) {
                return i9;
            }
        }
        return i10;
    }

    public static void d() {
        f(f52724a);
    }

    static void e(boolean z10, ScheduledExecutorService scheduledExecutorService) {
        if (z10 && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            f52727d.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }

    static void f(boolean z10) {
        if (!z10) {
            return;
        }
        while (true) {
            AtomicReference<ScheduledExecutorService> atomicReference = f52726c;
            ScheduledExecutorService scheduledExecutorService = atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge"));
            if (atomicReference.compareAndSet(scheduledExecutorService, newScheduledThreadPool)) {
                a aVar = new a();
                int i9 = f52725b;
                newScheduledThreadPool.scheduleAtFixedRate(aVar, i9, i9, TimeUnit.SECONDS);
                return;
            }
            newScheduledThreadPool.shutdownNow();
        }
    }
}
