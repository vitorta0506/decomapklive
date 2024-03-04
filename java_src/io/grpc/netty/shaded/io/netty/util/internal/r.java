package io.grpc.netty.shaded.io.netty.util.internal;

import io.grpc.netty.shaded.io.netty.util.q;
/* loaded from: classes5.dex */
public abstract class r<T> {

    /* loaded from: classes5.dex */
    public interface a<T> {
        void a(T t10);
    }

    /* loaded from: classes5.dex */
    public interface b<T> {
        T a(a<T> aVar);
    }

    /* loaded from: classes5.dex */
    private static final class c<T> extends r<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.util.q<T> f45123a;

        /* loaded from: classes5.dex */
        class a extends io.grpc.netty.shaded.io.netty.util.q<T> {

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ b f45124j;

            a(b bVar) {
                this.f45124j = bVar;
            }

            @Override // io.grpc.netty.shaded.io.netty.util.q
            protected T e(q.d<T> dVar) {
                return (T) this.f45124j.a(dVar);
            }
        }

        c(b<T> bVar) {
            this.f45123a = new a(bVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.r
        public T a() {
            return this.f45123a.d();
        }
    }

    r() {
    }

    public static <T> r<T> b(b<T> bVar) {
        return new c((b) s.h(bVar, "creator"));
    }

    public abstract T a();
}
