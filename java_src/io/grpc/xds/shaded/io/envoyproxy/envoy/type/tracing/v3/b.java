package io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.c;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50540a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50541b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50542c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50543d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50544e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50545f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50546g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50547h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f50548i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f50549j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50550k = Descriptors.FileDescriptor.s(new String[]{"\n&envoy/type/tracing/v3/custom_tag.proto\u0012\u0015envoy.type.tracing.v3\u001a%envoy/type/metadata/v3/metadata.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"Ï\u0006\n\tCustomTag\u0012\u0014\n\u0003tag\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012;\n\u0007literal\u0018\u0002 \u0001(\u000b2(.envoy.type.tracing.v3.CustomTag.LiteralH\u0000\u0012C\n\u000benvironment\u0018\u0003 \u0001(\u000b2,.envoy.type.tracing.v3.CustomTag.EnvironmentH\u0000\u0012A\n\u000erequest_header\u0018\u0004 \u0001(\u000b2'.envoy.type.tracing.v3.CustomTag.HeaderH\u0000\u0012=\n\bmetadata\u0018\u0005 \u0001(\u000b2).envoy.type.tracing.v3.CustomTag.MetadataH\u0000\u001aQ\n\u0007Literal\u0012\u0016\n\u0005value\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001:.\u009aÅ\u0088\u001e)\n'envoy.type.tracing.v2.CustomTag.Literal\u001ao\n\u000bEnvironment\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\t:2\u009aÅ\u0088\u001e-\n+envoy.type.tracing.v2.CustomTag.Environment\u001ak\n\u0006Header\u0012\u001b\n\u0004name\u0018\u0001 \u0001(\tB\rúB\nr\b\u0010\u0001À\u0001\u0001È\u0001\u0000\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\t:-\u009aÅ\u0088\u001e(\n&envoy.type.tracing.v2.CustomTag.Header\u001aÁ\u0001\n\bMetadata\u00122\n\u0004kind\u0018\u0001 \u0001(\u000b2$.envoy.type.metadata.v3.MetadataKind\u00129\n\fmetadata_key\u0018\u0002 \u0001(\u000b2#.envoy.type.metadata.v3.MetadataKey\u0012\u0015\n\rdefault_value\u0018\u0003 \u0001(\t:/\u009aÅ\u0088\u001e*\n(envoy.type.tracing.v2.CustomTag.Metadata:&\u009aÅ\u0088\u001e!\n\u001fenvoy.type.tracing.v2.CustomTagB\u000b\n\u0004type\u0012\u0003øB\u0001B?\n#io.envoyproxy.envoy.type.tracing.v3B\u000eCustomTagProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{c.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50540a = bVar;
        f50541b = new GeneratedMessageV3.e(bVar, new String[]{"Tag", "Literal", "Environment", "RequestHeader", "Metadata", "Type"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50542c = bVar2;
        f50543d = new GeneratedMessageV3.e(bVar2, new String[]{"Value"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f50544e = bVar3;
        f50545f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "DefaultValue"});
        Descriptors.b bVar4 = bVar.o().get(2);
        f50546g = bVar4;
        f50547h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "DefaultValue"});
        Descriptors.b bVar5 = bVar.o().get(3);
        f50548i = bVar5;
        f50549j = new GeneratedMessageV3.e(bVar5, new String[]{"Kind", "MetadataKey", "DefaultValue"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50550k, k10);
        c.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50550k;
    }
}
