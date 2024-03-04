package cn.jiguang.bg;

import cn.jiguang.ar.f;
import com.guochao.faceshow.aaspring.utils.Language;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, ExecutorService> f2500a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, String> f2501b;

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        f2501b = hashMap;
        hashMap.put("SDK_INIT", "ic");
        hashMap.put("SDK_SERVICE_INIT", "mn");
        hashMap.put("TCP_CONN_TASK", "tc");
        hashMap.put("UPLOAD_REPORT", "rp");
        hashMap.put("ONCE_TASK", "oc");
        hashMap.put("SCHEDULE_TASK", "sc");
        hashMap.put("MAJOR_TASK", "mj");
        hashMap.put("NORMAL_TASK", "nr");
        hashMap.put("FUTURE_TASK", Language.FRENCH);
        hashMap.put("DELAY_TASK", "dl");
    }

    public static void a(String str) {
        try {
            a(c(str));
        } catch (Throwable th2) {
            cn.jiguang.as.d.i("SDKWorker_XExecutor", "shutdown executor " + str + "error: " + th2);
        }
    }

    public static void a(String str, Runnable runnable) {
        a(str, runnable, 0, true);
    }

    public static void a(String str, Runnable runnable, int i9) {
        a(str, runnable, i9, true);
    }

    public static void a(String str, Runnable runnable, int i9, boolean z10) {
        if (z10) {
            try {
                if (f.a()) {
                    return;
                }
            } catch (Throwable th2) {
                cn.jiguang.as.d.i("SDKWorker_XExecutor", "execute failed, try again e:" + th2);
                return;
            }
        }
        ExecutorService c10 = c(str);
        if (c10 != null) {
            if (i9 <= 0 || !(c10 instanceof ScheduledExecutorService)) {
                c10.execute(runnable);
            } else {
                ((ScheduledExecutorService) c10).schedule(runnable, i9, TimeUnit.MILLISECONDS);
            }
        }
    }

    private static void a(ExecutorService executorService) {
        if (executorService == null) {
            return;
        }
        try {
            executorService.shutdown();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            if (executorService.awaitTermination(100L, timeUnit)) {
                return;
            }
            executorService.shutdownNow();
            if (executorService.awaitTermination(100L, timeUnit)) {
                return;
            }
            cn.jiguang.as.d.a("SDKWorker_XExecutor", "executor did not terminate");
        } catch (InterruptedException unused) {
            executorService.shutdownNow();
            cn.jiguang.as.d.a("SDKWorker_XExecutor", "current thread is interrupted by self");
            Thread.currentThread().interrupt();
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("SDKWorker_XExecutor", "shutDown e:" + th2);
        }
    }

    public static boolean b(String str) {
        try {
            ExecutorService c10 = c(str);
            if (c10 == null || c10.isShutdown()) {
                return false;
            }
            return !c10.isTerminated();
        } catch (Throwable th2) {
            cn.jiguang.as.d.i("SDKWorker_XExecutor", "check executor " + str + " isAlive error: " + th2);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
        if (r5 != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.concurrent.ExecutorService c(java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.bg.d.c(java.lang.String):java.util.concurrent.ExecutorService");
    }
}
