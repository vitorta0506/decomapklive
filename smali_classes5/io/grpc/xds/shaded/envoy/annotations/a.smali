.class public final Lio/grpc/xds/shaded/envoy/annotations/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v3

    sput-object v3, Lio/grpc/xds/shaded/envoy/annotations/a;->a:Lcom/google/protobuf/GeneratedMessage$l;

    .line 3
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v4

    sput-object v4, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v1

    sput-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->c:Lcom/google/protobuf/GeneratedMessage$l;

    .line 5
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/envoy/annotations/a;->d:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v2, "\n#envoy/annotations/deprecation.proto\u0012\u0011envoy.annotations\u001a google/protobuf/descriptor.proto:?\n\u0015disallowed_by_default\u0012\u001d.google.protobuf.FieldOptions\u0018\u00e7\u00ad\u00aeZ \u0001(\u0008:E\n\u001bdeprecated_at_minor_version\u0012\u001d.google.protobuf.FieldOptions\u0018\u00f2\u00e8\u0080K \u0001(\t:H\n\u001adisallowed_by_default_enum\u0012!.google.protobuf.EnumValueOptions\u0018\u00f5\u00ce\u00b6! \u0001(\u0008:N\n deprecated_at_minor_version_enum\u0012!.google.protobuf.EnumValueOptions\u0018\u00c1\u00be\u00b3V \u0001(\tb\u0006proto3"

    .line 6
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 8
    invoke-static {v2, v6}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    sput-object v2, Lio/grpc/xds/shaded/envoy/annotations/a;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 10
    sget-object v2, Lio/grpc/xds/shaded/envoy/annotations/a;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v4, v2}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 11
    sget-object v2, Lio/grpc/xds/shaded/envoy/annotations/a;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 12
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 13
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/envoy/annotations/a;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
