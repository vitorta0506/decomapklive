package com.google.api.gax.tracing;

import com.google.api.gax.rpc.b0;
import com.google.api.gax.rpc.h;
import com.google.api.gax.rpc.l;
import com.google.api.gax.rpc.m;
import com.google.api.gax.tracing.ApiTracerFactory;
import com.google.common.base.o;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class b<RequestT, ResponseT> extends h<RequestT, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final ApiTracerFactory f11369a;

    /* renamed from: b  reason: collision with root package name */
    private final r5.d f11370b;

    /* renamed from: c  reason: collision with root package name */
    private final h<RequestT, ResponseT> f11371c;

    /* renamed from: com.google.api.gax.tracing.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0095b<RequestT> implements m<RequestT> {

        /* renamed from: a  reason: collision with root package name */
        private final r5.a f11372a;

        /* renamed from: b  reason: collision with root package name */
        private final m<RequestT> f11373b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicBoolean f11374c;

        C0095b(r5.a aVar, m<RequestT> mVar, AtomicBoolean atomicBoolean) {
            this.f11372a = aVar;
            this.f11373b = mVar;
            this.f11374c = atomicBoolean;
        }

        @Override // com.google.api.gax.rpc.m
        public void a(l<RequestT> lVar) {
            this.f11373b.a(new c(this.f11372a, lVar, this.f11374c));
        }
    }

    /* loaded from: classes2.dex */
    private static class c<RequestT> implements l<RequestT> {

        /* renamed from: a  reason: collision with root package name */
        private final r5.a f11375a;

        /* renamed from: b  reason: collision with root package name */
        private final l<RequestT> f11376b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicBoolean f11377c;

        @Override // com.google.api.gax.rpc.l
        public void a(Throwable th2) {
            if (th2 == null) {
                th2 = new CancellationException();
            }
            this.f11377c.set(true);
            this.f11376b.a(th2);
        }

        @Override // com.google.api.gax.rpc.l
        public void b() {
            this.f11376b.b();
        }

        @Override // com.google.api.gax.rpc.l
        public void c(RequestT requestt) {
            this.f11375a.e();
            this.f11376b.c(requestt);
        }

        private c(r5.a aVar, l<RequestT> lVar, AtomicBoolean atomicBoolean) {
            this.f11375a = aVar;
            this.f11376b = lVar;
            this.f11377c = atomicBoolean;
        }
    }

    public b(h<RequestT, ResponseT> hVar, ApiTracerFactory apiTracerFactory, r5.d dVar) {
        this.f11369a = (ApiTracerFactory) o.t(apiTracerFactory, "tracerFactory can't be null");
        this.f11370b = (r5.d) o.t(dVar, "spanName can't be null");
        this.f11371c = (h) o.t(hVar, "innerCallable can't be null");
    }

    @Override // com.google.api.gax.rpc.h
    public l<RequestT> c(b0<ResponseT> b0Var, m<RequestT> mVar, com.google.api.gax.rpc.a aVar) {
        r5.a a10 = this.f11369a.a(aVar.e(), this.f11370b, ApiTracerFactory.OperationType.BidiStreaming);
        com.google.api.gax.rpc.a d10 = aVar.d(a10);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        try {
            return new c(a10, this.f11371c.c(new d(a10, b0Var, atomicBoolean), new C0095b(a10, mVar, atomicBoolean), d10), atomicBoolean);
        } catch (RuntimeException e10) {
            a10.a(e10);
            throw e10;
        }
    }
}
