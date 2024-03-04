package ci;

import il.b;
import io.reactivex.e;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.exceptions.UndeliverableException;
import io.reactivex.h;
import io.reactivex.internal.util.f;
import io.reactivex.k;
import io.reactivex.r;
import io.reactivex.s;
import io.reactivex.t;
import io.reactivex.u;
import java.util.concurrent.Callable;
import vh.c;
import vh.g;
import vh.o;
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static volatile g<? super Throwable> f1729a;

    /* renamed from: b  reason: collision with root package name */
    static volatile o<? super Runnable, ? extends Runnable> f1730b;

    /* renamed from: c  reason: collision with root package name */
    static volatile o<? super Callable<s>, ? extends s> f1731c;

    /* renamed from: d  reason: collision with root package name */
    static volatile o<? super Callable<s>, ? extends s> f1732d;

    /* renamed from: e  reason: collision with root package name */
    static volatile o<? super Callable<s>, ? extends s> f1733e;

    /* renamed from: f  reason: collision with root package name */
    static volatile o<? super Callable<s>, ? extends s> f1734f;

    /* renamed from: g  reason: collision with root package name */
    static volatile o<? super s, ? extends s> f1735g;

    /* renamed from: h  reason: collision with root package name */
    static volatile o<? super s, ? extends s> f1736h;

    /* renamed from: i  reason: collision with root package name */
    static volatile o<? super e, ? extends e> f1737i;

    /* renamed from: j  reason: collision with root package name */
    static volatile o<? super k, ? extends k> f1738j;

    /* renamed from: k  reason: collision with root package name */
    static volatile o<? super bi.a, ? extends bi.a> f1739k;

    /* renamed from: l  reason: collision with root package name */
    static volatile o<? super io.reactivex.g, ? extends io.reactivex.g> f1740l;

    /* renamed from: m  reason: collision with root package name */
    static volatile o<? super t, ? extends t> f1741m;

    /* renamed from: n  reason: collision with root package name */
    static volatile o<? super io.reactivex.a, ? extends io.reactivex.a> f1742n;

    /* renamed from: o  reason: collision with root package name */
    static volatile c<? super e, ? super b, ? extends b> f1743o;

    /* renamed from: p  reason: collision with root package name */
    static volatile c<? super io.reactivex.g, ? super h, ? extends h> f1744p;

    /* renamed from: q  reason: collision with root package name */
    static volatile c<? super k, ? super r, ? extends r> f1745q;

    /* renamed from: r  reason: collision with root package name */
    static volatile c<? super t, ? super u, ? extends u> f1746r;

    /* renamed from: s  reason: collision with root package name */
    static volatile c<? super io.reactivex.a, ? super io.reactivex.b, ? extends io.reactivex.b> f1747s;

    /* renamed from: t  reason: collision with root package name */
    static volatile vh.e f1748t;

    /* renamed from: u  reason: collision with root package name */
    static volatile boolean f1749u;

    static void A(Throwable th2) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
    }

    static <T, U, R> R a(c<T, U, R> cVar, T t10, U u10) {
        try {
            return cVar.apply(t10, u10);
        } catch (Throwable th2) {
            throw f.d(th2);
        }
    }

    static <T, R> R b(o<T, R> oVar, T t10) {
        try {
            return oVar.apply(t10);
        } catch (Throwable th2) {
            throw f.d(th2);
        }
    }

    static s c(o<? super Callable<s>, ? extends s> oVar, Callable<s> callable) {
        return (s) xh.b.e(b(oVar, callable), "Scheduler Callable result can't be null");
    }

    static s d(Callable<s> callable) {
        try {
            return (s) xh.b.e(callable.call(), "Scheduler Callable result can't be null");
        } catch (Throwable th2) {
            throw f.d(th2);
        }
    }

    public static s e(Callable<s> callable) {
        xh.b.e(callable, "Scheduler Callable can't be null");
        o<? super Callable<s>, ? extends s> oVar = f1731c;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    public static s f(Callable<s> callable) {
        xh.b.e(callable, "Scheduler Callable can't be null");
        o<? super Callable<s>, ? extends s> oVar = f1733e;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    public static s g(Callable<s> callable) {
        xh.b.e(callable, "Scheduler Callable can't be null");
        o<? super Callable<s>, ? extends s> oVar = f1734f;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    public static s h(Callable<s> callable) {
        xh.b.e(callable, "Scheduler Callable can't be null");
        o<? super Callable<s>, ? extends s> oVar = f1732d;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    static boolean i(Throwable th2) {
        return (th2 instanceof OnErrorNotImplementedException) || (th2 instanceof MissingBackpressureException) || (th2 instanceof IllegalStateException) || (th2 instanceof NullPointerException) || (th2 instanceof IllegalArgumentException) || (th2 instanceof CompositeException);
    }

    public static boolean j() {
        return f1749u;
    }

    public static <T> bi.a<T> k(bi.a<T> aVar) {
        o<? super bi.a, ? extends bi.a> oVar = f1739k;
        return oVar != null ? (bi.a) b(oVar, aVar) : aVar;
    }

    public static io.reactivex.a l(io.reactivex.a aVar) {
        o<? super io.reactivex.a, ? extends io.reactivex.a> oVar = f1742n;
        return oVar != null ? (io.reactivex.a) b(oVar, aVar) : aVar;
    }

    public static <T> e<T> m(e<T> eVar) {
        o<? super e, ? extends e> oVar = f1737i;
        return oVar != null ? (e) b(oVar, eVar) : eVar;
    }

    public static <T> io.reactivex.g<T> n(io.reactivex.g<T> gVar) {
        o<? super io.reactivex.g, ? extends io.reactivex.g> oVar = f1740l;
        return oVar != null ? (io.reactivex.g) b(oVar, gVar) : gVar;
    }

    public static <T> k<T> o(k<T> kVar) {
        o<? super k, ? extends k> oVar = f1738j;
        return oVar != null ? (k) b(oVar, kVar) : kVar;
    }

    public static <T> t<T> p(t<T> tVar) {
        o<? super t, ? extends t> oVar = f1741m;
        return oVar != null ? (t) b(oVar, tVar) : tVar;
    }

    public static boolean q() {
        vh.e eVar = f1748t;
        if (eVar != null) {
            try {
                return eVar.a();
            } catch (Throwable th2) {
                throw f.d(th2);
            }
        }
        return false;
    }

    public static s r(s sVar) {
        o<? super s, ? extends s> oVar = f1735g;
        return oVar == null ? sVar : (s) b(oVar, sVar);
    }

    public static void s(Throwable th2) {
        g<? super Throwable> gVar = f1729a;
        if (th2 == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!i(th2)) {
            th2 = new UndeliverableException(th2);
        }
        if (gVar != null) {
            try {
                gVar.accept(th2);
                return;
            } catch (Throwable th3) {
                th3.printStackTrace();
                A(th3);
            }
        }
        th2.printStackTrace();
        A(th2);
    }

    public static s t(s sVar) {
        o<? super s, ? extends s> oVar = f1736h;
        return oVar == null ? sVar : (s) b(oVar, sVar);
    }

    public static Runnable u(Runnable runnable) {
        xh.b.e(runnable, "run is null");
        o<? super Runnable, ? extends Runnable> oVar = f1730b;
        return oVar == null ? runnable : (Runnable) b(oVar, runnable);
    }

    public static <T> b<? super T> v(e<T> eVar, b<? super T> bVar) {
        c<? super e, ? super b, ? extends b> cVar = f1743o;
        return cVar != null ? (b) a(cVar, eVar, bVar) : bVar;
    }

    public static io.reactivex.b w(io.reactivex.a aVar, io.reactivex.b bVar) {
        c<? super io.reactivex.a, ? super io.reactivex.b, ? extends io.reactivex.b> cVar = f1747s;
        return cVar != null ? (io.reactivex.b) a(cVar, aVar, bVar) : bVar;
    }

    public static <T> h<? super T> x(io.reactivex.g<T> gVar, h<? super T> hVar) {
        c<? super io.reactivex.g, ? super h, ? extends h> cVar = f1744p;
        return cVar != null ? (h) a(cVar, gVar, hVar) : hVar;
    }

    public static <T> r<? super T> y(k<T> kVar, r<? super T> rVar) {
        c<? super k, ? super r, ? extends r> cVar = f1745q;
        return cVar != null ? (r) a(cVar, kVar, rVar) : rVar;
    }

    public static <T> u<? super T> z(t<T> tVar, u<? super T> uVar) {
        c<? super t, ? super u, ? extends u> cVar = f1746r;
        return cVar != null ? (u) a(cVar, tVar, uVar) : uVar;
    }
}
