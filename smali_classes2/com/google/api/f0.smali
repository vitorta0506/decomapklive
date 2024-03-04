.class public final Lcom/google/api/f0;
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
    .locals 13

    const-string v0, "\n\u0015google/api/http.proto\u0012\ngoogle.api\"T\n\u0004Http\u0012#\n\u0005rules\u0018\u0001 \u0003(\u000b2\u0014.google.api.HttpRule\u0012\'\n\u001ffully_decode_reserved_expansion\u0018\u0002 \u0001(\u0008\"\u0081\u0002\n\u0008HttpRule\u0012\u0010\n\u0008selector\u0018\u0001 \u0001(\t\u0012\r\n\u0003get\u0018\u0002 \u0001(\tH\u0000\u0012\r\n\u0003put\u0018\u0003 \u0001(\tH\u0000\u0012\u000e\n\u0004post\u0018\u0004 \u0001(\tH\u0000\u0012\u0010\n\u0006delete\u0018\u0005 \u0001(\tH\u0000\u0012\u000f\n\u0005patch\u0018\u0006 \u0001(\tH\u0000\u0012/\n\u0006custom\u0018\u0008 \u0001(\u000b2\u001d.google.api.CustomHttpPatternH\u0000\u0012\u000c\n\u0004body\u0018\u0007 \u0001(\t\u0012\u0015\n\rresponse_body\u0018\u000c \u0001(\t\u00121\n\u0013additional_bindings\u0018\u000b \u0003(\u000b2\u0014.google.api.HttpRuleB\t\n\u0007pattern\"/\n\u0011CustomHttpPattern\u0012\u000c\n\u0004kind\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004path\u0018\u0002 \u0001(\tBj\n\u000ecom.google.apiB\tHttpProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations\u00f8\u0001\u0001\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/api/f0;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/api/f0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/f0;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Rules"

    const-string v3, "FullyDecodeReservedExpansion"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/f0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 5
    invoke-static {}, Lcom/google/api/f0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/f0;->c:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Selector"

    const-string v3, "Get"

    const-string v4, "Put"

    const-string v5, "Post"

    const-string v6, "Delete"

    const-string v7, "Patch"

    const-string v8, "Custom"

    const-string v9, "Body"

    const-string v10, "ResponseBody"

    const-string v11, "AdditionalBindings"

    const-string v12, "Pattern"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/f0;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-static {}, Lcom/google/api/f0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/f0;->e:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Kind"

    const-string v3, "Path"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/f0;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/f0;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
