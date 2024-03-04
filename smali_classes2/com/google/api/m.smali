.class public final Lcom/google/api/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v2

    sput-object v2, Lcom/google/api/m;->a:Lcom/google/protobuf/GeneratedMessage$l;

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v3

    sput-object v3, Lcom/google/api/m;->b:Lcom/google/protobuf/GeneratedMessage$l;

    .line 4
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lcom/google/api/m;->c:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v1, "\n\u0017google/api/client.proto\u0012\ngoogle.api\u001a google/protobuf/descriptor.proto:9\n\u0010method_signature\u0012\u001e.google.protobuf.MethodOptions\u0018\u009b\u0008 \u0003(\t:6\n\u000cdefault_host\u0012\u001f.google.protobuf.ServiceOptions\u0018\u0099\u0008 \u0001(\t:6\n\u000coauth_scopes\u0012\u001f.google.protobuf.ServiceOptions\u0018\u009a\u0008 \u0001(\tBi\n\u000ecom.google.apiB\u000bClientProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 7
    invoke-static {v1, v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    sput-object v1, Lcom/google/api/m;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 9
    sget-object v1, Lcom/google/api/m;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 10
    sget-object v1, Lcom/google/api/m;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 11
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/m;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
