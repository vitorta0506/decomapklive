.class public final Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/trace/v1/Span$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/trace/v1/Span$TimeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;",
        ">;",
        "Lio/opencensus/proto/trace/v1/Span$g;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/Timestamp;

.field private h:Lcom/google/protobuf/q2;
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

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation$b;",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;",
            "Lio/opencensus/proto/trace/v1/Span$TimeEvent$d;",
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
    iput v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->g:Lcom/google/protobuf/Timestamp;

    .line 6
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->g:Lcom/google/protobuf/Timestamp;

    .line 10
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/trace/v1/Span$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/proto/trace/v1/Span$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->Z()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->Y()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->Y()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/j;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    const-class v2, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->g0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    return-object p1
.end method

.method public X()Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->Y()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 3

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/trace/v1/Span$a;)V

    .line 2
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->g:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5502(Lio/opencensus/proto/trace/v1/Span$TimeEvent;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5502(Lio/opencensus/proto/trace/v1/Span$TimeEvent;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 5
    :goto_0
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5602(Lio/opencensus/proto/trace/v1/Span$TimeEvent;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5602(Lio/opencensus/proto/trace/v1/Span$TimeEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    :goto_1
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 10
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 11
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5602(Lio/opencensus/proto/trace/v1/Span$TimeEvent;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5602(Lio/opencensus/proto/trace/v1/Span$TimeEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    :goto_2
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    invoke-static {v0, v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5702(Lio/opencensus/proto/trace/v1/Span$TimeEvent;I)I

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    return-object v0
.end method

.method public a0()Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    .locals 1

    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->X()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->X()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

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

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->Z()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->i:Lcom/google/protobuf/q2;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    invoke-static {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;->newBuilder(Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation$b;->i0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation$b;->Y()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->i:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->h0(Lio/opencensus/proto/trace/v1/Span$TimeEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

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

    check-cast p2, Lio/opencensus/proto/trace/v1/Span$TimeEvent;
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
    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->h0(Lio/opencensus/proto/trace/v1/Span$TimeEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    .line 6
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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->h0(Lio/opencensus/proto/trace/v1/Span$TimeEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

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
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->a0()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->a0()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/j;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/opencensus/proto/trace/v1/Span$TimeEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->j0(Lcom/google/protobuf/Timestamp;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    .line 4
    :cond_1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$b;->a:[I

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getValueCase()Lio/opencensus/proto/trace/v1/Span$TimeEvent$ValueCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getMessageEvent()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->i0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->getAnnotation()Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->d0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$Annotation;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    .line 7
    :goto_0
    invoke-static {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent;->access$5800(Lio/opencensus/proto/trace/v1/Span$TimeEvent;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    .line 8
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

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->j:Lcom/google/protobuf/q2;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    invoke-static {v0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;->newBuilder(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;->g0(Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent$b;->Y()Lio/opencensus/proto/trace/v1/Span$TimeEvent$MessageEvent;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->j:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e:I

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/Timestamp;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->g:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->g:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->g:Lcom/google/protobuf/Timestamp;

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

.method public final k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    return-object p1
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    return-object p1
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->V(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->Z()Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->g0(Lcom/google/protobuf/l1;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;->k0(Lcom/google/protobuf/h3;)Lio/opencensus/proto/trace/v1/Span$TimeEvent$c;

    move-result-object p1

    return-object p1
.end method
