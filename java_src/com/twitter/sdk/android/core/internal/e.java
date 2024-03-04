package com.twitter.sdk.android.core.internal;

import com.guochao.faceshow.aaspring.utils.Constants;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final int f35166a;

    /* renamed from: b  reason: collision with root package name */
    private static final int f35167b;

    /* renamed from: c  reason: collision with root package name */
    private static final int f35168c;

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f35166a = availableProcessors;
        f35167b = availableProcessors + 1;
        f35168c = (availableProcessors * 2) + 1;
    }

    static void c(String str, ExecutorService executorService) {
        d(str, executorService, 1L, TimeUnit.SECONDS);
    }

    static void d(final String str, final ExecutorService executorService, final long j10, final TimeUnit timeUnit) {
        Runtime runtime = Runtime.getRuntime();
        Runnable runnable = new Runnable() { // from class: com.twitter.sdk.android.core.internal.c
            @Override // java.lang.Runnable
            public final void run() {
                e.g(executorService, j10, timeUnit, str);
            }
        };
        runtime.addShutdownHook(new Thread(runnable, "Twitter Shutdown Hook for " + str));
    }

    public static ExecutorService e(String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f35167b, f35168c, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f(str));
        c(str, threadPoolExecutor);
        return threadPoolExecutor;
    }

    static ThreadFactory f(final String str) {
        final AtomicLong atomicLong = new AtomicLong(1L);
        return new ThreadFactory() { // from class: com.twitter.sdk.android.core.internal.d
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread h10;
                h10 = e.h(str, atomicLong, runnable);
                return h10;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(ExecutorService executorService, long j10, TimeUnit timeUnit, String str) {
        try {
            executorService.shutdown();
            if (executorService.awaitTermination(j10, timeUnit)) {
                return;
            }
            com.twitter.sdk.android.core.g g10 = com.twitter.sdk.android.core.l.g();
            g10.d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, str + " did not shutdown in the allocated time. Requesting immediate shutdown.");
            executorService.shutdownNow();
        } catch (InterruptedException unused) {
            com.twitter.sdk.android.core.l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", str));
            executorService.shutdownNow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread h(String str, AtomicLong atomicLong, Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        newThread.setName(str + atomicLong.getAndIncrement());
        return newThread;
    }
}
