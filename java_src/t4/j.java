package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public final class j {
    public static <TResult> TResult a(@NonNull g<TResult> gVar) throws ExecutionException, InterruptedException {
        com.google.android.gms.common.internal.p.h();
        com.google.android.gms.common.internal.p.k(gVar, "Task must not be null");
        if (gVar.n()) {
            return (TResult) f(gVar);
        }
        l lVar = new l(null);
        g(gVar, lVar);
        lVar.c();
        return (TResult) f(gVar);
    }

    public static <TResult> TResult b(@NonNull g<TResult> gVar, long j10, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        com.google.android.gms.common.internal.p.h();
        com.google.android.gms.common.internal.p.k(gVar, "Task must not be null");
        com.google.android.gms.common.internal.p.k(timeUnit, "TimeUnit must not be null");
        if (gVar.n()) {
            return (TResult) f(gVar);
        }
        l lVar = new l(null);
        g(gVar, lVar);
        if (lVar.d(j10, timeUnit)) {
            return (TResult) f(gVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    @NonNull
    @Deprecated
    public static <TResult> g<TResult> c(@NonNull Executor executor, @NonNull Callable<TResult> callable) {
        com.google.android.gms.common.internal.p.k(executor, "Executor must not be null");
        com.google.android.gms.common.internal.p.k(callable, "Callback must not be null");
        g0 g0Var = new g0();
        executor.execute(new h0(g0Var, callable));
        return g0Var;
    }

    @NonNull
    public static <TResult> g<TResult> d(@NonNull Exception exc) {
        g0 g0Var = new g0();
        g0Var.q(exc);
        return g0Var;
    }

    @NonNull
    public static <TResult> g<TResult> e(TResult tresult) {
        g0 g0Var = new g0();
        g0Var.r(tresult);
        return g0Var;
    }

    private static Object f(@NonNull g gVar) throws ExecutionException {
        if (gVar.o()) {
            return gVar.k();
        }
        if (gVar.m()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(gVar.j());
    }

    private static void g(g gVar, m mVar) {
        Executor executor = i.f58043b;
        gVar.g(executor, mVar);
        gVar.e(executor, mVar);
        gVar.a(executor, mVar);
    }
}
