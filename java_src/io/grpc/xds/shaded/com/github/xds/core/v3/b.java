package io.grpc.xds.shaded.com.github.xds.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.xds.annotations.v3.Status;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45511a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45512b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45513c = Descriptors.FileDescriptor.s(new String[]{"\n\u001bxds/core/v3/authority.proto\u0012\u000bxds.core.v3\u001a\u001fxds/annotations/v3/status.proto\u001a\u0017validate/validate.proto\"\"\n\tAuthority\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001BV\n\u0016com.github.xds.core.v3B\u000eAuthorityProtoP\u0001Z\"github.com/cncf/xds/go/xds/core/v3ÒÆ¤á\u0006\u0002\b\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.i(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f45511a = bVar;
        f45512b = new GeneratedMessageV3.e(bVar, new String[]{"Name"});
        d0 k10 = d0.k();
        k10.f(Validate.f50581c);
        k10.f(Status.f50874a);
        Descriptors.FileDescriptor.u(f45513c, k10);
        Status.i();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f45513c;
    }
}
