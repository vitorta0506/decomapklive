.class public final Lcom/google/api/MetricDescriptor$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/MetricDescriptor$b;",
        ">;",
        "Lcom/google/api/p0;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/LabelDescriptor;",
            "Lcom/google/api/LabelDescriptor$b;",
            "Lcom/google/api/i0;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

.field private p:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;",
            "Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$b;",
            "Lcom/google/api/MetricDescriptor$c;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Lcom/google/protobuf/z0;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->f:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->g:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/google/api/MetricDescriptor$b;->j:I

    .line 8
    iput v1, p0, Lcom/google/api/MetricDescriptor$b;->k:I

    .line 9
    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->l:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->m:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->n:Ljava/lang/Object;

    .line 12
    iput v1, p0, Lcom/google/api/MetricDescriptor$b;->q:I

    .line 13
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    .line 14
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/MetricDescriptor$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lcom/google/api/MetricDescriptor$b;->f:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/google/api/MetricDescriptor$b;->g:Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/google/api/MetricDescriptor$b;->j:I

    .line 20
    iput v0, p0, Lcom/google/api/MetricDescriptor$b;->k:I

    .line 21
    iput-object p1, p0, Lcom/google/api/MetricDescriptor$b;->l:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/google/api/MetricDescriptor$b;->m:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/google/api/MetricDescriptor$b;->n:Ljava/lang/Object;

    .line 24
    iput v0, p0, Lcom/google/api/MetricDescriptor$b;->q:I

    .line 25
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    .line 26
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/MetricDescriptor$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/MetricDescriptor$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/LabelDescriptor;",
            "Lcom/google/api/LabelDescriptor$b;",
            "Lcom/google/api/i0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    iget v2, p0, Lcom/google/api/MetricDescriptor$b;->e:I

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

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private g0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/MetricDescriptor;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$b;->e0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/MetricDescriptor$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->Z()Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->Y()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->Y()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/q0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/MetricDescriptor;

    const-class v2, Lcom/google/api/MetricDescriptor$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/MetricDescriptor$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$b;->j0(Lcom/google/protobuf/l1;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/MetricDescriptor$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$b;->q0(Lcom/google/protobuf/h3;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/MetricDescriptor$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor$b;

    return-object p1
.end method

.method public X()Lcom/google/api/MetricDescriptor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->Y()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/MetricDescriptor;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/MetricDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/MetricDescriptor;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/MetricDescriptor$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$1402(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$1502(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    if-nez v1, :cond_1

    .line 5
    iget v1, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    .line 7
    iget v1, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$1602(Lcom/google/api/MetricDescriptor;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$1602(Lcom/google/api/MetricDescriptor;Ljava/util/List;)Ljava/util/List;

    .line 10
    :goto_0
    iget v1, p0, Lcom/google/api/MetricDescriptor$b;->j:I

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$1702(Lcom/google/api/MetricDescriptor;I)I

    .line 11
    iget v1, p0, Lcom/google/api/MetricDescriptor$b;->k:I

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$1802(Lcom/google/api/MetricDescriptor;I)I

    .line 12
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$1902(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$2002(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->n:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$2102(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->o:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$2202(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$2202(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    .line 18
    :goto_1
    iget v1, p0, Lcom/google/api/MetricDescriptor$b;->q:I

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$2302(Lcom/google/api/MetricDescriptor;I)I

    .line 19
    iget v1, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    .line 21
    iget v1, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/api/MetricDescriptor;->access$2402(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/MetricDescriptor$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/MetricDescriptor$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->X()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->X()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/MetricDescriptor$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/MetricDescriptor$b;

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

    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->Z()Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/api/MetricDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/api/MetricDescriptor;->getDefaultInstance()Lcom/google/api/MetricDescriptor;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/MetricDescriptor$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$b;->q0(Lcom/google/protobuf/h3;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->d0()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->d0()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/q0;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/api/MetricDescriptor;)Lcom/google/api/MetricDescriptor$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/MetricDescriptor;->getDefaultInstance()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1400(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1500(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->g:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_4

    .line 9
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1600(Lcom/google/api/MetricDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1600(Lcom/google/api/MetricDescriptor;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    .line 12
    iget v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    goto :goto_0

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$b;->a0()V

    .line 14
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1600(Lcom/google/api/MetricDescriptor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1600(Lcom/google/api/MetricDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    .line 20
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1600(Lcom/google/api/MetricDescriptor;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/MetricDescriptor$b;->h:Ljava/util/List;

    .line 21
    iget v1, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    .line 22
    invoke-static {}, Lcom/google/api/MetricDescriptor;->access$2500()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$b;->e0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->i:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1600(Lcom/google/api/MetricDescriptor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 25
    :cond_7
    :goto_1
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1700(Lcom/google/api/MetricDescriptor;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getMetricKindValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/MetricDescriptor$b;->o0(I)Lcom/google/api/MetricDescriptor$b;

    .line 27
    :cond_8
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1800(Lcom/google/api/MetricDescriptor;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getValueTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/MetricDescriptor$b;->r0(I)Lcom/google/api/MetricDescriptor$b;

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 30
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$1900(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->l:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 32
    :cond_a
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 33
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$2000(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->m:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 35
    :cond_b
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 36
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$2100(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->n:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 38
    :cond_c
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/MetricDescriptor$b;->k0(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$b;

    .line 40
    :cond_d
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$2300(Lcom/google/api/MetricDescriptor;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 41
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getLaunchStageValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/MetricDescriptor$b;->n0(I)Lcom/google/api/MetricDescriptor$b;

    .line 42
    :cond_e
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$2400(Lcom/google/api/MetricDescriptor;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 43
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 44
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$2400(Lcom/google/api/MetricDescriptor;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    .line 45
    iget v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/api/MetricDescriptor$b;->e:I

    goto :goto_2

    .line 46
    :cond_f
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$b;->b0()V

    .line 47
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->r:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$2400(Lcom/google/api/MetricDescriptor;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 49
    :cond_10
    invoke-static {p1}, Lcom/google/api/MetricDescriptor;->access$2600(Lcom/google/api/MetricDescriptor;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/api/MetricDescriptor$b;

    .line 50
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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/MetricDescriptor$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/MetricDescriptor;->access$2700()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$b;->h0(Lcom/google/api/MetricDescriptor;)Lcom/google/api/MetricDescriptor$b;

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

    check-cast p2, Lcom/google/api/MetricDescriptor;
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
    invoke-virtual {p0, v0}, Lcom/google/api/MetricDescriptor$b;->h0(Lcom/google/api/MetricDescriptor;)Lcom/google/api/MetricDescriptor$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public j0(Lcom/google/protobuf/l1;)Lcom/google/api/MetricDescriptor$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/MetricDescriptor;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/MetricDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$b;->h0(Lcom/google/api/MetricDescriptor;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public k0(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->p:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$b;->o:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->newBuilder(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$b;->d0(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$b;->Y()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/MetricDescriptor$b;->o:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/api/MetricDescriptor$b;->o:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

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

.method public final l0(Lcom/google/protobuf/h3;)Lcom/google/api/MetricDescriptor$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor$b;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/MetricDescriptor$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$b;->Z()Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(I)Lcom/google/api/MetricDescriptor$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/api/MetricDescriptor$b;->q:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(I)Lcom/google/api/MetricDescriptor$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/api/MetricDescriptor$b;->j:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final q0(Lcom/google/protobuf/h3;)Lcom/google/api/MetricDescriptor$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor$b;

    return-object p1
.end method

.method public r0(I)Lcom/google/api/MetricDescriptor$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/api/MetricDescriptor$b;->k:I

    .line 2
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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/MetricDescriptor$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$b;->j0(Lcom/google/protobuf/l1;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method
