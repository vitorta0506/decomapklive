package ig;

import ig.o0;
import ig.z;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
/* loaded from: classes5.dex */
class e extends o0.b {

    /* renamed from: c  reason: collision with root package name */
    private final Http2Headers f41151c;

    /* renamed from: d  reason: collision with root package name */
    private final z.c f41152d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f41153e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f41154f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Http2Headers http2Headers, z.c cVar, boolean z10, boolean z11) {
        this.f41152d = (z.c) com.google.common.base.o.t(cVar, "stream");
        this.f41151c = (Http2Headers) com.google.common.base.o.t(http2Headers, "headers");
        this.f41153e = z10;
        this.f41154f = z11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Http2Headers d() {
        return this.f41151c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f41154f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.f41153e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z.c h() {
        return this.f41152d;
    }
}
