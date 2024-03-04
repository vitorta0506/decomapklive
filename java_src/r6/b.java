package r6;

import androidx.annotation.NonNull;
import com.google.firebase.messaging.threads.ThreadPriority;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final r6.a f57395a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile r6.a f57396b;

    /* renamed from: r6.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0630b implements r6.a {
        private C0630b() {
        }

        @Override // r6.a
        @NonNull
        public ExecutorService a(ThreadFactory threadFactory, ThreadPriority threadPriority) {
            return b(1, threadFactory, threadPriority);
        }

        @NonNull
        public ExecutorService b(int i9, ThreadFactory threadFactory, ThreadPriority threadPriority) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i9, i9, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return Executors.unconfigurableExecutorService(threadPoolExecutor);
        }
    }

    static {
        C0630b c0630b = new C0630b();
        f57395a = c0630b;
        f57396b = c0630b;
    }

    public static r6.a a() {
        return f57396b;
    }
}
