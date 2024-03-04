package p;

import com.alibaba.android.arouter.facade.template.ILogger;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import q.e;
/* loaded from: classes.dex */
public class b extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private static final int f56690a;

    /* renamed from: b  reason: collision with root package name */
    private static final int f56691b;

    /* renamed from: c  reason: collision with root package name */
    private static final int f56692c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile b f56693d;

    /* loaded from: classes.dex */
    class a implements RejectedExecutionHandler {
        a() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            o.a.f55433c.error(ILogger.defaultTag, "Task rejected, too many task!");
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f56690a = availableProcessors;
        int i9 = availableProcessors + 1;
        f56691b = i9;
        f56692c = i9;
    }

    private b(int i9, int i10, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(i9, i10, j10, timeUnit, blockingQueue, threadFactory, new a());
    }

    public static b a() {
        if (f56693d == null) {
            synchronized (b.class) {
                if (f56693d == null) {
                    f56693d = new b(f56691b, f56692c, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(64), new c());
                }
            }
        }
        return f56693d;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th2) {
        super.afterExecute(runnable, th2);
        if (th2 == null && (runnable instanceof Future)) {
            try {
                ((Future) runnable).get();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (CancellationException e10) {
                th2 = e10;
            } catch (ExecutionException e11) {
                th2 = e11.getCause();
            }
        }
        if (th2 != null) {
            ILogger iLogger = o.a.f55433c;
            iLogger.warning(ILogger.defaultTag, "Running task appeared exception! Thread [" + Thread.currentThread().getName() + "], because [" + th2.getMessage() + "]\n" + e.a(th2.getStackTrace()));
        }
    }
}
