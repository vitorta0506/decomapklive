.class public final Lcom/google/rpc/PreconditionFailure$Violation$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/rpc/PreconditionFailure$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/PreconditionFailure$Violation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/rpc/PreconditionFailure$Violation$b;",
        ">;",
        "Lcom/google/rpc/PreconditionFailure$c;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->e:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->f:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->g:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->e:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->f:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->g:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/rpc/PreconditionFailure$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/PreconditionFailure$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure$Violation$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->Z()Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->Y()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->Y()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/rpc/b;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/rpc/PreconditionFailure$Violation;

    const-class v2, Lcom/google/rpc/PreconditionFailure$Violation$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure$Violation$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;->h0(Lcom/google/protobuf/h3;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;->e0(Lcom/google/protobuf/l1;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure$Violation$b;->i0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/PreconditionFailure$Violation$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/PreconditionFailure$Violation$b;

    return-object p1
.end method

.method public X()Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->Y()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/rpc/PreconditionFailure$Violation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/rpc/PreconditionFailure$Violation;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/rpc/PreconditionFailure$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$402(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$502(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$602(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/rpc/PreconditionFailure$Violation$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation$b;

    return-object v0
.end method

.method public a0()Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1

    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->X()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->X()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure$Violation$b;->i0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/PreconditionFailure$Violation$b;

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

    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->Z()Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/PreconditionFailure$Violation$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->access$800()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/PreconditionFailure$Violation;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;->g0(Lcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Violation$b;

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

    check-cast p2, Lcom/google/rpc/PreconditionFailure$Violation;
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
    invoke-virtual {p0, v0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->g0(Lcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public e0(Lcom/google/protobuf/l1;)Lcom/google/rpc/PreconditionFailure$Violation$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/rpc/PreconditionFailure$Violation;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;->g0(Lcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure$Violation$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Violation$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$400(Lcom/google/rpc/PreconditionFailure$Violation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$500(Lcom/google/rpc/PreconditionFailure$Violation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->f:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$600(Lcom/google/rpc/PreconditionFailure$Violation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$b;->g:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_3
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$700(Lcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;->h0(Lcom/google/protobuf/h3;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->a0()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->a0()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/rpc/b;->o:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public final h0(Lcom/google/protobuf/h3;)Lcom/google/rpc/PreconditionFailure$Violation$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/PreconditionFailure$Violation$b;

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure$Violation$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/PreconditionFailure$Violation$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/PreconditionFailure$Violation$b;

    return-object p1
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lcom/google/rpc/PreconditionFailure$Violation$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/PreconditionFailure$Violation$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$b;->Z()Lcom/google/rpc/PreconditionFailure$Violation$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure$Violation$b;->d0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;->e0(Lcom/google/protobuf/l1;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation$b;->h0(Lcom/google/protobuf/h3;)Lcom/google/rpc/PreconditionFailure$Violation$b;

    move-result-object p1

    return-object p1
.end method
