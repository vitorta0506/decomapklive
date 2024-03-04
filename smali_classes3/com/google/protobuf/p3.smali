.class public final Lcom/google/protobuf/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final q:Lcom/google/protobuf/Descriptors$b;

.field static final r:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static s:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\n\u001egoogle/protobuf/wrappers.proto\u0012\u000fgoogle.protobuf\"\u001c\n\u000bDoubleValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0001\"\u001b\n\nFloatValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0002\"\u001b\n\nInt64Value\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0003\"\u001c\n\u000bUInt64Value\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0004\"\u001b\n\nInt32Value\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0005\"\u001c\n\u000bUInt32Value\u0012\r\n\u0005value\u0018\u0001 \u0001(\r\"\u001a\n\tBoolValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0008\"\u001c\n\u000bStringValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\t\"\u001b\n\nBytesValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\u000cB\u0083\u0001\n\u0013com.google.protobufB\rWrappersProtoP\u0001Z1google.golang.org/protobuf/types/known/wrapperspb\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/p3;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Value"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/p3;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 5
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/p3;->c:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/p3;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/p3;->e:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/p3;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/p3;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/p3;->i:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/p3;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/p3;->k:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/p3;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/p3;->m:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/p3;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/p3;->o:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/p3;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/p3;->q:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/p3;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/protobuf/p3;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
