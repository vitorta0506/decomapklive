package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class f1 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48207a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48208b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48209c = Descriptors.FileDescriptor.s(new String[]{"\n5envoy/config/core/v3/substitution_format_string.proto\u0012\u0014envoy.config.core.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a$envoy/config/core/v3/extension.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"¸\u0002\n\u0018SubstitutionFormatString\u0012\"\n\u000btext_format\u0018\u0001 \u0001(\tB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0H\u0000\u00128\n\u000bjson_format\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u0012>\n\u0012text_format_source\u0018\u0005 \u0001(\u000b2 .envoy.config.core.v3.DataSourceH\u0000\u0012\u0019\n\u0011omit_empty_values\u0018\u0003 \u0001(\b\u0012\u0014\n\fcontent_type\u0018\u0004 \u0001(\t\u0012>\n\nformatters\u0018\u0006 \u0003(\u000b2*.envoy.config.core.v3.TypedExtensionConfigB\r\n\u0006format\u0012\u0003øB\u0001BM\n\"io.envoyproxy.envoy.config.core.v3B\u001dSubstitutionFormatStringProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), v.a(), v2.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48207a = bVar;
        f48208b = new GeneratedMessageV3.e(bVar, new String[]{"TextFormat", "JsonFormat", "TextFormatSource", "OmitEmptyValues", "ContentType", "Formatters", "Format"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48209c, k10);
        g.a();
        v.a();
        v2.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48209c;
    }
}
