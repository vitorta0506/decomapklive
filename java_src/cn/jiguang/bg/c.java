package cn.jiguang.bg;

import android.text.TextUtils;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class c implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadGroup f2497a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f2498b = new AtomicInteger(1);

    /* renamed from: c  reason: collision with root package name */
    private final String f2499c;

    public c(String str) {
        SecurityManager securityManager = System.getSecurityManager();
        this.f2497a = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        String lowerCase = TextUtils.isEmpty(str) ? V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND : str.toLowerCase();
        this.f2499c = "jg_" + lowerCase + "_pool_thread";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread;
        Throwable th2;
        Thread thread2;
        try {
            thread = new Thread(this.f2497a, runnable, this.f2499c + this.f2498b.getAndIncrement(), 0L);
            try {
                if (thread.isDaemon()) {
                    thread.setDaemon(false);
                }
                if (thread.getPriority() != 5) {
                    thread.setPriority(5);
                    return thread;
                }
                return thread;
            } catch (Throwable th3) {
                th2 = th3;
                cn.jiguang.as.d.i("JThreadFactory", "JThreadFactory new Thread error, " + th2.getMessage());
                try {
                    thread2 = new Thread(this.f2497a, runnable, this.f2499c + this.f2498b.getAndIncrement(), 0L);
                } catch (Throwable th4) {
                    th = th4;
                }
                try {
                    if (thread2.isDaemon()) {
                        thread2.setDaemon(false);
                    }
                    if (thread2.getPriority() != 5) {
                        thread2.setPriority(5);
                    }
                    return thread2;
                } catch (Throwable th5) {
                    th = th5;
                    thread = thread2;
                    cn.jiguang.as.d.i("JThreadFactory", "JThreadFactory new Thread again error, " + th.getMessage());
                    return thread;
                }
            }
        } catch (Throwable th6) {
            thread = null;
            th2 = th6;
        }
    }
}
