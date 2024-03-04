.class public final Lio/grpc/lb/v1/Server$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/lb/v1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/lb/v1/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/lb/v1/Server$b;",
        ">;",
        "Lio/grpc/lb/v1/i;"
    }
.end annotation


# instance fields
.field private e:Lcom/google/protobuf/ByteString;

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lio/grpc/lb/v1/Server$b;->e:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lio/grpc/lb/v1/Server$b;->g:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lio/grpc/lb/v1/Server$b;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 8
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lio/grpc/lb/v1/Server$b;->e:Lcom/google/protobuf/ByteString;

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lio/grpc/lb/v1/Server$b;->g:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lio/grpc/lb/v1/Server$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/lb/v1/Server$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/lb/v1/Server$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/lb/v1/Server$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/lb/v1/Server$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/lb/v1/Server;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/Server$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->Z()Lio/grpc/lb/v1/Server$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->Y()Lio/grpc/lb/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->Y()Lio/grpc/lb/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/lb/v1/g;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/lb/v1/Server;

    const-class v2, Lio/grpc/lb/v1/Server$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/Server$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/Server$b;->h0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/Server$b;->e0(Lcom/google/protobuf/l1;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/Server$b;->j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/Server$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/Server$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/Server$b;

    return-object p1
.end method

.method public X()Lio/grpc/lb/v1/Server;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->Y()Lio/grpc/lb/v1/Server;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/lb/v1/Server;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/lb/v1/Server;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/lb/v1/Server;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/lb/v1/Server;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/lb/v1/Server$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/lb/v1/Server$b;->e:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lio/grpc/lb/v1/Server;->access$402(Lio/grpc/lb/v1/Server;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 3
    iget v1, p0, Lio/grpc/lb/v1/Server$b;->f:I

    invoke-static {v0, v1}, Lio/grpc/lb/v1/Server;->access$502(Lio/grpc/lb/v1/Server;I)I

    .line 4
    iget-object v1, p0, Lio/grpc/lb/v1/Server$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/lb/v1/Server;->access$602(Lio/grpc/lb/v1/Server;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v1, p0, Lio/grpc/lb/v1/Server$b;->h:Z

    invoke-static {v0, v1}, Lio/grpc/lb/v1/Server;->access$702(Lio/grpc/lb/v1/Server;Z)Z

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/lb/v1/Server$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/lb/v1/Server$b;

    return-object v0
.end method

.method public a0()Lio/grpc/lb/v1/Server;
    .locals 1

    invoke-static {}, Lio/grpc/lb/v1/Server;->getDefaultInstance()Lio/grpc/lb/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->X()Lio/grpc/lb/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->X()Lio/grpc/lb/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/Server$b;->j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/Server$b;

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

    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->Z()Lio/grpc/lb/v1/Server$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/Server$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/lb/v1/Server;->access$900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/Server;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/Server$b;->g0(Lio/grpc/lb/v1/Server;)Lio/grpc/lb/v1/Server$b;

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

    check-cast p2, Lio/grpc/lb/v1/Server;
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
    invoke-virtual {p0, v0}, Lio/grpc/lb/v1/Server$b;->g0(Lio/grpc/lb/v1/Server;)Lio/grpc/lb/v1/Server$b;

    :cond_1
    throw p1
.end method

.method public e0(Lcom/google/protobuf/l1;)Lio/grpc/lb/v1/Server$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/lb/v1/Server;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/lb/v1/Server;

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/Server$b;->g0(Lio/grpc/lb/v1/Server;)Lio/grpc/lb/v1/Server$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/Server$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/Server$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/grpc/lb/v1/Server;)Lio/grpc/lb/v1/Server$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/lb/v1/Server;->getDefaultInstance()Lio/grpc/lb/v1/Server;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/lb/v1/Server;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/lb/v1/Server;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/lb/v1/Server$b;->k0(Lcom/google/protobuf/ByteString;)Lio/grpc/lb/v1/Server$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/lb/v1/Server;->getPort()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/lb/v1/Server;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/lb/v1/Server$b;->l0(I)Lio/grpc/lb/v1/Server$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/lb/v1/Server;->getLoadBalanceToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-static {p1}, Lio/grpc/lb/v1/Server;->access$600(Lio/grpc/lb/v1/Server;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/lb/v1/Server$b;->g:Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 9
    :cond_3
    invoke-virtual {p1}, Lio/grpc/lb/v1/Server;->getDrop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lio/grpc/lb/v1/Server;->getDrop()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/lb/v1/Server$b;->i0(Z)Lio/grpc/lb/v1/Server$b;

    .line 11
    :cond_4
    invoke-static {p1}, Lio/grpc/lb/v1/Server;->access$800(Lio/grpc/lb/v1/Server;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/Server$b;->h0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/Server$b;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->a0()Lio/grpc/lb/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->a0()Lio/grpc/lb/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/lb/v1/g;->q:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public final h0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/Server$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/Server$b;

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/Server$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Z)Lio/grpc/lb/v1/Server$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/lb/v1/Server$b;->h:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/Server$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/Server$b;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/ByteString;)Lio/grpc/lb/v1/Server$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/lb/v1/Server$b;->e:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(I)Lio/grpc/lb/v1/Server$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/lb/v1/Server$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/Server$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/Server$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/lb/v1/Server$b;->Z()Lio/grpc/lb/v1/Server$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/Server$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/Server$b;->e0(Lcom/google/protobuf/l1;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/Server$b;->h0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/Server$b;

    move-result-object p1

    return-object p1
.end method
