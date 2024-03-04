.class public final Lio/opencensus/proto/stats/v1/Measurement$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/stats/v1/Measurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/opencensus/proto/stats/v1/Measurement$c;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/opencensus/proto/stats/v1/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/opencensus/proto/stats/v1/Tag;",
            "Lio/opencensus/proto/stats/v1/Tag$b;",
            "Lio/opencensus/proto/stats/v1/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:Lcom/google/protobuf/Timestamp;

.field private l:Lcom/google/protobuf/q2;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->e:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->j:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->k:Lcom/google/protobuf/Timestamp;

    .line 8
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->e:I

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->j:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->k:Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/stats/v1/Measurement$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/proto/stats/v1/Measurement$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 3

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/opencensus/proto/stats/v1/Tag;",
            "Lio/opencensus/proto/stats/v1/Tag$b;",
            "Lio/opencensus/proto/stats/v1/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    iget v2, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

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

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/opencensus/proto/stats/v1/Measurement;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/Measurement$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->Z()Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->Y()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->Y()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/e;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/stats/v1/Measurement;

    const-class v2, Lio/opencensus/proto/stats/v1/Measurement$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/Measurement$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;->h0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/Measurement$c;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;->o0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/Measurement$c;

    return-object p1
.end method

.method public X()Lio/opencensus/proto/stats/v1/Measurement;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->Y()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/opencensus/proto/stats/v1/Measurement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/opencensus/proto/stats/v1/Measurement;
    .locals 3

    .line 1
    new-instance v0, Lio/opencensus/proto/stats/v1/Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/proto/stats/v1/Measurement;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/stats/v1/Measurement$a;)V

    .line 2
    iget v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    .line 3
    iget-object v2, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    .line 5
    iget v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    .line 6
    :cond_0
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement;->access$402(Lio/opencensus/proto/stats/v1/Measurement;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement;->access$402(Lio/opencensus/proto/stats/v1/Measurement;Ljava/util/List;)Ljava/util/List;

    .line 8
    :goto_0
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement;->access$502(Lio/opencensus/proto/stats/v1/Measurement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement;->access$602(Lio/opencensus/proto/stats/v1/Measurement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    iget v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 12
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement;->access$602(Lio/opencensus/proto/stats/v1/Measurement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->k:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement;->access$702(Lio/opencensus/proto/stats/v1/Measurement;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement;->access$702(Lio/opencensus/proto/stats/v1/Measurement;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    :goto_1
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement;->access$802(Lio/opencensus/proto/stats/v1/Measurement;I)I

    .line 17
    iget v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->e:I

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/Measurement;->access$902(Lio/opencensus/proto/stats/v1/Measurement;I)I

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/opencensus/proto/stats/v1/Measurement$c;

    return-object v0
.end method

.method public b0()Lio/opencensus/proto/stats/v1/Measurement;
    .locals 1

    invoke-static {}, Lio/opencensus/proto/stats/v1/Measurement;->getDefaultInstance()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->X()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->X()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/Measurement$c;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/Measurement$c;

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

    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->Z()Lio/opencensus/proto/stats/v1/Measurement$c;

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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/Measurement$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;->o0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/Measurement;->access$1200()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/Measurement;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;->i0(Lio/opencensus/proto/stats/v1/Measurement;)Lio/opencensus/proto/stats/v1/Measurement$c;

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

    check-cast p2, Lio/opencensus/proto/stats/v1/Measurement;
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
    invoke-virtual {p0, v0}, Lio/opencensus/proto/stats/v1/Measurement$c;->i0(Lio/opencensus/proto/stats/v1/Measurement;)Lio/opencensus/proto/stats/v1/Measurement$c;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->b0()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->b0()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/e;->o:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/opencensus/proto/stats/v1/Measurement;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/opencensus/proto/stats/v1/Measurement;

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;->i0(Lio/opencensus/proto/stats/v1/Measurement;)Lio/opencensus/proto/stats/v1/Measurement$c;

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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/Measurement$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/opencensus/proto/stats/v1/Measurement;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/opencensus/proto/stats/v1/Measurement;->getDefaultInstance()Lio/opencensus/proto/stats/v1/Measurement;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_2

    .line 3
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/Measurement;->access$400(Lio/opencensus/proto/stats/v1/Measurement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/Measurement;->access$400(Lio/opencensus/proto/stats/v1/Measurement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    .line 6
    iget v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->a0()V

    .line 8
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    invoke-static {p1}, Lio/opencensus/proto/stats/v1/Measurement;->access$400(Lio/opencensus/proto/stats/v1/Measurement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/Measurement;->access$400(Lio/opencensus/proto/stats/v1/Measurement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    .line 14
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/Measurement;->access$400(Lio/opencensus/proto/stats/v1/Measurement;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->h:Ljava/util/List;

    .line 15
    iget v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->g:I

    .line 16
    invoke-static {}, Lio/opencensus/proto/stats/v1/Measurement;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->i:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/opencensus/proto/stats/v1/Measurement;->access$400(Lio/opencensus/proto/stats/v1/Measurement;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 19
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getMeasureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/Measurement;->access$500(Lio/opencensus/proto/stats/v1/Measurement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->j:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 22
    :cond_6
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/stats/v1/Measurement$c;->j0(Lcom/google/protobuf/Timestamp;)Lio/opencensus/proto/stats/v1/Measurement$c;

    .line 24
    :cond_7
    sget-object v0, Lio/opencensus/proto/stats/v1/Measurement$b;->a:[I

    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getValueCase()Lio/opencensus/proto/stats/v1/Measurement$ValueCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto :goto_2

    .line 25
    :cond_8
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/proto/stats/v1/Measurement$c;->n0(J)Lio/opencensus/proto/stats/v1/Measurement$c;

    goto :goto_2

    .line 26
    :cond_9
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measurement;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/proto/stats/v1/Measurement$c;->l0(D)Lio/opencensus/proto/stats/v1/Measurement$c;

    .line 27
    :goto_2
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/Measurement;->access$1100(Lio/opencensus/proto/stats/v1/Measurement;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/Measurement$c;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/Timestamp;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->k:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->k:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->k:Lcom/google/protobuf/Timestamp;

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

.method public final k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/Measurement$c;

    return-object p1
.end method

.method public l0(D)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 1

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->e:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/Measurement$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/Measurement$c;->Z()Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object v0

    return-object v0
.end method

.method public n0(J)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 1

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->e:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/Measurement$c;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/Measurement$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->V(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/Measurement$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/Measurement$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;->h0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/Measurement$c;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/Measurement$c;

    move-result-object p1

    return-object p1
.end method
