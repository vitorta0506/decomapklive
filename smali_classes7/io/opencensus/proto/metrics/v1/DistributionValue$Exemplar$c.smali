.class public final Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/metrics/v1/DistributionValue$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;",
        ">;",
        "Lio/opencensus/proto/metrics/v1/DistributionValue$f;"
    }
.end annotation


# instance fields
.field private e:D

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

.field private h:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->f:Lcom/google/protobuf/Timestamp;

    .line 5
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->f:Lcom/google/protobuf/Timestamp;

    .line 8
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;-><init>()V

    return-void
.end method

.method private b0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->h:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$b;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private d0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->h:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$b;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->h:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->h:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->h:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->h:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->h:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$2800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->Z()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->Y()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->Y()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    const-class v2, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->b0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected N(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->d0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->h0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    return-object p1
.end method

.method public X()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->Y()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 3

    .line 1
    new-instance v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/metrics/v1/DistributionValue$a;)V

    .line 2
    iget-wide v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->e:D

    invoke-static {v0, v1, v2}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$3002(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;D)D

    .line 3
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->f:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$3102(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$3102(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 6
    :goto_0
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->b0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$3202(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 7
    invoke-static {v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$3200(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$3302(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;I)I

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    return-object v0
.end method

.method public a0()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    .locals 1

    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getDefaultInstance()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->X()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->X()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

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

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->Z()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$3600()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->i0(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

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

    check-cast p2, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;
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
    invoke-virtual {p0, v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->i0(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->a0()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->a0()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/f;->u:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->i0(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 5

    .line 1
    invoke-static {}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getDefaultInstance()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->n0(D)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->j0(Lcom/google/protobuf/Timestamp;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    .line 6
    :cond_2
    invoke-direct {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->d0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$3400(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 9
    invoke-static {p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;->access$3500(Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/Timestamp;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->f:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->f:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->f:Lcom/google/protobuf/Timestamp;

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

.method public final k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    return-object p1
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    return-object p1
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->V(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->Z()Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object v0

    return-object v0
.end method

.method public n0(D)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->e:D

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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->h0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/metrics/v1/DistributionValue$Exemplar$c;

    move-result-object p1

    return-object p1
.end method
