package rh;

import io.reactivex.s;
import java.util.Objects;
import java.util.concurrent.Callable;
import vh.o;
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile o<Callable<s>, s> f57484a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile o<s, s> f57485b;

    static <T, R> R a(o<T, R> oVar, T t10) {
        try {
            return oVar.apply(t10);
        } catch (Throwable th2) {
            throw io.reactivex.exceptions.a.a(th2);
        }
    }

    static s b(o<Callable<s>, s> oVar, Callable<s> callable) {
        s sVar = (s) a(oVar, callable);
        Objects.requireNonNull(sVar, "Scheduler Callable returned null");
        return sVar;
    }

    static s c(Callable<s> callable) {
        try {
            s call = callable.call();
            if (call != null) {
                return call;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th2) {
            throw io.reactivex.exceptions.a.a(th2);
        }
    }

    public static s d(Callable<s> callable) {
        Objects.requireNonNull(callable, "scheduler == null");
        o<Callable<s>, s> oVar = f57484a;
        if (oVar == null) {
            return c(callable);
        }
        return b(oVar, callable);
    }

    public static s e(s sVar) {
        Objects.requireNonNull(sVar, "scheduler == null");
        o<s, s> oVar = f57485b;
        return oVar == null ? sVar : (s) a(oVar, sVar);
    }
}
