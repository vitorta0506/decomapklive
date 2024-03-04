package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public abstract class t<RequestT, ResponseT, MetadataT> {

    /* loaded from: classes2.dex */
    class a extends t<RequestT, ResponseT, MetadataT> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.api.gax.rpc.a f11357a;

        a(com.google.api.gax.rpc.a aVar) {
            this.f11357a = aVar;
        }
    }

    public t<RequestT, ResponseT, MetadataT> a(com.google.api.gax.rpc.a aVar) {
        return new a(aVar);
    }
}
