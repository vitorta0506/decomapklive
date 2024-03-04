package io.grpc.xds.shaded.com.github.xds.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.xds.annotations.v3.Status;
/* loaded from: classes5.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45529a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45530b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45531c = Descriptors.FileDescriptor.s(new String[]{"\n\u001fxds/core/v3/resource_name.proto\u0012\u000bxds.core.v3\u001a\u001fxds/annotations/v3/status.proto\u001a xds/core/v3/context_params.proto\u001a\u0017validate/validate.proto\"z\n\fResourceName\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0011\n\tauthority\u0018\u0002 \u0001(\t\u0012\u001e\n\rresource_type\u0018\u0003 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012+\n\u0007context\u0018\u0004 \u0001(\u000b2\u001a.xds.core.v3.ContextParamsBY\n\u0016com.github.xds.core.v3B\u0011ResourceNameProtoP\u0001Z\"github.com/cncf/xds/go/xds/core/v3ÒÆ¤á\u0006\u0002\b\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.i(), f.a(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f45529a = bVar;
        f45530b = new GeneratedMessageV3.e(bVar, new String[]{"Id", "Authority", "ResourceType", "Context"});
        d0 k10 = d0.k();
        k10.f(Validate.f50581c);
        k10.f(Status.f50874a);
        Descriptors.FileDescriptor.u(f45531c, k10);
        Status.i();
        f.a();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f45531c;
    }
}
