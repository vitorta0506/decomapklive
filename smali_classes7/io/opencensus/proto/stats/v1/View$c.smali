.class public final Lio/opencensus/proto/stats/v1/View$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/stats/v1/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/opencensus/proto/stats/v1/View$c;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lio/opencensus/proto/stats/v1/Measure;

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/stats/v1/Measure;",
            "Lio/opencensus/proto/stats/v1/Measure$b;",
            "Lio/opencensus/proto/stats/v1/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/z0;

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/stats/v1/CountAggregation;",
            "Lio/opencensus/proto/stats/v1/CountAggregation$b;",
            "Lio/opencensus/proto/stats/v1/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/stats/v1/SumAggregation;",
            "Lio/opencensus/proto/stats/v1/SumAggregation$b;",
            "Lio/opencensus/proto/stats/v1/f;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/stats/v1/LastValueAggregation;",
            "Lio/opencensus/proto/stats/v1/LastValueAggregation$b;",
            "Lio/opencensus/proto/stats/v1/c;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/stats/v1/DistributionAggregation;",
            "Lio/opencensus/proto/stats/v1/DistributionAggregation$b;",
            "Lio/opencensus/proto/stats/v1/b;",
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
    iput v0, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->h:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->j:Lio/opencensus/proto/stats/v1/Measure;

    .line 8
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    .line 9
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/View$c;->d0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->h:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->i:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->j:Lio/opencensus/proto/stats/v1/Measure;

    .line 15
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    .line 16
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/View$c;->d0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/stats/v1/View$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/proto/stats/v1/View$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/View$c;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 3

    .line 1
    iget v0, p0, Lio/opencensus/proto/stats/v1/View$c;->g:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v2, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    invoke-direct {v0, v2}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/opencensus/proto/stats/v1/View$c;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/opencensus/proto/stats/v1/View$c;->g:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 0

    invoke-static {}, Lio/opencensus/proto/stats/v1/View;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/View$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->Z()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->Y()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->Y()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/stats/v1/e;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/stats/v1/View;

    const-class v2, Lio/opencensus/proto/stats/v1/View$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/View$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;->n0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;->i0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/View$c;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;->q0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/View$c;

    return-object p1
.end method

