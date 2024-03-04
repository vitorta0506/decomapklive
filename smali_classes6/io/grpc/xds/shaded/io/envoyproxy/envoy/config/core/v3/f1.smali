.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "\n5envoy/config/core/v3/substitution_format_string.proto\u0012\u0014envoy.config.core.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a$envoy/config/core/v3/extension.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00b8\u0002\n\u0018SubstitutionFormatString\u0012\"\n\u000btext_format\u0018\u0001 \u0001(\tB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0H\u0000\u00128\n\u000bjson_format\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u0012>\n\u0012text_format_source\u0018\u0005 \u0001(\u000b2 .envoy.config.core.v3.DataSourceH\u0000\u0012\u0019\n\u0011omit_empty_values\u0018\u0003 \u0001(\u0008\u0012\u0014\n\u000ccontent_type\u0018\u0004 \u0001(\t\u0012>\n\nformatters\u0018\u0006 \u0003(\u000b2*.envoy.config.core.v3.TypedExtensionConfigB\r\n\u0006format\u0012\u0003\u00f8B\u0001BM\n\"io.envoyproxy.envoy.config.core.v3B\u001dSubstitutionFormatStringProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 8
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f1;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f1;->a:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TextFormat"

    const-string v3, "JsonFormat"

    const-string v4, "TextFormatSource"

    const-string v5, "OmitEmptyValues"

    const-string v6, "ContentType"

    const-string v7, "Formatters"

    const-string v8, "Format"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f1;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 12
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 13
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 14
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 15
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 16
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f1;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 20
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/f1;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
