package com.google.api.gax.tracing;

import com.google.api.gax.rpc.k0;
/* loaded from: classes2.dex */
public class e<RequestT, ResponseT> extends k0<RequestT, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final k0<RequestT, ResponseT> f11386a;

    /* renamed from: b  reason: collision with root package name */
    private final ApiTracerFactory f11387b;

    /* renamed from: c  reason: collision with root package name */
    private final r5.d f11388c;

    public e(k0<RequestT, ResponseT> k0Var, ApiTracerFactory apiTracerFactory, r5.d dVar) {
        this.f11386a = k0Var;
        this.f11387b = apiTracerFactory;
        this.f11388c = dVar;
    }
}
