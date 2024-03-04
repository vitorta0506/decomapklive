.class public final Lio/grpc/alts/internal/RpcProtocolVersions$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/RpcProtocolVersions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/alts/internal/RpcProtocolVersions$b;",
        ">;",
        "Lio/grpc/alts/internal/z;"
    }
.end annotation


# instance fields
.field private e:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

.field private f:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/alts/internal/RpcProtocolVersions$Version;",
            "Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;",
            "Lio/grpc/alts/internal/RpcProtocolVersions$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/alts/internal/RpcProtocolVersions$Version;",
            "Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;",
            "Lio/grpc/alts/internal/RpcProtocolVersions$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-direct {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 6
    invoke-direct {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/alts/internal/RpcProtocolVersions$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/alts/internal/RpcProtocolVersions$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->access$1100()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Z()Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/alts/internal/d0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/alts/internal/RpcProtocolVersions;

    const-class v2, Lio/grpc/alts/internal/RpcProtocolVersions$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->e0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/RpcProtocolVersions$b;

    return-object p1
.end method

.method public X()Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/alts/internal/RpcProtocolVersions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/alts/internal/RpcProtocolVersions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/alts/internal/RpcProtocolVersions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/alts/internal/RpcProtocolVersions$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->f:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->e:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/RpcProtocolVersions;->access$1302(Lio/grpc/alts/internal/RpcProtocolVersions;Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/RpcProtocolVersions;->access$1302(Lio/grpc/alts/internal/RpcProtocolVersions;Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/RpcProtocolVersions;->access$1402(Lio/grpc/alts/internal/RpcProtocolVersions;Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/RpcProtocolVersions;->access$1402(Lio/grpc/alts/internal/RpcProtocolVersions;Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/alts/internal/RpcProtocolVersions$b;

    return-object v0
.end method

.method public a0()Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->getDefaultInstance()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->X()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->X()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Z()Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->access$1600()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/RpcProtocolVersions;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/o1;

    move-result-object p2

    check-cast p2, Lio/grpc/alts/internal/RpcProtocolVersions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    :cond_1
    throw p1
.end method

.method public e0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/alts/internal/RpcProtocolVersions;

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->getDefaultInstance()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions;->hasMaxRpcVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMaxRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->h0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions;->hasMinRpcVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMinRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->i0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    .line 6
    :cond_2
    invoke-static {p1}, Lio/grpc/alts/internal/RpcProtocolVersions;->access$1500(Lio/grpc/alts/internal/RpcProtocolVersions;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->a0()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->a0()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/d0;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->f:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->e:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->newBuilder(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->e:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->e:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->newBuilder(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/RpcProtocolVersions$b;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/RpcProtocolVersions$b;

    return-object p1
.end method

.method public l0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->f:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->e:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method

.method public m0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Z()Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/RpcProtocolVersions$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/RpcProtocolVersions$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->e0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    return-object p1
.end method
