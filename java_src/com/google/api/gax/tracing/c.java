package com.google.api.gax.tracing;

import com.google.api.gax.rpc.t;
/* loaded from: classes2.dex */
public class c<RequestT, ResponseT, MetadataT> extends t<RequestT, ResponseT, MetadataT> {

    /* renamed from: a  reason: collision with root package name */
    private t<RequestT, ResponseT, MetadataT> f11378a;

    /* renamed from: b  reason: collision with root package name */
    private ApiTracerFactory f11379b;

    /* renamed from: c  reason: collision with root package name */
    private r5.d f11380c;

    public c(t<RequestT, ResponseT, MetadataT> tVar, ApiTracerFactory apiTracerFactory, r5.d dVar) {
        this.f11378a = tVar;
        this.f11379b = apiTracerFactory;
        this.f11380c = dVar;
    }
}
