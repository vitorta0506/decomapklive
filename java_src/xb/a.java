package xb;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final a f59643b = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final int f59644c;

    /* renamed from: d  reason: collision with root package name */
    static final int f59645d;

    /* renamed from: e  reason: collision with root package name */
    static final int f59646e;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f59647a = new ExecutorC0688a((byte) 0);

    /* renamed from: xb.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class ExecutorC0688a implements Executor {
        private ExecutorC0688a() {
        }

        /* synthetic */ ExecutorC0688a(byte b10) {
            this();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f59644c = availableProcessors;
        f59645d = availableProcessors + 1;
        f59646e = (availableProcessors * 2) + 1;
    }

    public static ExecutorService a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f59645d, f59646e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static Executor b() {
        return f59643b.f59647a;
    }
}
