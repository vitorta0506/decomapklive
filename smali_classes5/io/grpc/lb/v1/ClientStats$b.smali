.class public final Lio/grpc/lb/v1/ClientStats$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/lb/v1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/lb/v1/ClientStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/lb/v1/ClientStats$b;",
        ">;",
        "Lio/grpc/lb/v1/a;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lcom/google/protobuf/Timestamp;

.field private g:Lcom/google/protobuf/q2;
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

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/lb/v1/ClientStatsPerToken;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/lb/v1/ClientStatsPerToken;",
            "Lio/grpc/lb/v1/ClientStatsPerToken$b;",
            "Lio/grpc/lb/v1/b;",
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

    iput-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lio/grpc/lb/v1/ClientStats$b;->g0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lio/grpc/lb/v1/ClientStats$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/lb/v1/ClientStats$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/lb/v1/ClientStats$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/lb/v1/ClientStats$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/lb/v1/ClientStatsPerToken;",
            "Lio/grpc/lb/v1/ClientStatsPerToken$b;",
            "Lio/grpc/lb/v1/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    iget v2, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

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

    iput-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private g0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/lb/v1/ClientStats;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/lb/v1/ClientStats$b;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/ClientStats$b;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->a0()Lio/grpc/lb/v1/ClientStats$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->Z()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->Z()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/lb/v1/g;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/lb/v1/ClientStats;

    const-class v2, Lio/grpc/lb/v1/ClientStats$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/ClientStats$b;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/ClientStats$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lio/grpc/lb/v1/ClientStatsPerToken;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lio/grpc/lb/v1/ClientStats$b;->b0()V

    .line 4
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/l2;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/l2;

    :goto_0
    return-object p0
.end method

.method public X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/ClientStats$b;

    return-object p1
.end method

