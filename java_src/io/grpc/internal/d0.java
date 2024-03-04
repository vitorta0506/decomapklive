package io.grpc.internal;

import io.grpc.t0;
import java.net.URI;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
public final class d0 extends io.grpc.u0 {
    @Override // io.grpc.t0.d
    public String a() {
        return "dns";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.u0
    public boolean d() {
        return true;
    }

    @Override // io.grpc.u0
    public int e() {
        return 5;
    }

    @Override // io.grpc.t0.d
    /* renamed from: f */
    public c0 b(URI uri, t0.b bVar) {
        if ("dns".equals(uri.getScheme())) {
            String str = (String) com.google.common.base.o.t(uri.getPath(), "targetPath");
            com.google.common.base.o.n(str.startsWith(FileUtils.RES_PREFIX_STORAGE), "the path component (%s) of the target (%s) must start with '/'", str, uri);
            return new c0(uri.getAuthority(), str.substring(1), bVar, GrpcUtil.f42361t, com.google.common.base.u.c(), io.grpc.j0.a(d0.class.getClassLoader()));
        }
        return null;
    }
}
