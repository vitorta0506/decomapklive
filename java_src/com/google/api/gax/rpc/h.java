package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public abstract class h<RequestT, ResponseT> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements m<RequestT> {
        a() {
        }

        @Override // com.google.api.gax.rpc.m
        public void a(l<RequestT> lVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements d<RequestT> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f11302a;

        b(l lVar) {
            this.f11302a = lVar;
        }

        @Override // com.google.api.gax.rpc.d
        public void onCompleted() {
            this.f11302a.b();
        }

        @Override // com.google.api.gax.rpc.d
        public void onError(Throwable th2) {
            this.f11302a.a(th2);
        }

        @Override // com.google.api.gax.rpc.d
        public void onNext(RequestT requestt) {
            this.f11302a.c(requestt);
        }
    }

    /* loaded from: classes2.dex */
    class c extends h<RequestT, ResponseT> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.api.gax.rpc.a f11304a;

        c(com.google.api.gax.rpc.a aVar) {
            this.f11304a = aVar;
        }

        @Override // com.google.api.gax.rpc.h
        public l<RequestT> c(b0<ResponseT> b0Var, m<RequestT> mVar, com.google.api.gax.rpc.a aVar) {
            return h.this.c(b0Var, mVar, this.f11304a.f(aVar));
        }
    }

    @Deprecated
    public d<RequestT> a(d<ResponseT> dVar) {
        return b(dVar, null);
    }

    @Deprecated
    public d<RequestT> b(d<ResponseT> dVar, com.google.api.gax.rpc.a aVar) {
        return new b(d(new e(dVar), aVar));
    }

    public abstract l<RequestT> c(b0<ResponseT> b0Var, m<RequestT> mVar, com.google.api.gax.rpc.a aVar);

    public l<RequestT> d(b0<ResponseT> b0Var, com.google.api.gax.rpc.a aVar) {
        return c(b0Var, new a(), aVar);
    }

    public h<RequestT, ResponseT> e(com.google.api.gax.rpc.a aVar) {
        return new c(aVar);
    }
}
