.class public final Lio/grpc/alts/internal/Identity$d;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/Identity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/alts/internal/Identity$d;",
        ">;",
        "Lio/grpc/alts/internal/v;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/g1;
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
    iput v0, p0, Lio/grpc/alts/internal/Identity$d;->e:I

    .line 5
    invoke-direct {p0}, Lio/grpc/alts/internal/Identity$d;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/grpc/alts/internal/Identity$d;->e:I

    .line 8
    invoke-direct {p0}, Lio/grpc/alts/internal/Identity$d;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/alts/internal/Identity$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/Identity$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/alts/internal/Identity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/Identity$d;-><init>()V

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
    iget-object v0, p0, Lio/grpc/alts/internal/Identity$d;->g:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/alts/internal/Identity$c;->a:Lcom/google/protobuf/e1;

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
    iget-object v0, p0, Lio/grpc/alts/internal/Identity$d;->g:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/alts/internal/Identity$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/Identity$d;->g:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/alts/internal/Identity$d;->g:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/alts/internal/Identity$d;->g:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/Identity$d;->g:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/alts/internal/Identity$d;->g:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lio/grpc/alts/internal/Identity;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/Identity$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->Z()Lio/grpc/alts/internal/Identity$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->Y()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->Y()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/alts/internal/r;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/alts/internal/Identity;

    const-class v2, Lio/grpc/alts/internal/Identity$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/Identity$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/Identity$d;->b0()Lcom/google/protobuf/g1;

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
    invoke-direct {p0}, Lio/grpc/alts/internal/Identity$d;->d0()Lcom/google/protobuf/g1;

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

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/Identity$d;->j0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/Identity$d;->h0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/Identity$d;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/Identity$d;->m0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/Identity$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/Identity$d;

    return-object p1
.end method

.method public X()Lio/grpc/alts/internal/Identity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->Y()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/alts/internal/Identity;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/alts/internal/Identity;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/alts/internal/Identity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/alts/internal/Identity;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/alts/internal/Identity$a;)V

    .line 2
    iget v1, p0, Lio/grpc/alts/internal/Identity$d;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/alts/internal/Identity$d;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/Identity;->access$402(Lio/grpc/alts/internal/Identity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget v1, p0, Lio/grpc/alts/internal/Identity$d;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lio/grpc/alts/internal/Identity$d;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/Identity;->access$402(Lio/grpc/alts/internal/Identity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-direct {p0}, Lio/grpc/alts/internal/Identity$d;->b0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/alts/internal/Identity;->access$502(Lio/grpc/alts/internal/Identity;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 7
    invoke-static {v0}, Lio/grpc/alts/internal/Identity;->access$500(Lio/grpc/alts/internal/Identity;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 8
    iget v1, p0, Lio/grpc/alts/internal/Identity$d;->e:I

    invoke-static {v0, v1}, Lio/grpc/alts/internal/Identity;->access$602(Lio/grpc/alts/internal/Identity;I)I

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/alts/internal/Identity$d;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/alts/internal/Identity$d;

    return-object v0
.end method

.method public a0()Lio/grpc/alts/internal/Identity;
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/Identity;->getDefaultInstance()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->X()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->X()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/Identity$d;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/Identity$d;

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

    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->Z()Lio/grpc/alts/internal/Identity$d;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/Identity$d;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/Identity$d;->m0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/Identity$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/alts/internal/Identity;->access$900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/Identity;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/Identity$d;->i0(Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity$d;

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

    check-cast p2, Lio/grpc/alts/internal/Identity;
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
    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/Identity$d;->i0(Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity$d;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->a0()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->a0()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/r;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/Identity$d;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/alts/internal/Identity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/alts/internal/Identity;

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/Identity$d;->i0(Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity$d;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/Identity$d;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity$d;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/Identity;->getDefaultInstance()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/grpc/alts/internal/Identity$d;->d0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lio/grpc/alts/internal/Identity;->access$700(Lio/grpc/alts/internal/Identity;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 5
    sget-object v0, Lio/grpc/alts/internal/Identity$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/alts/internal/Identity;->getIdentityOneofCase()Lio/grpc/alts/internal/Identity$IdentityOneofCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iput v1, p0, Lio/grpc/alts/internal/Identity$d;->e:I

    .line 7
    invoke-static {p1}, Lio/grpc/alts/internal/Identity;->access$400(Lio/grpc/alts/internal/Identity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/Identity$d;->f:Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 9
    :cond_2
    iput v1, p0, Lio/grpc/alts/internal/Identity$d;->e:I

    .line 10
    invoke-static {p1}, Lio/grpc/alts/internal/Identity;->access$400(Lio/grpc/alts/internal/Identity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/Identity$d;->f:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 12
    :goto_0
    invoke-static {p1}, Lio/grpc/alts/internal/Identity;->access$800(Lio/grpc/alts/internal/Identity;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/Identity$d;->j0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/Identity$d;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/Identity$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/Identity$d;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/Identity$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/Identity$d;

    return-object p1
.end method

.method public l0(Ljava/lang/String;)Lio/grpc/alts/internal/Identity$d;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/grpc/alts/internal/Identity$d;->e:I

    .line 3
    iput-object p1, p0, Lio/grpc/alts/internal/Identity$d;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/Identity$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/Identity$d;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/Identity$d;->Z()Lio/grpc/alts/internal/Identity$d;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/Identity$d;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/Identity$d;->h0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/Identity$d;->j0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    return-object p1
.end method
