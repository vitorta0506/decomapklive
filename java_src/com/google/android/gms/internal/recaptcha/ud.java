package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public final class ud {
    public static od a(ExecutorService executorService) {
        od qdVar;
        if (executorService instanceof od) {
            return (od) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            qdVar = new td((ScheduledExecutorService) executorService);
        } else {
            qdVar = new qd(executorService);
        }
        return qdVar;
    }

    public static Executor b() {
        return kc.INSTANCE;
    }

    public static Executor c(Executor executor) {
        return new xd(executor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor d(Executor executor, cb<?> cbVar) {
        Objects.requireNonNull(executor);
        return executor == kc.INSTANCE ? executor : new pd(executor, cbVar);
    }
}
