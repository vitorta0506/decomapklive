.class public final Lcom/google/api/Distribution$d;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/Distribution$d;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:J

.field private g:D

.field private h:D

.field private i:Lcom/google/api/Distribution$Range;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/api/Distribution$Range;",
            "Lcom/google/api/Distribution$Range$b;",
            "Lcom/google/api/Distribution$f;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/api/Distribution$BucketOptions;

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/api/Distribution$BucketOptions;",
            "Lcom/google/api/Distribution$BucketOptions$b;",
            "Lcom/google/api/Distribution$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/u0$i;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/Distribution$Exemplar;",
            "Lcom/google/api/Distribution$Exemplar$b;",
            "Lcom/google/api/Distribution$e;",
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
    invoke-static {}, Lcom/google/api/Distribution;->access$7600()Lcom/google/protobuf/u0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$d;->m:Lcom/google/protobuf/u0$i;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcom/google/api/Distribution$d;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/Distribution$d;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 8
    invoke-static {}, Lcom/google/api/Distribution;->access$7600()Lcom/google/protobuf/u0$i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$d;->m:Lcom/google/protobuf/u0$i;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/google/api/Distribution$d;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/Distribution$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$d;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$d;->m:Lcom/google/protobuf/u0$i;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$7700(Lcom/google/protobuf/u0$i;)Lcom/google/protobuf/u0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$d;->m:Lcom/google/protobuf/u0$i;

    .line 3
    iget v0, p0, Lcom/google/api/Distribution$d;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/Distribution$d;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$d;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/api/Distribution$d;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/api/Distribution$d;->e:I

    :cond_0
    return-void
.end method

