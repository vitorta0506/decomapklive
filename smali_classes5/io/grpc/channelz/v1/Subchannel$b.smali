.class public final Lio/grpc/channelz/v1/Subchannel$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/Subchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/channelz/v1/Subchannel$b;",
        ">;",
        "Lio/grpc/channelz/v1/q;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lio/grpc/channelz/v1/SubchannelRef;

.field private g:Lcom/google/protobuf/q2;
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

.field private h:Lio/grpc/channelz/v1/ChannelData;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/ChannelData;",
            "Lio/grpc/channelz/v1/ChannelData$b;",
            "Lio/grpc/channelz/v1/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/ChannelRef;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/ChannelRef;",
            "Lio/grpc/channelz/v1/ChannelRef$b;",
            "Lio/grpc/channelz/v1/e;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SubchannelRef;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/SubchannelRef;",
            "Lio/grpc/channelz/v1/SubchannelRef$b;",
            "Lio/grpc/channelz/v1/r;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SocketRef;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/SocketRef;",
            "Lio/grpc/channelz/v1/SocketRef$b;",
            "Lio/grpc/channelz/v1/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->j0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->j0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/Subchannel$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/channelz/v1/Subchannel$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/ChannelRef;",
            "Lio/grpc/channelz/v1/ChannelRef$b;",
            "Lio/grpc/channelz/v1/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    iget v2, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private h0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/SocketRef;",
            "Lio/grpc/channelz/v1/SocketRef$b;",
            "Lio/grpc/channelz/v1/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    iget v2, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private i0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/SubchannelRef;",
            "Lio/grpc/channelz/v1/SubchannelRef$b;",
            "Lio/grpc/channelz/v1/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    iget v2, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private j0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/channelz/v1/Subchannel;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->e0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->i0()Lcom/google/protobuf/l2;

    .line 4
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->h0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Subchannel$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->Z()Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->Y()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->Y()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/Subchannel;

    const-class v2, Lio/grpc/channelz/v1/Subchannel$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Subchannel$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;->m0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Subchannel$b;->r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;->s0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Subchannel$b;

    return-object p1
.end method

