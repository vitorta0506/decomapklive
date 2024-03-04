package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
class u<RequestT, ResponseT, MetadataT> extends t<RequestT, ResponseT, MetadataT> {

    /* renamed from: a  reason: collision with root package name */
    private final k0<RequestT, n5.b> f11359a;

    /* renamed from: b  reason: collision with root package name */
    private final o5.f<n5.b> f11360b;

    /* renamed from: c  reason: collision with root package name */
    private final r f11361c;

    /* renamed from: d  reason: collision with root package name */
    private final k5.b<n5.b, ResponseT> f11362d;

    /* renamed from: e  reason: collision with root package name */
    private final k5.b<n5.b, MetadataT> f11363e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(k0<RequestT, n5.b> k0Var, o5.f<n5.b> fVar, r rVar, s<RequestT, ResponseT, MetadataT> sVar) {
        this.f11359a = (k0) com.google.common.base.o.s(k0Var);
        this.f11360b = (o5.f) com.google.common.base.o.s(fVar);
        this.f11361c = (r) com.google.common.base.o.s(rVar);
        this.f11362d = sVar.d();
        this.f11363e = sVar.b();
    }
}
