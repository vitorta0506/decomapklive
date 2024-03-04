package io.grpc.netty.shaded.io.netty.handler.codec.http;

import com.facebook.share.internal.ShareConstants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
/* loaded from: classes5.dex */
public class h extends f implements d0 {

    /* renamed from: d  reason: collision with root package name */
    private y f43922d;

    /* renamed from: e  reason: collision with root package name */
    private String f43923e;

    public h(j0 j0Var, y yVar, String str) {
        this(j0Var, yVar, str, true);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.f, io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public boolean equals(Object obj) {
        if (obj instanceof h) {
            h hVar = (h) obj;
            return method().equals(hVar.method()) && i().equalsIgnoreCase(hVar.i()) && super.equals(obj);
        }
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.f, io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public int hashCode() {
        return ((((this.f43922d.hashCode() + 31) * 31) + this.f43923e.hashCode()) * 31) + super.hashCode();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.d0
    public String i() {
        return this.f43923e;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.d0
    public y method() {
        return this.f43922d;
    }

    public String toString() {
        return x.h(new StringBuilder(256), this).toString();
    }

    public h(j0 j0Var, y yVar, String str, boolean z10) {
        super(j0Var, z10, false);
        this.f43922d = (y) io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, PushConstants.MZ_PUSH_MESSAGE_METHOD);
        this.f43923e = (String) io.grpc.netty.shaded.io.netty.util.internal.s.h(str, ShareConstants.MEDIA_URI);
    }

    public h(j0 j0Var, y yVar, String str, t tVar) {
        super(j0Var, tVar);
        this.f43922d = (y) io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, PushConstants.MZ_PUSH_MESSAGE_METHOD);
        this.f43923e = (String) io.grpc.netty.shaded.io.netty.util.internal.s.h(str, ShareConstants.MEDIA_URI);
    }
}
