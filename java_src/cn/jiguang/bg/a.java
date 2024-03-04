package cn.jiguang.bg;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class a implements RejectedExecutionHandler {

    /* renamed from: a  reason: collision with root package name */
    private int f2489a;

    /* renamed from: b  reason: collision with root package name */
    private String f2490b;

    /* renamed from: c  reason: collision with root package name */
    private ThreadPoolExecutor f2491c;

    /* renamed from: d  reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f2492d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, int i9) {
        this.f2490b = str;
        if (i9 <= 0) {
            this.f2489a = 3;
        }
        this.f2489a = i9;
    }

    @Override // java.util.concurrent.RejectedExecutionHandler
    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        cn.jiguang.as.d.c("JRejectedExecutionHandler", "poolName: " + this.f2490b + ", Exceeded ThreadPoolExecutor pool size");
        if (this.f2491c == null) {
            synchronized (this) {
                if (this.f2491c == null) {
                    this.f2492d = new LinkedBlockingQueue<>();
                    int i9 = this.f2489a;
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    LinkedBlockingQueue<Runnable> linkedBlockingQueue = this.f2492d;
                    ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(i9, i9, 3L, timeUnit, linkedBlockingQueue, new c(this.f2490b + "_rjt"));
                    this.f2491c = threadPoolExecutor2;
                    threadPoolExecutor2.allowCoreThreadTimeOut(true);
                }
            }
        }
        this.f2491c.execute(runnable);
    }
}
