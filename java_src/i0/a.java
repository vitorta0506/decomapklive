package i0;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.facebook.share.internal.ShareConstants;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class a implements ExecutorService {

    /* renamed from: b  reason: collision with root package name */
    private static final long f40836b = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: c  reason: collision with root package name */
    private static volatile int f40837c;

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f40838a;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f40839a;

        /* renamed from: b  reason: collision with root package name */
        private int f40840b;

        /* renamed from: c  reason: collision with root package name */
        private int f40841c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private final ThreadFactory f40842d = new c();
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        private e f40843e = e.f40857d;

        /* renamed from: f  reason: collision with root package name */
        private String f40844f;

        /* renamed from: g  reason: collision with root package name */
        private long f40845g;

        b(boolean z10) {
            this.f40839a = z10;
        }

        public a a() {
            if (!TextUtils.isEmpty(this.f40844f)) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f40840b, this.f40841c, this.f40845g, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new d(this.f40842d, this.f40844f, this.f40843e, this.f40839a));
                if (this.f40845g != 0) {
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
                return new a(threadPoolExecutor);
            }
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f40844f);
        }

        public b b(String str) {
            this.f40844f = str;
            return this;
        }

        public b c(@IntRange(from = 1) int i9) {
            this.f40840b = i9;
            this.f40841c = i9;
            return this;
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements ThreadFactory {

        /* renamed from: i0.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0448a extends Thread {
            C0448a(Runnable runnable) {
                super(runnable);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                super.run();
            }
        }

        private c() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new C0448a(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final ThreadFactory f40847a;

        /* renamed from: b  reason: collision with root package name */
        private final String f40848b;

        /* renamed from: c  reason: collision with root package name */
        final e f40849c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f40850d;

        /* renamed from: e  reason: collision with root package name */
        private final AtomicInteger f40851e = new AtomicInteger();

        /* renamed from: i0.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0449a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f40852a;

            RunnableC0449a(Runnable runnable) {
                this.f40852a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f40850d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    this.f40852a.run();
                } catch (Throwable th2) {
                    d.this.f40849c.a(th2);
                }
            }
        }

        d(ThreadFactory threadFactory, String str, e eVar, boolean z10) {
            this.f40847a = threadFactory;
            this.f40848b = str;
            this.f40849c = eVar;
            this.f40850d = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            Thread newThread = this.f40847a.newThread(new RunnableC0449a(runnable));
            newThread.setName("glide-" + this.f40848b + "-thread-" + this.f40851e.getAndIncrement());
            return newThread;
        }
    }

    /* loaded from: classes.dex */
    public interface e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f40854a = new C0450a();

        /* renamed from: b  reason: collision with root package name */
        public static final e f40855b;

        /* renamed from: c  reason: collision with root package name */
        public static final e f40856c;

        /* renamed from: d  reason: collision with root package name */
        public static final e f40857d;

        /* renamed from: i0.a$e$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0450a implements e {
            C0450a() {
            }

            @Override // i0.a.e
            public void a(Throwable th2) {
            }
        }

        /* loaded from: classes.dex */
        class b implements e {
            b() {
            }

            @Override // i0.a.e
            public void a(Throwable th2) {
                if (th2 == null || !Log.isLoggable("GlideExecutor", 6)) {
                    return;
                }
                Log.e("GlideExecutor", "Request threw uncaught throwable", th2);
            }
        }

        /* loaded from: classes.dex */
        class c implements e {
            c() {
            }

            @Override // i0.a.e
            public void a(Throwable th2) {
                if (th2 != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th2);
                }
            }
        }

        static {
            b bVar = new b();
            f40855b = bVar;
            f40856c = new c();
            f40857d = bVar;
        }

        void a(Throwable th2);
    }

    @VisibleForTesting
    a(ExecutorService executorService) {
        this.f40838a = executorService;
    }

    public static int a() {
        if (f40837c == 0) {
            f40837c = Math.min(4, i0.b.a());
        }
        return f40837c;
    }

    public static b b() {
        return new b(true).c(a() >= 4 ? 2 : 1).b("animation");
    }

    public static a d() {
        return b().a();
    }

    public static b e() {
        return new b(true).c(1).b("disk-cache");
    }

    public static a f() {
        return e().a();
    }

    public static b g() {
        return new b(false).c(a()).b(ShareConstants.FEED_SOURCE_PARAM);
    }

    public static a h() {
        return g().a();
    }

    public static a i() {
        return new a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f40836b, TimeUnit.MILLISECONDS, new SynchronousQueue(), new d(new c(), "source-unlimited", e.f40857d, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j10, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f40838a.awaitTermination(j10, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f40838a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f40838a.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f40838a.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f40838a.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f40838a.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f40838a.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public List<Runnable> shutdownNow() {
        return this.f40838a.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(@NonNull Runnable runnable) {
        return this.f40838a.submit(runnable);
    }

    public String toString() {
        return this.f40838a.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j10, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f40838a.invokeAll(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j10, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f40838a.invokeAny(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> Future<T> submit(@NonNull Runnable runnable, T t10) {
        return this.f40838a.submit(runnable, t10);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.f40838a.submit(callable);
    }
}
