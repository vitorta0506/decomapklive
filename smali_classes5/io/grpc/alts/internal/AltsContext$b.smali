.class public final Lio/grpc/alts/internal/AltsContext$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/AltsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/alts/internal/AltsContext$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lio/grpc/alts/internal/RpcProtocolVersions;

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/alts/internal/RpcProtocolVersions;",
            "Lio/grpc/alts/internal/RpcProtocolVersions$b;",
            "Lio/grpc/alts/internal/z;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->e:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lio/grpc/alts/internal/AltsContext$b;->g:I

    .line 7
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->h:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->i:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->e:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lio/grpc/alts/internal/AltsContext$b;->g:I

    .line 14
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->h:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->i:Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/alts/internal/AltsContext$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/alts/internal/AltsContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext$b;-><init>()V

    return-void
.end method

.method private b0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->l:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/alts/internal/AltsContext$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->l:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->l:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->l:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->l:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->l:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private d0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->l:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/alts/internal/AltsContext$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lio/grpc/alts/internal/AltsContext;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/AltsContext$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->Z()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->Y()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->Y()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/alts/internal/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/alts/internal/AltsContext;

    const-class v2, Lio/grpc/alts/internal/AltsContext$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/AltsContext$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext$b;->d0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected N(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext$b;->b0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/AltsContext$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;->v0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/AltsContext$b;

    return-object p1
.end method

.method public X()Lio/grpc/alts/internal/AltsContext;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->Y()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/alts/internal/AltsContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/alts/internal/AltsContext;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/alts/internal/AltsContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/alts/internal/AltsContext;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/alts/internal/AltsContext$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext$b;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/AltsContext;->access$402(Lio/grpc/alts/internal/AltsContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/AltsContext;->access$502(Lio/grpc/alts/internal/AltsContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p0, Lio/grpc/alts/internal/AltsContext$b;->g:I

    invoke-static {v0, v1}, Lio/grpc/alts/internal/AltsContext;->access$602(Lio/grpc/alts/internal/AltsContext;I)I

    .line 5
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext$b;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/AltsContext;->access$702(Lio/grpc/alts/internal/AltsContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext$b;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/AltsContext;->access$802(Lio/grpc/alts/internal/AltsContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext$b;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext$b;->j:Lio/grpc/alts/internal/RpcProtocolVersions;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/AltsContext;->access$902(Lio/grpc/alts/internal/AltsContext;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/RpcProtocolVersions;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/AltsContext;->access$902(Lio/grpc/alts/internal/AltsContext;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions;

    .line 10
    :goto_0
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext$b;->d0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/alts/internal/AltsContext;->access$1002(Lio/grpc/alts/internal/AltsContext;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 11
    invoke-static {v0}, Lio/grpc/alts/internal/AltsContext;->access$1000(Lio/grpc/alts/internal/AltsContext;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/alts/internal/AltsContext$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/alts/internal/AltsContext$b;

    return-object v0
.end method

.method public a0()Lio/grpc/alts/internal/AltsContext;
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/AltsContext;->getDefaultInstance()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->X()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->X()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/AltsContext$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/AltsContext$b;

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

    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->Z()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/AltsContext$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;->v0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/alts/internal/AltsContext;->access$1300()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/AltsContext;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;->i0(Lio/grpc/alts/internal/AltsContext;)Lio/grpc/alts/internal/AltsContext$b;

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

    check-cast p2, Lio/grpc/alts/internal/AltsContext;
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
    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/AltsContext$b;->i0(Lio/grpc/alts/internal/AltsContext;)Lio/grpc/alts/internal/AltsContext$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->a0()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->a0()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/f;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/alts/internal/AltsContext;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/alts/internal/AltsContext;

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;->i0(Lio/grpc/alts/internal/AltsContext;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/AltsContext$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/alts/internal/AltsContext;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/AltsContext;->getDefaultInstance()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/alts/internal/AltsContext;->access$400(Lio/grpc/alts/internal/AltsContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getRecordProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/grpc/alts/internal/AltsContext;->access$500(Lio/grpc/alts/internal/AltsContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->f:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-static {p1}, Lio/grpc/alts/internal/AltsContext;->access$600(Lio/grpc/alts/internal/AltsContext;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getSecurityLevelValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/AltsContext$b;->u0(I)Lio/grpc/alts/internal/AltsContext$b;

    .line 10
    :cond_3
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getPeerServiceAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-static {p1}, Lio/grpc/alts/internal/AltsContext;->access$700(Lio/grpc/alts/internal/AltsContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->h:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 13
    :cond_4
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getLocalServiceAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    invoke-static {p1}, Lio/grpc/alts/internal/AltsContext;->access$800(Lio/grpc/alts/internal/AltsContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->i:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 16
    :cond_5
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->hasPeerRpcVersions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/AltsContext$b;->j0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/AltsContext$b;

    .line 18
    :cond_6
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext$b;->b0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 19
    invoke-static {p1}, Lio/grpc/alts/internal/AltsContext;->access$1100(Lio/grpc/alts/internal/AltsContext;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 21
    invoke-static {p1}, Lio/grpc/alts/internal/AltsContext;->access$1200(Lio/grpc/alts/internal/AltsContext;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/AltsContext$b;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->j:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/RpcProtocolVersions;->newBuilder(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->j:Lio/grpc/alts/internal/RpcProtocolVersions;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->j:Lio/grpc/alts/internal/RpcProtocolVersions;

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

.method public final k0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/AltsContext$b;

    return-object p1
.end method

.method public l0(Ljava/util/Map;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/grpc/alts/internal/AltsContext$b;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext$b;->b0()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public m0(Ljava/lang/String;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->e:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext$b;->Z()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/AltsContext$b;

    return-object p1
.end method

.method public o0(Ljava/lang/String;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->i:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->j:Lio/grpc/alts/internal/RpcProtocolVersions;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method

.method public r0(Ljava/lang/String;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->h:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public s0(Ljava/lang/String;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext$b;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public t0(Lio/grpc/alts/internal/SecurityLevel;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lio/grpc/alts/internal/SecurityLevel;->getNumber()I

    move-result p1

    iput p1, p0, Lio/grpc/alts/internal/AltsContext$b;->g:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/AltsContext$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/alts/internal/AltsContext$b;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public final v0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/AltsContext$b;

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method
