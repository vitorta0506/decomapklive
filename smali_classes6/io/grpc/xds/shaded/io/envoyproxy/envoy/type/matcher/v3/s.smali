.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static g:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "\n!envoy/type/matcher/v3/value.proto\u0012\u0015envoy.type.matcher.v3\u001a\"envoy/type/matcher/v3/number.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00b5\u0003\n\u000cValueMatcher\u0012C\n\nnull_match\u0018\u0001 \u0001(\u000b2-.envoy.type.matcher.v3.ValueMatcher.NullMatchH\u0000\u0012<\n\u000cdouble_match\u0018\u0002 \u0001(\u000b2$.envoy.type.matcher.v3.DoubleMatcherH\u0000\u0012<\n\u000cstring_match\u0018\u0003 \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcherH\u0000\u0012\u0014\n\nbool_match\u0018\u0004 \u0001(\u0008H\u0000\u0012\u0017\n\rpresent_match\u0018\u0005 \u0001(\u0008H\u0000\u00128\n\nlist_match\u0018\u0006 \u0001(\u000b2\".envoy.type.matcher.v3.ListMatcherH\u0000\u001a=\n\tNullMatch:0\u009a\u00c5\u0088\u001e+\n)envoy.type.matcher.ValueMatcher.NullMatch:&\u009a\u00c5\u0088\u001e!\n\u001fenvoy.type.matcher.ValueMatcherB\u0014\n\rmatch_pattern\u0012\u0003\u00f8B\u0001\"\u0081\u0001\n\u000bListMatcher\u00125\n\u0006one_of\u0018\u0001 \u0001(\u000b2#.envoy.type.matcher.v3.ValueMatcherH\u0000:%\u009a\u00c5\u0088\u001e \n\u001eenvoy.type.matcher.ListMatcherB\u0014\n\rmatch_pattern\u0012\u0003\u00f8B\u0001B;\n#io.envoyproxy.envoy.type.matcher.v3B\nValueProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 7
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->a:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "NullMatch"

    const-string v6, "DoubleMatch"

    const-string v7, "StringMatch"

    const-string v8, "BoolMatch"

    const-string v9, "PresentMatch"

    const-string v10, "ListMatch"

    const-string v11, "MatchPattern"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->c:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->e:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "OneOf"

    const-string v3, "MatchPattern"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 15
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 16
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 17
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 18
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/s;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
