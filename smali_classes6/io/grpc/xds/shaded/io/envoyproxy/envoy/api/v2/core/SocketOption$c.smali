.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/o0;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:J

.field private i:J

.field private j:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->e:I

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->g:Ljava/lang/Object;

    .line 6
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->j:I

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->e:I

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->g:Ljava/lang/Object;

    .line 11
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->j:I

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/p0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->h0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->e0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->h:J

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;J)J

    .line 4
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->i:J

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;J)J

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->j:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;I)I

    .line 10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;I)I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$1100()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    :cond_1
    throw p1
.end method

.method public e0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->g:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getLevel()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getLevel()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->l0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    .line 7
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getName()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getName()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->m0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    .line 9
    :cond_3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getStateValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->n0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    .line 11
    :cond_4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getValueCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$ValueCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getBufValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->i0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->getIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->k0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    .line 14
    :goto_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->h0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/p0;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public final h0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->e:I

    .line 3
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    return-object p1
.end method

.method public k0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 1

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->e:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->h:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->i:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object v0

    return-object v0
.end method

.method public n0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->j:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->e0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;->h0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption$c;

    move-result-object p1

    return-object p1
.end method
