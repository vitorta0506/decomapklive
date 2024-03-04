package com.google.cloud.speech.v1;

import java.io.IOException;
/* loaded from: classes2.dex */
public class h implements l5.d {

    /* renamed from: a  reason: collision with root package name */
    private final n f11960a;

    /* renamed from: b  reason: collision with root package name */
    private final u5.c f11961b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.longrunning.b f11962c;

    protected h(n nVar) throws IOException {
        this.f11960a = nVar;
        u5.c o10 = ((u5.d) nVar.i()).o();
        this.f11961b = o10;
        this.f11962c = com.google.longrunning.b.a(o10.a());
    }

    public static final h a(n nVar) throws IOException {
        return new h(nVar);
    }

    public final com.google.api.gax.rpc.h<StreamingRecognizeRequest, StreamingRecognizeResponse> c() {
        return this.f11961b.c();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f11961b.close();
    }

    @Override // l5.d
    public boolean isShutdown() {
        return this.f11961b.isShutdown();
    }

    @Override // l5.d
    public void shutdown() {
        this.f11961b.shutdown();
    }
}
