.class public final Lcom/google/type/PostalAddress$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/PostalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/type/PostalAddress$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Lcom/google/protobuf/z0;

.field private o:Lcom/google/protobuf/z0;

.field private p:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->g:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->h:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->i:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->j:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->k:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->l:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->m:Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    .line 12
    iput-object v1, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    .line 13
    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->p:Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lcom/google/type/PostalAddress$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lcom/google/type/PostalAddress$b;->g:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/google/type/PostalAddress$b;->h:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/type/PostalAddress$b;->i:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/type/PostalAddress$b;->j:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/google/type/PostalAddress$b;->k:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/google/type/PostalAddress$b;->l:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/google/type/PostalAddress$b;->m:Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    .line 24
    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    .line 25
    iput-object p1, p0, Lcom/google/type/PostalAddress$b;->p:Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Lcom/google/type/PostalAddress$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/type/PostalAddress$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/type/PostalAddress$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/type/PostalAddress$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lcom/google/type/PostalAddress;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/type/PostalAddress$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->Z()Lcom/google/type/PostalAddress$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->Y()Lcom/google/type/PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->Y()Lcom/google/type/PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/type/p;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/type/PostalAddress;

    const-class v2, Lcom/google/type/PostalAddress$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/type/PostalAddress$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress$b;->h0(Lcom/google/protobuf/l1;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/type/PostalAddress$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/type/PostalAddress$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/type/PostalAddress$b;

    return-object p1
.end method

.method public X()Lcom/google/type/PostalAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->Y()Lcom/google/type/PostalAddress;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/type/PostalAddress;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/type/PostalAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/type/PostalAddress;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/type/PostalAddress$a;)V

    .line 2
    iget v1, p0, Lcom/google/type/PostalAddress$b;->f:I

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$402(Lcom/google/type/PostalAddress;I)I

    .line 3
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$502(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$602(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$702(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$802(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$902(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$1002(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$1102(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v1, p0, Lcom/google/type/PostalAddress$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    .line 12
    iget v1, p0, Lcom/google/type/PostalAddress$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/type/PostalAddress$b;->e:I

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$1202(Lcom/google/type/PostalAddress;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 14
    iget v1, p0, Lcom/google/type/PostalAddress$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    .line 16
    iget v1, p0, Lcom/google/type/PostalAddress$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/type/PostalAddress$b;->e:I

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$1302(Lcom/google/type/PostalAddress;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 18
    iget-object v1, p0, Lcom/google/type/PostalAddress$b;->p:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/type/PostalAddress;->access$1402(Lcom/google/type/PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/type/PostalAddress$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->X()Lcom/google/type/PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->X()Lcom/google/type/PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/type/PostalAddress$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/type/PostalAddress$b;

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

    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->Z()Lcom/google/type/PostalAddress$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/type/PostalAddress;
    .locals 1

    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/type/PostalAddress$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/type/PostalAddress$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/type/PostalAddress;->access$1600()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/type/PostalAddress;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress$b;->i0(Lcom/google/type/PostalAddress;)Lcom/google/type/PostalAddress$b;

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

    check-cast p2, Lcom/google/type/PostalAddress;
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
    invoke-virtual {p0, v0}, Lcom/google/type/PostalAddress$b;->i0(Lcom/google/type/PostalAddress;)Lcom/google/type/PostalAddress$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->d0()Lcom/google/type/PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->d0()Lcom/google/type/PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/type/p;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lcom/google/type/PostalAddress$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/type/PostalAddress;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/type/PostalAddress;

    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress$b;->i0(Lcom/google/type/PostalAddress;)Lcom/google/type/PostalAddress$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/type/PostalAddress$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/type/PostalAddress;)Lcom/google/type/PostalAddress$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getRevision()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getRevision()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/type/PostalAddress$b;->l0(I)Lcom/google/type/PostalAddress$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$500(Lcom/google/type/PostalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->g:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$600(Lcom/google/type/PostalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->h:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$700(Lcom/google/type/PostalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->i:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getSortingCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$800(Lcom/google/type/PostalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->j:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$900(Lcom/google/type/PostalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->k:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1000(Lcom/google/type/PostalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->l:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 22
    :cond_7
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getSublocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 23
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1100(Lcom/google/type/PostalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->m:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 25
    :cond_8
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1200(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 26
    iget-object v0, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1200(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    .line 28
    iget v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    goto :goto_0

    .line 29
    :cond_9
    invoke-direct {p0}, Lcom/google/type/PostalAddress$b;->a0()V

    .line 30
    iget-object v0, p0, Lcom/google/type/PostalAddress$b;->n:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1200(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 32
    :cond_a
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1300(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 33
    iget-object v0, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1300(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    .line 35
    iget v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/type/PostalAddress$b;->e:I

    goto :goto_1

    .line 36
    :cond_b
    invoke-direct {p0}, Lcom/google/type/PostalAddress$b;->b0()V

    .line 37
    iget-object v0, p0, Lcom/google/type/PostalAddress$b;->o:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1300(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 39
    :cond_c
    invoke-virtual {p1}, Lcom/google/type/PostalAddress;->getOrganization()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 40
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1400(Lcom/google/type/PostalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress$b;->p:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 42
    :cond_d
    invoke-static {p1}, Lcom/google/type/PostalAddress;->access$1500(Lcom/google/type/PostalAddress;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/type/PostalAddress$b;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lcom/google/type/PostalAddress$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/type/PostalAddress$b;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/type/PostalAddress$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/type/PostalAddress$b;

    return-object p1
.end method

.method public l0(I)Lcom/google/type/PostalAddress$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/type/PostalAddress$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lcom/google/type/PostalAddress$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/type/PostalAddress$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/type/PostalAddress$b;->Z()Lcom/google/type/PostalAddress$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/type/PostalAddress$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress$b;->h0(Lcom/google/protobuf/l1;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/type/PostalAddress$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/type/PostalAddress$b;

    move-result-object p1

    return-object p1
.end method
