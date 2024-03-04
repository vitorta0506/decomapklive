package io.grpc.internal;

import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
/* loaded from: classes5.dex */
public final class f0 extends o1 {

    /* renamed from: b  reason: collision with root package name */
    private boolean f42587b;

    /* renamed from: c  reason: collision with root package name */
    private final Status f42588c;

    /* renamed from: d  reason: collision with root package name */
    private final ClientStreamListener.RpcProgress f42589d;

    /* renamed from: e  reason: collision with root package name */
    private final io.grpc.k[] f42590e;

    public f0(Status status, io.grpc.k[] kVarArr) {
        this(status, ClientStreamListener.RpcProgress.PROCESSED, kVarArr);
    }

    @Override // io.grpc.internal.o1, io.grpc.internal.q
    public void l(x0 x0Var) {
        x0Var.b("error", this.f42588c).b("progress", this.f42589d);
    }

    @Override // io.grpc.internal.o1, io.grpc.internal.q
    public void o(ClientStreamListener clientStreamListener) {
        com.google.common.base.o.A(!this.f42587b, "already started");
        this.f42587b = true;
        for (io.grpc.k kVar : this.f42590e) {
            kVar.i(this.f42588c);
        }
        clientStreamListener.d(this.f42588c, this.f42589d, new io.grpc.s0());
    }

    public f0(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.k[] kVarArr) {
        com.google.common.base.o.e(!status.p(), "error must not be OK");
        this.f42588c = status;
        this.f42589d = rpcProgress;
        this.f42590e = kVarArr;
    }
}
