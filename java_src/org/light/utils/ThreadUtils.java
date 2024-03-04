package org.light.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes7.dex */
public class ThreadUtils {
    public static ExecutorService service = Executors.newSingleThreadExecutor();

    public static void executeTask(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        service.execute(runnable);
    }
}
