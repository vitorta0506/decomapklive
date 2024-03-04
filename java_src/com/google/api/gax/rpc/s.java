package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public final class s<RequestT, ResponseT, MetadataT> {

    /* renamed from: a  reason: collision with root package name */
    private final j0<RequestT, n5.b> f11349a;

    /* renamed from: b  reason: collision with root package name */
    private final o5.h f11350b;

    /* renamed from: c  reason: collision with root package name */
    private final k5.b<n5.b, ResponseT> f11351c;

    /* renamed from: d  reason: collision with root package name */
    private final k5.b<n5.b, MetadataT> f11352d;

    /* loaded from: classes2.dex */
    public static class b<RequestT, ResponseT, MetadataT> {

        /* renamed from: a  reason: collision with root package name */
        private j0<RequestT, n5.b> f11353a;

        /* renamed from: b  reason: collision with root package name */
        private o5.h f11354b;

        /* renamed from: c  reason: collision with root package name */
        private k5.b<n5.b, ResponseT> f11355c;

        /* renamed from: d  reason: collision with root package name */
        private k5.b<n5.b, MetadataT> f11356d;

        public s<RequestT, ResponseT, MetadataT> a() {
            return new s<>(this.f11353a, this.f11354b, this.f11355c, this.f11356d);
        }

        public b<RequestT, ResponseT, MetadataT> b(j0<RequestT, n5.b> j0Var) {
            this.f11353a = j0Var;
            return this;
        }

        public b<RequestT, ResponseT, MetadataT> c(k5.b<n5.b, MetadataT> bVar) {
            this.f11356d = bVar;
            return this;
        }

        public b<RequestT, ResponseT, MetadataT> d(o5.h hVar) {
            this.f11354b = hVar;
            return this;
        }

        public b<RequestT, ResponseT, MetadataT> e(k5.b<n5.b, ResponseT> bVar) {
            this.f11355c = bVar;
            return this;
        }
    }

    public static <RequestT, ResponseT, MetadataT> b<RequestT, ResponseT, MetadataT> e() {
        return new b<>();
    }

    public final j0<RequestT, n5.b> a() {
        return this.f11349a;
    }

    public final k5.b<n5.b, MetadataT> b() {
        return this.f11352d;
    }

    public final o5.h c() {
        return this.f11350b;
    }

    public final k5.b<n5.b, ResponseT> d() {
        return this.f11351c;
    }

    private s(j0<RequestT, n5.b> j0Var, o5.h hVar, k5.b<n5.b, ResponseT> bVar, k5.b<n5.b, MetadataT> bVar2) {
        this.f11349a = (j0) com.google.common.base.o.s(j0Var);
        this.f11350b = (o5.h) com.google.common.base.o.s(hVar);
        this.f11351c = (k5.b) com.google.common.base.o.s(bVar);
        this.f11352d = bVar2;
    }
}
