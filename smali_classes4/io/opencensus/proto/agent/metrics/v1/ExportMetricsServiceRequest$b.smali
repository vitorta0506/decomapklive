.class public final Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lio/opencensus/proto/agent/common/v1/Node;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/agent/common/v1/Node;",
            "Lio/opencensus/proto/agent/common/v1/Node$c;",
            "Lio/opencensus/proto/agent/common/v1/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/opencensus/proto/metrics/v1/Metric;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/opencensus/proto/metrics/v1/Metric;",
            "Lio/opencensus/proto/metrics/v1/Metric$b;",
            "Lio/opencensus/proto/metrics/v1/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/opencensus/proto/resource/v1/Resource;

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/resource/v1/Resource;",
            "Lio/opencensus/proto/resource/v1/Resource$b;",
            "Lio/opencensus/proto/resource/v1/a;",
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
    iput-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->f:Lio/opencensus/proto/agent/common/v1/Node;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->j:Lio/opencensus/proto/resource/v1/Resource;

    .line 7
    invoke-direct {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->f:Lio/opencensus/proto/agent/common/v1/Node;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->j:Lio/opencensus/proto/resource/v1/Resource;

    .line 12
    invoke-direct {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 3

    .line 1
    iget v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/opencensus/proto/metrics/v1/Metric;",
            "Lio/opencensus/proto/metrics/v1/Metric$b;",
            "Lio/opencensus/proto/metrics/v1/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    iget v2, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    const/4 v3, 0x2

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

    iput-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->Z()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->Y()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->Y()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/agent/metrics/v1/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    const-class v2, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->l0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->n0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    return-object p1
.end method

.method public X()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->Y()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;
    .locals 3

    .line 1
    new-instance v0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$a;)V

    .line 2
    iget-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->f:Lio/opencensus/proto/agent/common/v1/Node;

    invoke-static {v0, v1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$402(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;Lio/opencensus/proto/agent/common/v1/Node;)Lio/opencensus/proto/agent/common/v1/Node;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/agent/common/v1/Node;

    invoke-static {v0, v1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$402(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;Lio/opencensus/proto/agent/common/v1/Node;)Lio/opencensus/proto/agent/common/v1/Node;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    if-nez v1, :cond_2

    .line 6
    iget v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    .line 8
    iget v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    .line 9
    :cond_1
    iget-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$502(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$502(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;Ljava/util/List;)Ljava/util/List;

    .line 11
    :goto_1
    iget-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->j:Lio/opencensus/proto/resource/v1/Resource;

    invoke-static {v0, v1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$602(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/resource/v1/Resource;

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/resource/v1/Resource;

    invoke-static {v0, v1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$602(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/resource/v1/Resource;

    :goto_2
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$702(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;I)I

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    return-object v0
.end method

.method public b0()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;
    .locals 1

    invoke-static {}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->getDefaultInstance()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->X()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->X()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

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

    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->Z()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->n0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$1000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i0(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

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

    check-cast p2, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;
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
    invoke-virtual {p0, v0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i0(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->b0()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->b0()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/agent/metrics/v1/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i0(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->getDefaultInstance()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->hasNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->getNode()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->j0(Lio/opencensus/proto/agent/common/v1/Node;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    .line 4
    :cond_1
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_3

    .line 5
    invoke-static {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$500(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$500(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    .line 8
    iget v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->a0()V

    .line 10
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    invoke-static {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$500(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$500(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    .line 16
    invoke-static {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$500(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h:Ljava/util/List;

    .line 17
    iget v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->e:I

    .line 18
    invoke-static {}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$800()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-direct {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 20
    :cond_5
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->i:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$500(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 21
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->k0(Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    .line 23
    :cond_7
    invoke-static {p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;->access$900(Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->l0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lio/opencensus/proto/agent/common/v1/Node;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->f:Lio/opencensus/proto/agent/common/v1/Node;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/agent/common/v1/Node;->newBuilder(Lio/opencensus/proto/agent/common/v1/Node;)Lio/opencensus/proto/agent/common/v1/Node$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/agent/common/v1/Node$c;->i0(Lio/opencensus/proto/agent/common/v1/Node;)Lio/opencensus/proto/agent/common/v1/Node$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/agent/common/v1/Node$c;->Y()Lio/opencensus/proto/agent/common/v1/Node;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->f:Lio/opencensus/proto/agent/common/v1/Node;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->f:Lio/opencensus/proto/agent/common/v1/Node;

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

.method public k0(Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->j:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/resource/v1/Resource;->newBuilder(Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/resource/v1/Resource$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/resource/v1/Resource$b;->i0(Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/resource/v1/Resource$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/resource/v1/Resource$b;->Y()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->j:Lio/opencensus/proto/resource/v1/Resource;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->j:Lio/opencensus/proto/resource/v1/Resource;

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

.method public final l0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->Z()Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->V(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->h0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;->l0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/agent/metrics/v1/ExportMetricsServiceRequest$b;

    move-result-object p1

    return-object p1
.end method