.method public X()Lio/grpc/channelz/v1/Subchannel;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->Y()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/channelz/v1/Subchannel;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/channelz/v1/Subchannel;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/Subchannel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/channelz/v1/Subchannel;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/Subchannel$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->f:Lio/grpc/channelz/v1/SubchannelRef;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$402(Lio/grpc/channelz/v1/Subchannel;Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/channelz/v1/SubchannelRef;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$402(Lio/grpc/channelz/v1/Subchannel;Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->h:Lio/grpc/channelz/v1/ChannelData;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$502(Lio/grpc/channelz/v1/Subchannel;Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/ChannelData;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/channelz/v1/ChannelData;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$502(Lio/grpc/channelz/v1/Subchannel;Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/ChannelData;

    .line 8
    :goto_1
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 9
    iget v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    .line 11
    iget v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    .line 12
    :cond_2
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$602(Lio/grpc/channelz/v1/Subchannel;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$602(Lio/grpc/channelz/v1/Subchannel;Ljava/util/List;)Ljava/util/List;

    .line 14
    :goto_2
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    if-nez v1, :cond_5

    .line 15
    iget v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    .line 17
    iget v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    .line 18
    :cond_4
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$702(Lio/grpc/channelz/v1/Subchannel;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$702(Lio/grpc/channelz/v1/Subchannel;Ljava/util/List;)Ljava/util/List;

    .line 20
    :goto_3
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    if-nez v1, :cond_7

    .line 21
    iget v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 22
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    .line 23
    iget v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    .line 24
    :cond_6
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$802(Lio/grpc/channelz/v1/Subchannel;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 25
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Subchannel;->access$802(Lio/grpc/channelz/v1/Subchannel;Ljava/util/List;)Ljava/util/List;

    .line 26
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/channelz/v1/Subchannel$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/channelz/v1/Subchannel$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->X()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->X()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Subchannel$b;->r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Subchannel$b;

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

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->Z()Lio/grpc/channelz/v1/Subchannel$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Subchannel$b;->l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;->s0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public g0()Lio/grpc/channelz/v1/Subchannel;
    .locals 1

    invoke-static {}, Lio/grpc/channelz/v1/Subchannel;->getDefaultInstance()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->g0()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->g0()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Subchannel$b;->l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public k0(Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->h:Lio/grpc/channelz/v1/ChannelData;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/channelz/v1/ChannelData;->newBuilder(Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/ChannelData$b;->g0(Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData$b;->Y()Lio/grpc/channelz/v1/ChannelData;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel$b;->h:Lio/grpc/channelz/v1/ChannelData;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel$b;->h:Lio/grpc/channelz/v1/ChannelData;

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

.method public l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/channelz/v1/Subchannel;->access$1300()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Subchannel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;->n0(Lio/grpc/channelz/v1/Subchannel;)Lio/grpc/channelz/v1/Subchannel$b;

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

    check-cast p2, Lio/grpc/channelz/v1/Subchannel;
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
    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Subchannel$b;->n0(Lio/grpc/channelz/v1/Subchannel;)Lio/grpc/channelz/v1/Subchannel$b;

    :cond_1
    throw p1
.end method

.method public m0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/channelz/v1/Subchannel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/channelz/v1/Subchannel;

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;->n0(Lio/grpc/channelz/v1/Subchannel;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel$b;->Z()Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lio/grpc/channelz/v1/Subchannel;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/channelz/v1/Subchannel;->getDefaultInstance()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->getRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Subchannel$b;->o0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/Subchannel$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->getData()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Subchannel$b;->k0(Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/Subchannel$b;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 7
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$600(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$600(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    .line 10
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->a0()V

    .line 12
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$600(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 14
    :cond_4
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$600(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 17
    iput-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    .line 18
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$600(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->j:Ljava/util/List;

    .line 19
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    .line 20
    invoke-static {}, Lio/grpc/channelz/v1/Subchannel;->access$900()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->e0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 22
    :cond_6
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->k:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$600(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 23
    :cond_7
    :goto_2
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    if-nez v0, :cond_9

    .line 24
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$700(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 25
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$700(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    .line 27
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    goto :goto_3

    .line 28
    :cond_8
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->d0()V

    .line 29
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$700(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_5

    .line 31
    :cond_9
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$700(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 32
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 34
    iput-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    .line 35
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$700(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->l:Ljava/util/List;

    .line 36
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    .line 37
    invoke-static {}, Lio/grpc/channelz/v1/Subchannel;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 38
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->i0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    goto :goto_5

    .line 39
    :cond_b
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->m:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$700(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 40
    :cond_c
    :goto_5
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    if-nez v0, :cond_e

    .line 41
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$800(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 42
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$800(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    .line 44
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    goto :goto_6

    .line 45
    :cond_d
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->b0()V

    .line 46
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$800(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_7

    .line 48
    :cond_e
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$800(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 49
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 51
    iput-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    .line 52
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$800(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->n:Ljava/util/List;

    .line 53
    iget v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->e:I

    .line 54
    invoke-static {}, Lio/grpc/channelz/v1/Subchannel;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel$b;->h0()Lcom/google/protobuf/l2;

    move-result-object v1

    :cond_f
    iput-object v1, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    goto :goto_7

    .line 56
    :cond_10
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->o:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$800(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 57
    :cond_11
    :goto_7
    invoke-static {p1}, Lio/grpc/channelz/v1/Subchannel;->access$1200(Lio/grpc/channelz/v1/Subchannel;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Subchannel$b;

    .line 58
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel$b;->f:Lio/grpc/channelz/v1/SubchannelRef;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/channelz/v1/SubchannelRef;->newBuilder(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/SubchannelRef$b;->g0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SubchannelRef$b;->Y()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel$b;->f:Lio/grpc/channelz/v1/SubchannelRef;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel$b;->f:Lio/grpc/channelz/v1/SubchannelRef;

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

.method public final q0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Subchannel$b;

    return-object p1
.end method

.method public r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Subchannel$b;

    return-object p1
.end method

.method public final s0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Subchannel$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Subchannel$b;->l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;->m0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method
