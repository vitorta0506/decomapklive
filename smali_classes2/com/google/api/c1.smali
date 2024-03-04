.class public final Lcom/google/api/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Lcom/google/api/ResourceReference;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "Ljava/util/List<",
            "Lcom/google/api/ResourceDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$MessageOptions;",
            "Lcom/google/api/ResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lcom/google/protobuf/Descriptors$b;

.field static final e:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final f:Lcom/google/protobuf/Descriptors$b;

.field static final g:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static h:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const-class v0, Lcom/google/api/ResourceReference;

    .line 2
    invoke-static {}, Lcom/google/api/ResourceReference;->getDefaultInstance()Lcom/google/api/ResourceReference;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lcom/google/api/c1;->a:Lcom/google/protobuf/GeneratedMessage$l;

    .line 4
    const-class v1, Lcom/google/api/ResourceDescriptor;

    .line 5
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v1

    sput-object v1, Lcom/google/api/c1;->b:Lcom/google/protobuf/GeneratedMessage$l;

    .line 7
    const-class v2, Lcom/google/api/ResourceDescriptor;

    .line 8
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v3

    .line 9
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v2

    sput-object v2, Lcom/google/api/c1;->c:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v3, "\n\u0019google/api/resource.proto\u0012\ngoogle.api\u001a google/protobuf/descriptor.proto\"\u00ee\u0002\n\u0012ResourceDescriptor\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007pattern\u0018\u0002 \u0003(\t\u0012\u0012\n\nname_field\u0018\u0003 \u0001(\t\u00127\n\u0007history\u0018\u0004 \u0001(\u000e2&.google.api.ResourceDescriptor.History\u0012\u000e\n\u0006plural\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008singular\u0018\u0006 \u0001(\t\u00123\n\u0005style\u0018\n \u0003(\u000e2$.google.api.ResourceDescriptor.Style\"[\n\u0007History\u0012\u0017\n\u0013HISTORY_UNSPECIFIED\u0010\u0000\u0012\u001d\n\u0019ORIGINALLY_SINGLE_PATTERN\u0010\u0001\u0012\u0018\n\u0014FUTURE_MULTI_PATTERN\u0010\u0002\"8\n\u0005Style\u0012\u0015\n\u0011STYLE_UNSPECIFIED\u0010\u0000\u0012\u0018\n\u0014DECLARATIVE_FRIENDLY\u0010\u0001\"5\n\u0011ResourceReference\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\t\u0012\u0012\n\nchild_type\u0018\u0002 \u0001(\t:Y\n\u0012resource_reference\u0012\u001d.google.protobuf.FieldOptions\u0018\u009f\u0008 \u0001(\u000b2\u001d.google.api.ResourceReference:Z\n\u0013resource_definition\u0012\u001c.google.protobuf.FileOptions\u0018\u009d\u0008 \u0003(\u000b2\u001e.google.api.ResourceDescriptor:R\n\u0008resource\u0012\u001f.google.protobuf.MessageOptions\u0018\u009d\u0008 \u0001(\u000b2\u001e.google.api.ResourceDescriptorBn\n\u000ecom.google.apiB\rResourceProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations\u00f8\u0001\u0001\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 10
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 12
    invoke-static {v3, v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    sput-object v3, Lcom/google/api/c1;->h:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13
    invoke-static {}, Lcom/google/api/c1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$b;

    sput-object v3, Lcom/google/api/c1;->d:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Type"

    const-string v9, "Pattern"

    const-string v10, "NameField"

    const-string v11, "History"

    const-string v12, "Plural"

    const-string v13, "Singular"

    const-string v14, "Style"

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v5, Lcom/google/api/c1;->e:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lcom/google/api/c1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$b;

    sput-object v3, Lcom/google/api/c1;->f:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Type"

    const-string v8, "ChildType"

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v5, Lcom/google/api/c1;->g:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    sget-object v3, Lcom/google/api/c1;->h:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v3}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 18
    sget-object v0, Lcom/google/api/c1;->h:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 19
    sget-object v0, Lcom/google/api/c1;->h:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 20
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/c1;->h:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
