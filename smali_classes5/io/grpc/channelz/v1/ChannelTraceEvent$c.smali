.class public final Lio/grpc/channelz/v1/ChannelTraceEvent$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/ChannelTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/channelz/v1/ChannelTraceEvent$c;",
        ">;",
        "Lio/grpc/channelz/v1/f;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:Lcom/google/protobuf/Timestamp;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Timestamp;",
            "Lcom/google/protobuf/Timestamp$b;",
            "Lcom/google/protobuf/z2;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/ChannelRef;",
            "Lio/grpc/channelz/v1/ChannelRef$b;",
            "Lio/grpc/channelz/v1/e;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/SubchannelRef;",
            "Lio/grpc/channelz/v1/SubchannelRef$b;",
            "Lio/grpc/channelz/v1/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->g:Ljava/lang/Object;

    .line 6
    iput v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->h:I

    .line 7
    invoke-direct {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->g:Ljava/lang/Object;

    .line 11
    iput p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->h:I

    .line 12
    invoke-direct {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/ChannelTraceEvent$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/channelz/v1/ChannelTraceEvent$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->Z()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->Y()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->Y()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/ChannelTraceEvent;

    const-class v2, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->k0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->g0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    return-object p1
.end method

.method public X()Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->Y()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/ChannelTraceEvent$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$402(Lio/grpc/channelz/v1/ChannelTraceEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->h:I

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$502(Lio/grpc/channelz/v1/ChannelTraceEvent;I)I

    .line 4
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->i:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$602(Lio/grpc/channelz/v1/ChannelTraceEvent;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$602(Lio/grpc/channelz/v1/ChannelTraceEvent;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 7
    :goto_0
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$702(Lio/grpc/channelz/v1/ChannelTraceEvent;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$702(Lio/grpc/channelz/v1/ChannelTraceEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    :goto_1
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$702(Lio/grpc/channelz/v1/ChannelTraceEvent;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$702(Lio/grpc/channelz/v1/ChannelTraceEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    :goto_2
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$802(Lio/grpc/channelz/v1/ChannelTraceEvent;I)I

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    return-object v0
.end method

.method public a0()Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1

    invoke-static {}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getDefaultInstance()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->X()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->X()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

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

    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->Z()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/channelz/v1/ChannelRef;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->k:Lcom/google/protobuf/q2;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/channelz/v1/ChannelRef;->getDefaultInstance()Lio/grpc/channelz/v1/ChannelRef;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/channelz/v1/ChannelRef;

    invoke-static {v0}, Lio/grpc/channelz/v1/ChannelRef;->newBuilder(Lio/grpc/channelz/v1/ChannelRef;)Lio/grpc/channelz/v1/ChannelRef$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/ChannelRef$b;->g0(Lio/grpc/channelz/v1/ChannelRef;)Lio/grpc/channelz/v1/ChannelRef$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelRef$b;->Y()Lio/grpc/channelz/v1/ChannelRef;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->k:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$1000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/ChannelTraceEvent;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->h0(Lio/grpc/channelz/v1/ChannelTraceEvent;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

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

    check-cast p2, Lio/grpc/channelz/v1/ChannelTraceEvent;
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
    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->h0(Lio/grpc/channelz/v1/ChannelTraceEvent;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    :cond_1
    throw p1
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/channelz/v1/ChannelTraceEvent;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/channelz/v1/ChannelTraceEvent;

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->h0(Lio/grpc/channelz/v1/ChannelTraceEvent;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->a0()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->a0()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/channelz/v1/ChannelTraceEvent;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getDefaultInstance()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$400(Lio/grpc/channelz/v1/ChannelTraceEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->g:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-static {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$500(Lio/grpc/channelz/v1/ChannelTraceEvent;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getSeverityValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->m0(I)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    .line 7
    :cond_2
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->j0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    .line 9
    :cond_3
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getChildRefCase()Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getSubchannelRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->i0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getChannelRef()Lio/grpc/channelz/v1/ChannelRef;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->d0(Lio/grpc/channelz/v1/ChannelRef;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    .line 12
    :goto_0
    invoke-static {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->access$900(Lio/grpc/channelz/v1/ChannelTraceEvent;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->k0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->l:Lcom/google/protobuf/q2;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/channelz/v1/SubchannelRef;->getDefaultInstance()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/channelz/v1/SubchannelRef;

    invoke-static {v0}, Lio/grpc/channelz/v1/SubchannelRef;->newBuilder(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/SubchannelRef$b;->g0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SubchannelRef$b;->Y()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->l:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e:I

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->i:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->i:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->i:Lcom/google/protobuf/Timestamp;

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

.method public final k0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    return-object p1
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    return-object p1
.end method

.method public m0(I)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->h:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->Z()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->g0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->k0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method
