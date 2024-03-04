package io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50511a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50512b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50513c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50514d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50515e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50516f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50517g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50518h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f50519i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f50520j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50521k = Descriptors.FileDescriptor.s(new String[]{"\n&envoy/type/tracing/v2/custom_tag.proto\u0012\u0015envoy.type.tracing.v2\u001a%envoy/type/metadata/v2/metadata.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"ã\u0004\n\tCustomTag\u0012\u0014\n\u0003tag\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012;\n\u0007literal\u0018\u0002 \u0001(\u000b2(.envoy.type.tracing.v2.CustomTag.LiteralH\u0000\u0012C\n\u000benvironment\u0018\u0003 \u0001(\u000b2,.envoy.type.tracing.v2.CustomTag.EnvironmentH\u0000\u0012A\n\u000erequest_header\u0018\u0004 \u0001(\u000b2'.envoy.type.tracing.v2.CustomTag.HeaderH\u0000\u0012=\n\bmetadata\u0018\u0005 \u0001(\u000b2).envoy.type.tracing.v2.CustomTag.MetadataH\u0000\u001a!\n\u0007Literal\u0012\u0016\n\u0005value\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u001a;\n\u000bEnvironment\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\t\u001a<\n\u0006Header\u0012\u001b\n\u0004name\u0018\u0001 \u0001(\tB\rúB\nr\b \u0001À\u0001\u0001È\u0001\u0000\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\t\u001a\u0090\u0001\n\bMetadata\u00122\n\u0004kind\u0018\u0001 \u0001(\u000b2$.envoy.type.metadata.v2.MetadataKind\u00129\n\fmetadata_key\u0018\u0002 \u0001(\u000b2#.envoy.type.metadata.v2.MetadataKey\u0012\u0015\n\rdefault_value\u0018\u0003 \u0001(\tB\u000b\n\u0004type\u0012\u0003øB\u0001B?\n#io.envoyproxy.envoy.type.tracing.v2B\u000eCustomTagProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{c.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50511a = bVar;
        f50512b = new GeneratedMessageV3.e(bVar, new String[]{"Tag", "Literal", "Environment", "RequestHeader", "Metadata", "Type"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50513c = bVar2;
        f50514d = new GeneratedMessageV3.e(bVar2, new String[]{"Value"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f50515e = bVar3;
        f50516f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "DefaultValue"});
        Descriptors.b bVar4 = bVar.o().get(2);
        f50517g = bVar4;
        f50518h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "DefaultValue"});
        Descriptors.b bVar5 = bVar.o().get(3);
        f50519i = bVar5;
        f50520j = new GeneratedMessageV3.e(bVar5, new String[]{"Kind", "MetadataKey", "DefaultValue"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50521k, k10);
        c.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50521k;
    }
}