.method private e0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/Distribution$Exemplar;",
            "Lcom/google/api/Distribution$Exemplar$b;",
            "Lcom/google/api/Distribution$e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    iget v2, p0, Lcom/google/api/Distribution$d;->e:I

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

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private g0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/Distribution;->access$6300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/api/Distribution$d;->e0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->Z()Lcom/google/api/Distribution$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->Y()Lcom/google/api/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->Y()Lcom/google/api/Distribution;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/v;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/Distribution;

    const-class v2, Lcom/google/api/Distribution$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$d;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$d;->k0(Lcom/google/protobuf/l1;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$d;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$d;->s0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$d;

    return-object p1
.end method

.method public X()Lcom/google/api/Distribution;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->Y()Lcom/google/api/Distribution;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/Distribution;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/Distribution;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/Distribution;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/Distribution;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/Distribution$a;)V

    .line 2
    iget-wide v1, p0, Lcom/google/api/Distribution$d;->f:J

    invoke-static {v0, v1, v2}, Lcom/google/api/Distribution;->access$6602(Lcom/google/api/Distribution;J)J

    .line 3
    iget-wide v1, p0, Lcom/google/api/Distribution$d;->g:D

    invoke-static {v0, v1, v2}, Lcom/google/api/Distribution;->access$6702(Lcom/google/api/Distribution;D)D

    .line 4
    iget-wide v1, p0, Lcom/google/api/Distribution$d;->h:D

    invoke-static {v0, v1, v2}, Lcom/google/api/Distribution;->access$6802(Lcom/google/api/Distribution;D)D

    .line 5
    iget-object v1, p0, Lcom/google/api/Distribution$d;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/api/Distribution$d;->i:Lcom/google/api/Distribution$Range;

    invoke-static {v0, v1}, Lcom/google/api/Distribution;->access$6902(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Range;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/api/Distribution$Range;

    invoke-static {v0, v1}, Lcom/google/api/Distribution;->access$6902(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Range;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/api/Distribution$d;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/google/api/Distribution$d;->k:Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, v1}, Lcom/google/api/Distribution;->access$7002(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, v1}, Lcom/google/api/Distribution;->access$7002(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions;

    .line 11
    :goto_1
    iget v1, p0, Lcom/google/api/Distribution$d;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/google/api/Distribution$d;->m:Lcom/google/protobuf/u0$i;

    invoke-interface {v1}, Lcom/google/protobuf/u0$j;->C()V

    .line 13
    iget v1, p0, Lcom/google/api/Distribution$d;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/Distribution$d;->e:I

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/google/api/Distribution$d;->m:Lcom/google/protobuf/u0$i;

    invoke-static {v0, v1}, Lcom/google/api/Distribution;->access$7102(Lcom/google/api/Distribution;Lcom/google/protobuf/u0$i;)Lcom/google/protobuf/u0$i;

    .line 15
    iget-object v1, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    if-nez v1, :cond_4

    .line 16
    iget v1, p0, Lcom/google/api/Distribution$d;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    .line 18
    iget v1, p0, Lcom/google/api/Distribution$d;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/api/Distribution$d;->e:I

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/api/Distribution;->access$7202(Lcom/google/api/Distribution;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/Distribution;->access$7202(Lcom/google/api/Distribution;Ljava/util/List;)Ljava/util/List;

    .line 21
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/Distribution$d;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$d;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->X()Lcom/google/api/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->X()Lcom/google/api/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$d;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$d;

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

    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->Z()Lcom/google/api/Distribution$d;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/api/Distribution;
    .locals 1

    invoke-static {}, Lcom/google/api/Distribution;->getDefaultInstance()Lcom/google/api/Distribution;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$d;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$d;->s0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->d0()Lcom/google/api/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->d0()Lcom/google/api/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/v;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$d;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$d;->k:Lcom/google/api/Distribution$BucketOptions;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->newBuilder(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$BucketOptions$b;->g0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$b;->Y()Lcom/google/api/Distribution$BucketOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$d;->k:Lcom/google/api/Distribution$BucketOptions;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$d;->k:Lcom/google/api/Distribution$BucketOptions;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$d;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/api/Distribution;)Lcom/google/api/Distribution$d;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/api/Distribution;->getDefaultInstance()Lcom/google/api/Distribution;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/Distribution$d;->n0(J)Lcom/google/api/Distribution$d;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getMean()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getMean()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/Distribution$d;->q0(D)Lcom/google/api/Distribution$d;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getSumOfSquaredDeviation()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getSumOfSquaredDeviation()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/Distribution$d;->r0(D)Lcom/google/api/Distribution$d;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/Distribution;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/Distribution$d;->l0(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$d;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/google/api/Distribution;->hasBucketOptions()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/Distribution$d;->h0(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$d;

    .line 12
    :cond_5
    invoke-static {p1}, Lcom/google/api/Distribution;->access$7100(Lcom/google/api/Distribution;)Lcom/google/protobuf/u0$i;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/google/api/Distribution$d;->m:Lcom/google/protobuf/u0$i;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {p1}, Lcom/google/api/Distribution;->access$7100(Lcom/google/api/Distribution;)Lcom/google/protobuf/u0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$d;->m:Lcom/google/protobuf/u0$i;

    .line 15
    iget v0, p0, Lcom/google/api/Distribution$d;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/Distribution$d;->e:I

    goto :goto_0

    .line 16
    :cond_6
    invoke-direct {p0}, Lcom/google/api/Distribution$d;->a0()V

    .line 17
    iget-object v0, p0, Lcom/google/api/Distribution$d;->m:Lcom/google/protobuf/u0$i;

    invoke-static {p1}, Lcom/google/api/Distribution;->access$7100(Lcom/google/api/Distribution;)Lcom/google/protobuf/u0$i;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    if-nez v0, :cond_9

    .line 20
    invoke-static {p1}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 21
    iget-object v0, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-static {p1}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    .line 23
    iget v0, p0, Lcom/google/api/Distribution$d;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/api/Distribution$d;->e:I

    goto :goto_1

    .line 24
    :cond_8
    invoke-direct {p0}, Lcom/google/api/Distribution$d;->b0()V

    .line 25
    iget-object v0, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 27
    :cond_9
    invoke-static {p1}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 28
    iget-object v0, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29
    iget-object v0, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    .line 31
    invoke-static {p1}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Distribution$d;->n:Ljava/util/List;

    .line 32
    iget v1, p0, Lcom/google/api/Distribution$d;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/api/Distribution$d;->e:I

    .line 33
    invoke-static {}, Lcom/google/api/Distribution;->access$7300()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 34
    invoke-direct {p0}, Lcom/google/api/Distribution$d;->e0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 35
    :cond_b
    iget-object v0, p0, Lcom/google/api/Distribution$d;->o:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 36
    :cond_c
    :goto_2
    invoke-static {p1}, Lcom/google/api/Distribution;->access$7400(Lcom/google/api/Distribution;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$d;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$d;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/Distribution;->access$7500()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$d;->i0(Lcom/google/api/Distribution;)Lcom/google/api/Distribution$d;

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

    check-cast p2, Lcom/google/api/Distribution;
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
    invoke-virtual {p0, v0}, Lcom/google/api/Distribution$d;->i0(Lcom/google/api/Distribution;)Lcom/google/api/Distribution$d;

    .line 6
    :cond_1
    throw p1
.end method

.method public k0(Lcom/google/protobuf/l1;)Lcom/google/api/Distribution$d;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/Distribution;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/Distribution;

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$d;->i0(Lcom/google/api/Distribution;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public l0(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Distribution$d;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$d;->i:Lcom/google/api/Distribution$Range;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/api/Distribution$Range;->newBuilder(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Range$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$Range$b;->d0(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Range$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/Distribution$Range$b;->Y()Lcom/google/api/Distribution$Range;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$d;->i:Lcom/google/api/Distribution$Range;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$d;->i:Lcom/google/api/Distribution$Range;

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

.method public final m0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$d;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Distribution$d;->Z()Lcom/google/api/Distribution$d;

    move-result-object v0

    return-object v0
.end method

.method public n0(J)Lcom/google/api/Distribution$d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/Distribution$d;->f:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$d;

    return-object p1
.end method

.method public q0(D)Lcom/google/api/Distribution$d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/Distribution$d;->g:D

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public r0(D)Lcom/google/api/Distribution$d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/Distribution$d;->h:D

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final s0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$d;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$d;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$d;->k0(Lcom/google/protobuf/l1;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$d;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$d;

    move-result-object p1

    return-object p1
.end method
