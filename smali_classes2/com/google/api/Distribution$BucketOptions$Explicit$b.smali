.class public final Lcom/google/api/Distribution$BucketOptions$Explicit$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/Distribution$BucketOptions$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions$Explicit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/Distribution$BucketOptions$Explicit$b;",
        ">;",
        "Lcom/google/api/Distribution$BucketOptions$c;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lcom/google/protobuf/u0$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3700()Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->f:Lcom/google/protobuf/u0$b;

    .line 5
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->d0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 7
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3700()Lcom/google/protobuf/u0$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->f:Lcom/google/protobuf/u0$b;

    .line 8
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->d0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/Distribution$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->f:Lcom/google/protobuf/u0$b;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3800(Lcom/google/protobuf/u0$b;)Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->f:Lcom/google/protobuf/u0$b;

    .line 3
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 0

    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3100()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->Z()Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->Y()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->Y()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/v;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/Distribution$BucketOptions$Explicit;

    const-class v2, Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->i0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->h0(Lcom/google/protobuf/l1;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    return-object p1
.end method

.method public X()Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->Y()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/Distribution$BucketOptions$Explicit;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/Distribution$a;)V

    .line 2
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->f:Lcom/google/protobuf/u0$b;

    invoke-interface {v1}, Lcom/google/protobuf/u0$j;->C()V

    .line 4
    iget v1, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e:I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->f:Lcom/google/protobuf/u0$b;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3402(Lcom/google/api/Distribution$BucketOptions$Explicit;Lcom/google/protobuf/u0$b;)Lcom/google/protobuf/u0$b;

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/Distribution$BucketOptions$Explicit$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    return-object v0
.end method

.method public b0()Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1

    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->X()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->X()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

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

    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->Z()Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object v0

    return-object v0
.end method

.method public e0(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3400(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/protobuf/u0$b;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->f:Lcom/google/protobuf/u0$b;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3400(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->f:Lcom/google/protobuf/u0$b;

    .line 5
    iget v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->a0()V

    .line 7
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->f:Lcom/google/protobuf/u0$b;

    invoke-static {p1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3400(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/protobuf/u0$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3500(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->i0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$3600()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Explicit;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e0(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

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

    check-cast p2, Lcom/google/api/Distribution$BucketOptions$Explicit;
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
    invoke-virtual {p0, v0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e0(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->b0()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->b0()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/v;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/Distribution$BucketOptions$Explicit;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->e0(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    return-object p1
.end method

.method public j0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    return-object p1
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->Z()Lcom/google/api/Distribution$BucketOptions$Explicit$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->h0(Lcom/google/protobuf/l1;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$b;->i0(Lcom/google/protobuf/h3;)Lcom/google/api/Distribution$BucketOptions$Explicit$b;

    move-result-object p1

    return-object p1
.end method