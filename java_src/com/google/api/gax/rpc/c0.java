package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
class c0<RequestT, ResponseT> extends k0<RequestT, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final a f11240a;

    /* renamed from: b  reason: collision with root package name */
    private final k0<RequestT, ResponseT> f11241b;

    /* renamed from: c  reason: collision with root package name */
    private final o5.f<ResponseT> f11242c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(a aVar, k0<RequestT, ResponseT> k0Var, o5.f<ResponseT> fVar) {
        this.f11240a = (a) com.google.common.base.o.s(aVar);
        this.f11241b = (k0) com.google.common.base.o.s(k0Var);
        this.f11242c = (o5.f) com.google.common.base.o.s(fVar);
    }

    public String toString() {
        return String.format("retrying(%s)", this.f11241b);
    }
}
