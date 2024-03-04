.class public final Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/reflection/v1alpha/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;",
        ">;",
        "Lio/grpc/reflection/v1alpha/g;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/reflection/v1alpha/ExtensionRequest;",
            "Lio/grpc/reflection/v1alpha/ExtensionRequest$b;",
            "Lio/grpc/reflection/v1alpha/c;",
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
    iput v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->g:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->g:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->Z()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->Y()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->Y()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/reflection/v1alpha/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    const-class v2, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->i0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->g0(Lcom/google/protobuf/l1;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->k0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    return-object p1
.end method

.method public X()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->Y()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/reflection/v1alpha/ServerReflectionRequest$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$402(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$502(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$502(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$502(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$502(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    :goto_0
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$502(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 14
    iget-object v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$502(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_5
    iget v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$602(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;I)I

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    return-object v0
.end method

.method public a0()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    .locals 1

    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->X()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->X()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

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

    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->Z()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/reflection/v1alpha/ExtensionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->h:Lcom/google/protobuf/q2;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/reflection/v1alpha/ExtensionRequest;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ExtensionRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/reflection/v1alpha/ExtensionRequest;

    invoke-static {v0}, Lio/grpc/reflection/v1alpha/ExtensionRequest;->newBuilder(Lio/grpc/reflection/v1alpha/ExtensionRequest;)Lio/grpc/reflection/v1alpha/ExtensionRequest$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/reflection/v1alpha/ExtensionRequest$b;->g0(Lio/grpc/reflection/v1alpha/ExtensionRequest;)Lio/grpc/reflection/v1alpha/ExtensionRequest$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ExtensionRequest$b;->Y()Lio/grpc/reflection/v1alpha/ExtensionRequest;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->h:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$800()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->h0(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

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

    check-cast p2, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;
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
    invoke-virtual {p0, v0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->h0(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->k0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->h0(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

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
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->a0()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->a0()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/reflection/v1alpha/f;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getDefaultInstance()Lio/grpc/reflection/v1alpha/ServerReflectionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$400(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->g:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getMessageRequestCase()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$MessageRequestCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    const/4 v3, 0x4

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    .line 6
    iput v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    .line 7
    invoke-static {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$500(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    .line 9
    iput v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    .line 10
    invoke-static {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$500(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->getFileContainingExtension()Lio/grpc/reflection/v1alpha/ExtensionRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->d0(Lio/grpc/reflection/v1alpha/ExtensionRequest;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    goto :goto_0

    .line 13
    :cond_5
    iput v3, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    .line 14
    invoke-static {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$500(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 16
    :cond_6
    iput v2, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e:I

    .line 17
    invoke-static {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$500(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->f:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 19
    :goto_0
    invoke-static {p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest;->access$700(Lio/grpc/reflection/v1alpha/ServerReflectionRequest;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->i0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    .line 20
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

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    return-object p1
.end method

.method public j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    return-object p1
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->Z()Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->g0(Lcom/google/protobuf/l1;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;->i0(Lcom/google/protobuf/h3;)Lio/grpc/reflection/v1alpha/ServerReflectionRequest$c;

    move-result-object p1

    return-object p1
.end method
