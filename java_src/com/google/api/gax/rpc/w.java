package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public class w<RequestT, ResponseT, PagedListResponseT> extends k0<RequestT, PagedListResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final k0<RequestT, ResponseT> f11366a;

    /* renamed from: b  reason: collision with root package name */
    private final y<RequestT, ResponseT, PagedListResponseT> f11367b;

    public w(k0<RequestT, ResponseT> k0Var, y<RequestT, ResponseT, PagedListResponseT> yVar) {
        this.f11366a = (k0) com.google.common.base.o.s(k0Var);
        this.f11367b = yVar;
    }

    public String toString() {
        return String.format("paged(%s)", this.f11366a);
    }
}
