.class public final Lcom/google/api/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Lcom/google/api/RoutingRule;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/protobuf/Descriptors$b;

.field static final c:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final d:Lcom/google/protobuf/Descriptors$b;

.field static final e:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static f:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/google/api/RoutingRule;

    .line 2
    invoke-static {}, Lcom/google/api/RoutingRule;->getDefaultInstance()Lcom/google/api/RoutingRule;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lcom/google/api/e1;->a:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v1, "\n\u0018google/api/routing.proto\u0012\ngoogle.api\u001a google/protobuf/descriptor.proto\"G\n\u000bRoutingRule\u00128\n\u0012routing_parameters\u0018\u0002 \u0003(\u000b2\u001c.google.api.RoutingParameter\"8\n\u0010RoutingParameter\u0012\r\n\u0005field\u0018\u0001 \u0001(\t\u0012\u0015\n\rpath_template\u0018\u0002 \u0001(\t:K\n\u0007routing\u0012\u001e.google.protobuf.MethodOptions\u0018\u00b1\u00ca\u00bc\" \u0001(\u000b2\u0017.google.api.RoutingRuleBj\n\u000ecom.google.apiB\u000cRoutingProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 6
    invoke-static {v1, v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    sput-object v1, Lcom/google/api/e1;->f:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    invoke-static {}, Lcom/google/api/e1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/api/e1;->b:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "RoutingParameters"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/api/e1;->c:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lcom/google/api/e1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/api/e1;->d:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Field"

    const-string v4, "PathTemplate"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/e1;->e:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    sget-object v1, Lcom/google/api/e1;->f:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 12
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/e1;->f:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
