package a5;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class e {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static ThreadPoolExecutor f609a;

    public static Executor a() {
        if (f609a == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new d());
            f609a = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        return f609a;
    }
}
