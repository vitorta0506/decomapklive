package io.reactivex;

import io.reactivex.internal.subscribers.StrictSubscriber;
/* loaded from: classes7.dex */
public abstract class e<T> implements il.a<T> {

    /* renamed from: a  reason: collision with root package name */
    static final int f51309a = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    public static int b() {
        return f51309a;
    }

    @Override // il.a
    public final void a(il.b<? super T> bVar) {
        if (bVar instanceof f) {
            g((f) bVar);
            return;
        }
        xh.b.e(bVar, "s is null");
        g(new StrictSubscriber(bVar));
    }

    public final e<T> c() {
        return d(b(), false, true);
    }

    public final e<T> d(int i9, boolean z10, boolean z11) {
        xh.b.f(i9, "capacity");
        return ci.a.m(new io.reactivex.internal.operators.flowable.e(this, i9, z11, z10, xh.a.f59912c));
    }

    public final e<T> e() {
        return ci.a.m(new io.reactivex.internal.operators.flowable.f(this));
    }

    public final e<T> f() {
        return ci.a.m(new io.reactivex.internal.operators.flowable.h(this));
    }

    public final void g(f<? super T> fVar) {
        xh.b.e(fVar, "s is null");
        try {
            il.b<? super T> v10 = ci.a.v(this, fVar);
            xh.b.e(v10, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            h(v10);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    protected abstract void h(il.b<? super T> bVar);
}
