.class public final Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;",
            "Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;",
            "Lcom/google/cloud/speech/v1/o;",
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
    iput v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    .line 5
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    .line 8
    invoke-direct {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->Z()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->Y()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->Y()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1/j;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    const-class v2, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->i0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->g0(Lcom/google/protobuf/l1;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->m0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    return-object p1
.end method

.method public X()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->Y()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$a;)V

    .line 2
    iget v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->access$402(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->access$402(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->access$402(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    invoke-static {v0, v1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->access$502(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;I)I

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    return-object v0
.end method

.method public a0()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;
    .locals 1

    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->getDefaultInstance()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->X()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->X()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

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

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->Z()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->getDefaultInstance()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$b;->a:[I

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->getStreamingRequestCase()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$StreamingRequestCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->getAudioContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->j0(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->getStreamingConfig()Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->h0(Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    .line 5
    :goto_0
    invoke-static {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->access$600(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->i0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->access$700()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->d0(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

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

    check-cast p2, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;
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
    invoke-virtual {p0, v0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->d0(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->m0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->d0(Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

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
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->a0()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->a0()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1/j;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->g:Lcom/google/protobuf/q2;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;->getDefaultInstance()Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;

    .line 5
    invoke-static {v0}, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;->newBuilder(Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;)Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;->e0(Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;)Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;->Y()Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->f:Ljava/lang/Object;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 10
    :cond_1
    iget v2, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    if-ne v2, v1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->g:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 13
    :goto_1
    iput v1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    return-object p1
.end method

.method public j0(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    .line 3
    iput-object p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    return-object p1
.end method

.method public l0(Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e:I

    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->Z()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->g0(Lcom/google/protobuf/l1;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->i0(Lcom/google/protobuf/h3;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object p1

    return-object p1
.end method
