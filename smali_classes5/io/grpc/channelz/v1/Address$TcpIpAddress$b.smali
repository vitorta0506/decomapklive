.class public final Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/Address$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/Address$TcpIpAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/channelz/v1/Address$TcpIpAddress$b;",
        ">;",
        "Lio/grpc/channelz/v1/Address$e;"
    }
.end annotation


# instance fields
.field private e:Lcom/google/protobuf/ByteString;

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->e:Lcom/google/protobuf/ByteString;

    .line 5
    invoke-direct {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 7
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->e:Lcom/google/protobuf/ByteString;

    .line 8
    invoke-direct {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/Address$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/channelz/v1/Address$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->Z()Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->Y()Lio/grpc/channelz/v1/Address$TcpIpAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->Y()Lio/grpc/channelz/v1/Address$TcpIpAddress;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/Address$TcpIpAddress;

    const-class v2, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->h0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->e0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->i0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    return-object p1
.end method

.method public X()Lio/grpc/channelz/v1/Address$TcpIpAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->Y()Lio/grpc/channelz/v1/Address$TcpIpAddress;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/channelz/v1/Address$TcpIpAddress;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/Address$TcpIpAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/channelz/v1/Address$TcpIpAddress;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/Address$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->e:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->access$402(Lio/grpc/channelz/v1/Address$TcpIpAddress;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 3
    iget v1, p0, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->f:I

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->access$502(Lio/grpc/channelz/v1/Address$TcpIpAddress;I)I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    return-object v0
.end method

.method public a0()Lio/grpc/channelz/v1/Address$TcpIpAddress;
    .locals 1

    invoke-static {}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->getDefaultInstance()Lio/grpc/channelz/v1/Address$TcpIpAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->X()Lio/grpc/channelz/v1/Address$TcpIpAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->X()Lio/grpc/channelz/v1/Address$TcpIpAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->i0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

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

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->Z()Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->access$700()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Address$TcpIpAddress;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->g0(Lio/grpc/channelz/v1/Address$TcpIpAddress;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

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

    check-cast p2, Lio/grpc/channelz/v1/Address$TcpIpAddress;
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
    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->g0(Lio/grpc/channelz/v1/Address$TcpIpAddress;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    :cond_1
    throw p1
.end method

.method public e0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/channelz/v1/Address$TcpIpAddress;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/channelz/v1/Address$TcpIpAddress;

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->g0(Lio/grpc/channelz/v1/Address$TcpIpAddress;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/grpc/channelz/v1/Address$TcpIpAddress;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->getDefaultInstance()Lio/grpc/channelz/v1/Address$TcpIpAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->j0(Lcom/google/protobuf/ByteString;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->getPort()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->k0(I)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    .line 6
    :cond_2
    invoke-static {p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress;->access$600(Lio/grpc/channelz/v1/Address$TcpIpAddress;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->h0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->a0()Lio/grpc/channelz/v1/Address$TcpIpAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->a0()Lio/grpc/channelz/v1/Address$TcpIpAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->E:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public final h0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    return-object p1
.end method

.method public j0(Lcom/google/protobuf/ByteString;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->e:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(I)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final l0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->Z()Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->e0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Address$TcpIpAddress$b;->h0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Address$TcpIpAddress$b;

    move-result-object p1

    return-object p1
.end method
