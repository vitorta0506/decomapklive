.class public final Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
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

.field private h:Lcom/google/protobuf/Timestamp;

.field private i:Lcom/google/protobuf/q2;
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

.field private j:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->j:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->j:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->Z()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->Y()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->Y()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/j;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    const-class v2, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->g0(Lcom/google/protobuf/l1;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    return-object p1
.end method

.method public X()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->Y()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$a;)V

    .line 2
    iget v1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->e:I

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$402(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;I)I

    .line 3
    iget-object v1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->f:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$502(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$502(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->h:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$602(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$602(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$702(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    return-object v0
.end method

.method public a0()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;
    .locals 1

    invoke-static {}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->getDefaultInstance()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->X()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->X()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

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

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->Z()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->getDefaultInstance()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->getProgressPercent()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->getProgressPercent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->l0(I)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->getStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->i0(Lcom/google/protobuf/Timestamp;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->hasLastUpdateTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->getLastUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->h0(Lcom/google/protobuf/Timestamp;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-static {p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$700(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->j:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_4
    invoke-static {p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$800(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;->access$900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->d0(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

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

    check-cast p2, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;
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
    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->d0(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->d0(Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

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
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->a0()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->a0()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/j;->y:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/Timestamp;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->h:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->h:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->h:Lcom/google/protobuf/Timestamp;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/Timestamp;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->f:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->f:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->f:Lcom/google/protobuf/Timestamp;

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

.method public final j0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    return-object p1
.end method

.method public l0(I)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->e:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->Z()Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->g0(Lcom/google/protobuf/l1;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata$b;

    move-result-object p1

    return-object p1
.end method
