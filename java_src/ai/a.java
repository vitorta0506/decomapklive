package ai;

import io.reactivex.t;
import io.reactivex.u;
import io.reactivex.v;
import vh.o;
/* loaded from: classes7.dex */
public final class a<T, R> extends t<R> {

    /* renamed from: a  reason: collision with root package name */
    final v<? extends T> f788a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends R> f789b;

    /* renamed from: ai.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static final class C0001a<T, R> implements u<T> {

        /* renamed from: a  reason: collision with root package name */
        final u<? super R> f790a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends R> f791b;

        C0001a(u<? super R> uVar, o<? super T, ? extends R> oVar) {
            this.f790a = uVar;
            this.f791b = oVar;
        }

        @Override // io.reactivex.u
        public void onError(Throwable th2) {
            this.f790a.onError(th2);
        }

        @Override // io.reactivex.u
        public void onSubscribe(th.b bVar) {
            this.f790a.onSubscribe(bVar);
        }

        @Override // io.reactivex.u
        public void onSuccess(T t10) {
            try {
                this.f790a.onSuccess(xh.b.e(this.f791b.apply(t10), "The mapper function returned a null value."));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(th2);
            }
        }
    }

    public a(v<? extends T> vVar, o<? super T, ? extends R> oVar) {
        this.f788a = vVar;
        this.f789b = oVar;
    }

    @Override // io.reactivex.t
    protected void e(u<? super R> uVar) {
        this.f788a.a(new C0001a(uVar, this.f789b));
    }
}