.method public Y()Lio/grpc/lb/v1/ClientStats;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->Z()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/lb/v1/ClientStats;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Z()Lio/grpc/lb/v1/ClientStats;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/lb/v1/ClientStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/lb/v1/ClientStats;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/lb/v1/ClientStats$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/lb/v1/ClientStats$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/lb/v1/ClientStats$b;->f:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/lb/v1/ClientStats;->access$402(Lio/grpc/lb/v1/ClientStats;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/lb/v1/ClientStats;->access$402(Lio/grpc/lb/v1/ClientStats;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 5
    :goto_0
    iget-wide v1, p0, Lio/grpc/lb/v1/ClientStats$b;->h:J

    invoke-static {v0, v1, v2}, Lio/grpc/lb/v1/ClientStats;->access$502(Lio/grpc/lb/v1/ClientStats;J)J

    .line 6
    iget-wide v1, p0, Lio/grpc/lb/v1/ClientStats$b;->i:J

    invoke-static {v0, v1, v2}, Lio/grpc/lb/v1/ClientStats;->access$602(Lio/grpc/lb/v1/ClientStats;J)J

    .line 7
    iget-wide v1, p0, Lio/grpc/lb/v1/ClientStats$b;->j:J

    invoke-static {v0, v1, v2}, Lio/grpc/lb/v1/ClientStats;->access$702(Lio/grpc/lb/v1/ClientStats;J)J

    .line 8
    iget-wide v1, p0, Lio/grpc/lb/v1/ClientStats$b;->k:J

    invoke-static {v0, v1, v2}, Lio/grpc/lb/v1/ClientStats;->access$802(Lio/grpc/lb/v1/ClientStats;J)J

    .line 9
    iget-object v1, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    if-nez v1, :cond_2

    .line 10
    iget v1, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    .line 12
    iget v1, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    .line 13
    :cond_1
    iget-object v1, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/lb/v1/ClientStats;->access$902(Lio/grpc/lb/v1/ClientStats;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/lb/v1/ClientStats;->access$902(Lio/grpc/lb/v1/ClientStats;Ljava/util/List;)Ljava/util/List;

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public a0()Lio/grpc/lb/v1/ClientStats$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/lb/v1/ClientStats$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->Y()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->Y()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/ClientStats$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/ClientStats$b;

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

    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->a0()Lio/grpc/lb/v1/ClientStats$b;

    move-result-object v0

    return-object v0
.end method

.method public e0()Lio/grpc/lb/v1/ClientStats;
    .locals 1

    invoke-static {}, Lio/grpc/lb/v1/ClientStats;->getDefaultInstance()Lio/grpc/lb/v1/ClientStats;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/ClientStats$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->e0()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->e0()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/lb/v1/g;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/lb/v1/ClientStats;->access$1200()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/ClientStats;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;->j0(Lio/grpc/lb/v1/ClientStats;)Lio/grpc/lb/v1/ClientStats$b;

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

    check-cast p2, Lio/grpc/lb/v1/ClientStats;
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
    invoke-virtual {p0, v0}, Lio/grpc/lb/v1/ClientStats$b;->j0(Lio/grpc/lb/v1/ClientStats;)Lio/grpc/lb/v1/ClientStats$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/ClientStats$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/lb/v1/ClientStats;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/lb/v1/ClientStats;

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;->j0(Lio/grpc/lb/v1/ClientStats;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/grpc/lb/v1/ClientStats;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/lb/v1/ClientStats;->getDefaultInstance()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/lb/v1/ClientStats$b;->k0(Lcom/google/protobuf/Timestamp;)Lio/grpc/lb/v1/ClientStats$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->getNumCallsStarted()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->getNumCallsStarted()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/lb/v1/ClientStats$b;->r0(J)Lio/grpc/lb/v1/ClientStats$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->getNumCallsFinished()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->getNumCallsFinished()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/lb/v1/ClientStats$b;->n0(J)Lio/grpc/lb/v1/ClientStats$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->getNumCallsFinishedWithClientFailedToSend()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->getNumCallsFinishedWithClientFailedToSend()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/lb/v1/ClientStats$b;->q0(J)Lio/grpc/lb/v1/ClientStats$b;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->getNumCallsFinishedKnownReceived()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {p1}, Lio/grpc/lb/v1/ClientStats;->getNumCallsFinishedKnownReceived()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/lb/v1/ClientStats$b;->o0(J)Lio/grpc/lb/v1/ClientStats$b;

    .line 12
    :cond_5
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    if-nez v0, :cond_7

    .line 13
    invoke-static {p1}, Lio/grpc/lb/v1/ClientStats;->access$900(Lio/grpc/lb/v1/ClientStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 14
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {p1}, Lio/grpc/lb/v1/ClientStats;->access$900(Lio/grpc/lb/v1/ClientStats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    .line 16
    iget v0, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    goto :goto_0

    .line 17
    :cond_6
    invoke-direct {p0}, Lio/grpc/lb/v1/ClientStats$b;->b0()V

    .line 18
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/lb/v1/ClientStats;->access$900(Lio/grpc/lb/v1/ClientStats;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 20
    :cond_7
    invoke-static {p1}, Lio/grpc/lb/v1/ClientStats;->access$900(Lio/grpc/lb/v1/ClientStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 21
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    .line 24
    invoke-static {p1}, Lio/grpc/lb/v1/ClientStats;->access$900(Lio/grpc/lb/v1/ClientStats;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/lb/v1/ClientStats$b;->l:Ljava/util/List;

    .line 25
    iget v1, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/lb/v1/ClientStats$b;->e:I

    .line 26
    invoke-static {}, Lio/grpc/lb/v1/ClientStats;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-direct {p0}, Lio/grpc/lb/v1/ClientStats$b;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_8
    iput-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 28
    :cond_9
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->m:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/lb/v1/ClientStats;->access$900(Lio/grpc/lb/v1/ClientStats;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 29
    :cond_a
    :goto_1
    invoke-static {p1}, Lio/grpc/lb/v1/ClientStats;->access$1100(Lio/grpc/lb/v1/ClientStats;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/ClientStats$b;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lcom/google/protobuf/Timestamp;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->f:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/lb/v1/ClientStats$b;->f:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/lb/v1/ClientStats$b;->f:Lcom/google/protobuf/Timestamp;

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

.method public final l0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/ClientStats$b;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/ClientStats$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/lb/v1/ClientStats$b;->a0()Lio/grpc/lb/v1/ClientStats$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(J)Lio/grpc/lb/v1/ClientStats$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/lb/v1/ClientStats$b;->i:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(J)Lio/grpc/lb/v1/ClientStats$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/lb/v1/ClientStats$b;->k:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(J)Lio/grpc/lb/v1/ClientStats$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/lb/v1/ClientStats$b;->j:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public r0(J)Lio/grpc/lb/v1/ClientStats$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/lb/v1/ClientStats$b;->h:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public s0(Lcom/google/protobuf/Timestamp;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/lb/v1/ClientStats$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/lb/v1/ClientStats$b;->f:Lcom/google/protobuf/Timestamp;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method

.method public final t0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/ClientStats$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/lb/v1/ClientStats$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/ClientStats$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/lb/v1/ClientStats$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object p1

    return-object p1
.end method