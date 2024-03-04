package io.reactivex.observers;

import io.reactivex.r;
/* loaded from: classes7.dex */
public abstract class a<T> implements r<T> {

    /* renamed from: a  reason: collision with root package name */
    private th.b f52774a;

    protected void a() {
    }

    @Override // io.reactivex.r
    public final void onSubscribe(th.b bVar) {
        if (io.reactivex.internal.util.e.d(this.f52774a, bVar, getClass())) {
            this.f52774a = bVar;
            a();
        }
    }
}