.method public X()Lio/opencensus/proto/stats/v1/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->Y()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/opencensus/proto/stats/v1/View;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/opencensus/proto/stats/v1/View;
    .locals 4

    .line 1
    new-instance v0, Lio/opencensus/proto/stats/v1/View;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/proto/stats/v1/View;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/stats/v1/View$a;)V

    .line 2
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$402(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$502(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->j:Lio/opencensus/proto/stats/v1/Measure;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$602(Lio/opencensus/proto/stats/v1/View;Lio/opencensus/proto/stats/v1/Measure;)Lio/opencensus/proto/stats/v1/Measure;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/stats/v1/Measure;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$602(Lio/opencensus/proto/stats/v1/View;Lio/opencensus/proto/stats/v1/Measure;)Lio/opencensus/proto/stats/v1/Measure;

    .line 7
    :goto_0
    iget v1, p0, Lio/opencensus/proto/stats/v1/View$c;->g:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 8
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    .line 9
    iget v1, p0, Lio/opencensus/proto/stats/v1/View$c;->g:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/opencensus/proto/stats/v1/View$c;->g:I

    .line 10
    :cond_1
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$702(Lio/opencensus/proto/stats/v1/View;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 11
    iget v1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 12
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$802(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$802(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    :goto_1
    iget v1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 16
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 17
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$802(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$802(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_5
    :goto_2
    iget v1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_7

    .line 20
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->o:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 21
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$802(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$802(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_7
    :goto_3
    iget v1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    if-ne v1, v2, :cond_9

    .line 24
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_8

    .line 25
    iget-object v1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$802(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 26
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$802(Lio/opencensus/proto/stats/v1/View;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_4
    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$902(Lio/opencensus/proto/stats/v1/View;I)I

    .line 28
    iget v1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    invoke-static {v0, v1}, Lio/opencensus/proto/stats/v1/View;->access$1002(Lio/opencensus/proto/stats/v1/View;I)I

    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/opencensus/proto/stats/v1/View$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/opencensus/proto/stats/v1/View$c;

    return-object v0
.end method

.method public b0()Lio/opencensus/proto/stats/v1/View;
    .locals 1

    invoke-static {}, Lio/opencensus/proto/stats/v1/View;->getDefaultInstance()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->X()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->X()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/View$c;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/View$c;

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

    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->Z()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    return-object v0
.end method

.method public e0(Lio/opencensus/proto/stats/v1/CountAggregation;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->m:Lcom/google/protobuf/q2;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/opencensus/proto/stats/v1/CountAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/CountAggregation;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/CountAggregation;

    invoke-static {v0}, Lio/opencensus/proto/stats/v1/CountAggregation;->newBuilder(Lio/opencensus/proto/stats/v1/CountAggregation;)Lio/opencensus/proto/stats/v1/CountAggregation$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/opencensus/proto/stats/v1/CountAggregation$b;->g0(Lio/opencensus/proto/stats/v1/CountAggregation;)Lio/opencensus/proto/stats/v1/CountAggregation$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/CountAggregation$b;->Y()Lio/opencensus/proto/stats/v1/CountAggregation;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->m:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    return-object p0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/View$c;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;->q0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/opencensus/proto/stats/v1/DistributionAggregation;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->p:Lcom/google/protobuf/q2;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/opencensus/proto/stats/v1/DistributionAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/DistributionAggregation;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/DistributionAggregation;

    invoke-static {v0}, Lio/opencensus/proto/stats/v1/DistributionAggregation;->newBuilder(Lio/opencensus/proto/stats/v1/DistributionAggregation;)Lio/opencensus/proto/stats/v1/DistributionAggregation$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/opencensus/proto/stats/v1/DistributionAggregation$b;->h0(Lio/opencensus/proto/stats/v1/DistributionAggregation;)Lio/opencensus/proto/stats/v1/DistributionAggregation$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/DistributionAggregation$b;->Y()Lio/opencensus/proto/stats/v1/DistributionAggregation;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->p:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->b0()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->b0()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/e;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/opencensus/proto/stats/v1/View;->access$1200()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/View;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;->j0(Lio/opencensus/proto/stats/v1/View;)Lio/opencensus/proto/stats/v1/View$c;

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

    check-cast p2, Lio/opencensus/proto/stats/v1/View;
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
    invoke-virtual {p0, v0}, Lio/opencensus/proto/stats/v1/View$c;->j0(Lio/opencensus/proto/stats/v1/View;)Lio/opencensus/proto/stats/v1/View$c;

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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/View$c;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/opencensus/proto/stats/v1/View;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/opencensus/proto/stats/v1/View;

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;->j0(Lio/opencensus/proto/stats/v1/View;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/opencensus/proto/stats/v1/View;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/opencensus/proto/stats/v1/View;->getDefaultInstance()Lio/opencensus/proto/stats/v1/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/View;->access$400(Lio/opencensus/proto/stats/v1/View;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->h:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/View;->access$500(Lio/opencensus/proto/stats/v1/View;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->i:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->hasMeasure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getMeasure()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/stats/v1/View$c;->l0(Lio/opencensus/proto/stats/v1/Measure;)Lio/opencensus/proto/stats/v1/View$c;

    .line 10
    :cond_3
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/View;->access$700(Lio/opencensus/proto/stats/v1/View;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/View;->access$700(Lio/opencensus/proto/stats/v1/View;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    .line 13
    iget v0, p0, Lio/opencensus/proto/stats/v1/View$c;->g:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/opencensus/proto/stats/v1/View$c;->g:I

    goto :goto_0

    .line 14
    :cond_4
    invoke-direct {p0}, Lio/opencensus/proto/stats/v1/View$c;->a0()V

    .line 15
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->l:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/opencensus/proto/stats/v1/View;->access$700(Lio/opencensus/proto/stats/v1/View;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 17
    :cond_5
    sget-object v0, Lio/opencensus/proto/stats/v1/View$b;->a:[I

    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getAggregationCase()Lio/opencensus/proto/stats/v1/View$AggregationCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getDistributionAggregation()Lio/opencensus/proto/stats/v1/DistributionAggregation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/stats/v1/View$c;->g0(Lio/opencensus/proto/stats/v1/DistributionAggregation;)Lio/opencensus/proto/stats/v1/View$c;

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getLastValueAggregation()Lio/opencensus/proto/stats/v1/LastValueAggregation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/stats/v1/View$c;->k0(Lio/opencensus/proto/stats/v1/LastValueAggregation;)Lio/opencensus/proto/stats/v1/View$c;

    goto :goto_1

    .line 20
    :cond_8
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getSumAggregation()Lio/opencensus/proto/stats/v1/SumAggregation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/stats/v1/View$c;->m0(Lio/opencensus/proto/stats/v1/SumAggregation;)Lio/opencensus/proto/stats/v1/View$c;

    goto :goto_1

    .line 21
    :cond_9
    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/View;->getCountAggregation()Lio/opencensus/proto/stats/v1/CountAggregation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/stats/v1/View$c;->e0(Lio/opencensus/proto/stats/v1/CountAggregation;)Lio/opencensus/proto/stats/v1/View$c;

    .line 22
    :goto_1
    invoke-static {p1}, Lio/opencensus/proto/stats/v1/View;->access$1100(Lio/opencensus/proto/stats/v1/View;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;->n0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/View$c;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lio/opencensus/proto/stats/v1/LastValueAggregation;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->o:Lcom/google/protobuf/q2;

    const/4 v1, 0x7

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/opencensus/proto/stats/v1/LastValueAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/LastValueAggregation;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/LastValueAggregation;

    invoke-static {v0}, Lio/opencensus/proto/stats/v1/LastValueAggregation;->newBuilder(Lio/opencensus/proto/stats/v1/LastValueAggregation;)Lio/opencensus/proto/stats/v1/LastValueAggregation$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/opencensus/proto/stats/v1/LastValueAggregation$b;->g0(Lio/opencensus/proto/stats/v1/LastValueAggregation;)Lio/opencensus/proto/stats/v1/LastValueAggregation$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/LastValueAggregation$b;->Y()Lio/opencensus/proto/stats/v1/LastValueAggregation;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->o:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    return-object p0
.end method

.method public l0(Lio/opencensus/proto/stats/v1/Measure;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->j:Lio/opencensus/proto/stats/v1/Measure;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/stats/v1/Measure;->newBuilder(Lio/opencensus/proto/stats/v1/Measure;)Lio/opencensus/proto/stats/v1/Measure$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/stats/v1/Measure$b;->g0(Lio/opencensus/proto/stats/v1/Measure;)Lio/opencensus/proto/stats/v1/Measure$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/Measure$b;->Y()Lio/opencensus/proto/stats/v1/Measure;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->j:Lio/opencensus/proto/stats/v1/Measure;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->j:Lio/opencensus/proto/stats/v1/Measure;

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

.method public m0(Lio/opencensus/proto/stats/v1/SumAggregation;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->n:Lcom/google/protobuf/q2;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/opencensus/proto/stats/v1/SumAggregation;->getDefaultInstance()Lio/opencensus/proto/stats/v1/SumAggregation;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/stats/v1/SumAggregation;

    invoke-static {v0}, Lio/opencensus/proto/stats/v1/SumAggregation;->newBuilder(Lio/opencensus/proto/stats/v1/SumAggregation;)Lio/opencensus/proto/stats/v1/SumAggregation$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/opencensus/proto/stats/v1/SumAggregation$b;->g0(Lio/opencensus/proto/stats/v1/SumAggregation;)Lio/opencensus/proto/stats/v1/SumAggregation$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/stats/v1/SumAggregation$b;->Y()Lio/opencensus/proto/stats/v1/SumAggregation;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/stats/v1/View$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/opencensus/proto/stats/v1/View$c;->n:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/opencensus/proto/stats/v1/View$c;->e:I

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/stats/v1/View$c;->Z()Lio/opencensus/proto/stats/v1/View$c;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/View$c;

    return-object p1
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/View$c;

    return-object p1
.end method

.method public final q0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/View$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->V(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/stats/v1/View$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/stats/v1/View$c;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;->i0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/stats/v1/View$c;->n0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/stats/v1/View$c;

    move-result-object p1

    return-object p1
.end method
