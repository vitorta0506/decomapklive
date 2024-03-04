package io.grpc.xds.shaded.com.github.xds.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.xds.annotations.v3.Status;
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45524a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45525b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f45526c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f45527d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45528e = Descriptors.FileDescriptor.s(new String[]{"\n\"xds/core/v3/resource_locator.proto\u0012\u000bxds.core.v3\u001a\u001fxds/annotations/v3/status.proto\u001a xds/core/v3/context_params.proto\u001a\u0017validate/validate.proto\"Â\u0003\n\u000fResourceLocator\u0012=\n\u0006scheme\u0018\u0001 \u0001(\u000e2#.xds.core.v3.ResourceLocator.SchemeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\n\n\u0002id\u0018\u0002 \u0001(\t\u0012\u0011\n\tauthority\u0018\u0003 \u0001(\t\u0012\u001e\n\rresource_type\u0018\u0004 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u00123\n\rexact_context\u0018\u0005 \u0001(\u000b2\u001a.xds.core.v3.ContextParamsH\u0000\u0012:\n\ndirectives\u0018\u0006 \u0003(\u000b2&.xds.core.v3.ResourceLocator.Directive\u001a|\n\tDirective\u0012+\n\u0003alt\u0018\u0001 \u0001(\u000b2\u001c.xds.core.v3.ResourceLocatorH\u0000\u00120\n\u0005entry\u0018\u0002 \u0001(\tB\u001fúB\u001cr\u001a\u0010\u00012\u0016^[0-9a-zA-Z_\\-\\./~:]+$H\u0000B\u0010\n\tdirective\u0012\u0003øB\u0001\"'\n\u0006Scheme\u0012\t\n\u0005XDSTP\u0010\u0000\u0012\b\n\u0004HTTP\u0010\u0001\u0012\b\n\u0004FILE\u0010\u0002B\u0019\n\u0017context_param_specifierB\\\n\u0016com.github.xds.core.v3B\u0014ResourceLocatorProtoP\u0001Z\"github.com/cncf/xds/go/xds/core/v3ÒÆ¤á\u0006\u0002\b\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.i(), f.a(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f45524a = bVar;
        f45525b = new GeneratedMessageV3.e(bVar, new String[]{"Scheme", "Id", "Authority", "ResourceType", "ExactContext", "Directives", "ContextParamSpecifier"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f45526c = bVar2;
        f45527d = new GeneratedMessageV3.e(bVar2, new String[]{"Alt", "Entry", "Directive"});
        d0 k10 = d0.k();
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        k10.f(Status.f50874a);
        Descriptors.FileDescriptor.u(f45528e, k10);
        Status.i();
        f.a();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f45528e;
    }
}
