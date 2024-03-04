.class public final Lio/opencensus/proto/metrics/v1/DistributionValue$e;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/metrics/v1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/metrics/v1/DistributionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/opencensus/proto/metrics/v1/DistributionValue$e;",
        ">;",
        "Lio/opencensus/proto/metrics/v1/a;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:J

.field private g:D

.field private h:D

.field private i:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$b;",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$Bucket;",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$Bucket$b;",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$d;",
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
    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->i:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->i:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 3

    .line 1
    iget v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    :cond_0
    return-void
.end method

.method private b0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$Bucket;",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$Bucket$b;",
            "Lio/opencensus/proto/metrics/v1/DistributionValue$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    iget v2, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

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

    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->b0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->Z()Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->Y()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->Y()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/metrics/v1/DistributionValue;

    const-class v2, Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->i0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->q0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    return-object p1
.end method

.method public X()Lio/opencensus/proto/metrics/v1/DistributionValue;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->Y()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/opencensus/proto/metrics/v1/DistributionValue;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/opencensus/proto/metrics/v1/DistributionValue;
    .locals 3

    .line 1
    new-instance v0, Lio/opencensus/proto/metrics/v1/DistributionValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V

    .line 2
    iget-wide v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->f:J

    invoke-static {v0, v1, v2}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4202(Lio/opencensus/proto/metrics/v1/DistributionValue;J)J

    .line 3
    iget-wide v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->g:D

    invoke-static {v0, v1, v2}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4302(Lio/opencensus/proto/metrics/v1/DistributionValue;D)D

    .line 4
    iget-wide v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->h:D

    invoke-static {v0, v1, v2}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4402(Lio/opencensus/proto/metrics/v1/DistributionValue;D)D

    .line 5
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->i:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    invoke-static {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4502(Lio/opencensus/proto/metrics/v1/DistributionValue;Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;)Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    invoke-static {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4502(Lio/opencensus/proto/metrics/v1/DistributionValue;Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;)Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    .line 8
    :goto_0
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    if-nez v1, :cond_2

    .line 9
    iget v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    .line 11
    iget v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    .line 12
    :cond_1
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4602(Lio/opencensus/proto/metrics/v1/DistributionValue;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4602(Lio/opencensus/proto/metrics/v1/DistributionValue;Ljava/util/List;)Ljava/util/List;

    :goto_1
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4702(Lio/opencensus/proto/metrics/v1/DistributionValue;I)I

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->X()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->X()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

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

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->Z()Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/opencensus/proto/metrics/v1/DistributionValue;
    .locals 1

    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getDefaultInstance()Lio/opencensus/proto/metrics/v1/DistributionValue;

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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->q0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->i:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;->newBuilder(Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;)Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$b;->h0(Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;)Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$b;->Y()Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->i:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->i:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->d0()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->d0()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->m:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$5000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->j0(Lio/opencensus/proto/metrics/v1/DistributionValue;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

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

    check-cast p2, Lio/opencensus/proto/metrics/v1/DistributionValue;
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
    invoke-virtual {p0, v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->j0(Lio/opencensus/proto/metrics/v1/DistributionValue;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    .line 6
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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/opencensus/proto/metrics/v1/DistributionValue;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue;

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->j0(Lio/opencensus/proto/metrics/v1/DistributionValue;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/opencensus/proto/metrics/v1/DistributionValue;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 5

    .line 1
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getDefaultInstance()Lio/opencensus/proto/metrics/v1/DistributionValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l0(J)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getSum()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getSum()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->n0(D)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getSumOfSquaredDeviation()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getSumOfSquaredDeviation()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->o0(D)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->hasBucketOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->getBucketOptions()Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->g0(Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    .line 10
    :cond_4
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    if-nez v0, :cond_6

    .line 11
    invoke-static {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4600(Lio/opencensus/proto/metrics/v1/DistributionValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 12
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4600(Lio/opencensus/proto/metrics/v1/DistributionValue;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    .line 14
    iget v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    goto :goto_0

    .line 15
    :cond_5
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->a0()V

    .line 16
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    invoke-static {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4600(Lio/opencensus/proto/metrics/v1/DistributionValue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 18
    :cond_6
    invoke-static {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4600(Lio/opencensus/proto/metrics/v1/DistributionValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 19
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    .line 22
    invoke-static {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4600(Lio/opencensus/proto/metrics/v1/DistributionValue;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k:Ljava/util/List;

    .line 23
    iget v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->e:I

    .line 24
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4800()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->b0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 26
    :cond_8
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->l:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4600(Lio/opencensus/proto/metrics/v1/DistributionValue;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 27
    :cond_9
    :goto_1
    invoke-static {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue;->access$4900(Lio/opencensus/proto/metrics/v1/DistributionValue;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    return-object p1
.end method

.method public l0(J)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->f:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->Z()Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object v0

    return-object v0
.end method

.method public n0(D)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->g:D

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(D)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->h:D

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final q0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->V(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->i0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$e;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$e;

    move-result-object p1

    return-object p1
.end method
