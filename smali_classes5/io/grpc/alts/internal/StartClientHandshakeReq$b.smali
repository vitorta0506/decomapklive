.class public final Lio/grpc/alts/internal/StartClientHandshakeReq$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/StartClientHandshakeReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/alts/internal/StartClientHandshakeReq$b;",
        ">;",
        "Lio/grpc/alts/internal/b0;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:Lcom/google/protobuf/z0;

.field private h:Lcom/google/protobuf/z0;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/alts/internal/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/alts/internal/Identity;",
            "Lio/grpc/alts/internal/Identity$d;",
            "Lio/grpc/alts/internal/v;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lio/grpc/alts/internal/Identity;

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/alts/internal/Identity;",
            "Lio/grpc/alts/internal/Identity$d;",
            "Lio/grpc/alts/internal/v;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lio/grpc/alts/internal/Endpoint;

.field private n:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/alts/internal/Endpoint;",
            "Lio/grpc/alts/internal/Endpoint$b;",
            "Lio/grpc/alts/internal/q;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lio/grpc/alts/internal/Endpoint;

.field private p:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/alts/internal/Endpoint;",
            "Lio/grpc/alts/internal/Endpoint$b;",
            "Lio/grpc/alts/internal/q;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/Object;

.field private r:Lio/grpc/alts/internal/RpcProtocolVersions;

.field private s:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/alts/internal/RpcProtocolVersions;",
            "Lio/grpc/alts/internal/RpcProtocolVersions$b;",
            "Lio/grpc/alts/internal/z;",
            ">;"
        }
    .end annotation
.end field

.field private t:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->f:I

    .line 5
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    .line 6
    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->q:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->k0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->f:I

    .line 12
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    .line 13
    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->q:Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->k0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/alts/internal/StartClientHandshakeReq$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/alts/internal/StartClientHandshakeReq$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;-><init>()V

    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    :cond_0
    return-void
.end method

.method private h0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    :cond_0
    return-void
.end method

.method private j0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/alts/internal/Identity;",
            "Lio/grpc/alts/internal/Identity$d;",
            "Lio/grpc/alts/internal/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    iget v2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

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

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private k0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public B0(Ljava/lang/String;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->q:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->Y(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->d0()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public final D0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    return-object p1
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->b0()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->b0()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/alts/internal/r;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/alts/internal/StartClientHandshakeReq;

    const-class v2, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->Y(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->m0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->u0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->D0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Ljava/lang/String;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e0()V

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public X(Ljava/lang/String;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g0()V

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public Y(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    return-object p1
.end method

.method public Z()Lio/grpc/alts/internal/Identity$d;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j0()Lcom/google/protobuf/l2;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/Identity;->getDefaultInstance()Lio/grpc/alts/internal/Identity;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->c(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lio/grpc/alts/internal/Identity$d;

    return-object v0
.end method

.method public a0()Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->b0()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public b0()Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/alts/internal/StartClientHandshakeReq$a;)V

    .line 2
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->f:I

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$402(Lio/grpc/alts/internal/StartClientHandshakeReq;I)I

    .line 3
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    .line 5
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    .line 6
    :cond_0
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$502(Lio/grpc/alts/internal/StartClientHandshakeReq;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 7
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    .line 9
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    .line 10
    :cond_1
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$602(Lio/grpc/alts/internal/StartClientHandshakeReq;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 11
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 12
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    .line 14
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    .line 15
    :cond_2
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$702(Lio/grpc/alts/internal/StartClientHandshakeReq;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$702(Lio/grpc/alts/internal/StartClientHandshakeReq;Ljava/util/List;)Ljava/util/List;

    .line 17
    :goto_0
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 18
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->k:Lio/grpc/alts/internal/Identity;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$802(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity;

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/Identity;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$802(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity;

    .line 20
    :goto_1
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 21
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->m:Lio/grpc/alts/internal/Endpoint;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$902(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/Endpoint;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$902(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;

    .line 23
    :goto_2
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 24
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->o:Lio/grpc/alts/internal/Endpoint;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1002(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/Endpoint;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1002(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;

    .line 26
    :goto_3
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->q:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1102(Lio/grpc/alts/internal/StartClientHandshakeReq;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->s:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 28
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->r:Lio/grpc/alts/internal/RpcProtocolVersions;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1202(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions;

    goto :goto_4

    .line 29
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/RpcProtocolVersions;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1202(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions;

    .line 30
    :goto_4
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->t:I

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1302(Lio/grpc/alts/internal/StartClientHandshakeReq;I)I

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->a0()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->a0()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->u0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

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

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->d0()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    return-object v0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->D0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i0()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i0()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/r;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public i0()Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getDefaultInstance()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1600()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartClientHandshakeReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->n0(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

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

    check-cast p2, Lio/grpc/alts/internal/StartClientHandshakeReq;
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
    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->n0(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    :cond_1
    throw p1
.end method

.method public m0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/alts/internal/StartClientHandshakeReq;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/alts/internal/StartClientHandshakeReq;

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->n0(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->d0()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getDefaultInstance()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$400(Lio/grpc/alts/internal/StartClientHandshakeReq;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getHandshakeSecurityProtocolValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->x0(I)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 4
    :cond_1
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$500(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$500(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    .line 7
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e0()V

    .line 9
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$500(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_3
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$600(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$600(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    .line 14
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    goto :goto_1

    .line 15
    :cond_4
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->g0()V

    .line 16
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$600(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 18
    :cond_5
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_7

    .line 19
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$700(Lio/grpc/alts/internal/StartClientHandshakeReq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 20
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$700(Lio/grpc/alts/internal/StartClientHandshakeReq;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    .line 22
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    goto :goto_2

    .line 23
    :cond_6
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->h0()V

    .line 24
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$700(Lio/grpc/alts/internal/StartClientHandshakeReq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_3

    .line 26
    :cond_7
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$700(Lio/grpc/alts/internal/StartClientHandshakeReq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 27
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    .line 30
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$700(Lio/grpc/alts/internal/StartClientHandshakeReq;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->i:Ljava/util/List;

    .line 31
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->e:I

    .line 32
    invoke-static {}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 33
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_8
    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    goto :goto_3

    .line 34
    :cond_9
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->j:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$700(Lio/grpc/alts/internal/StartClientHandshakeReq;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 35
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalIdentity()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->q0(Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 37
    :cond_b
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalEndpoint()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->o0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 39
    :cond_c
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRemoteEndpoint()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 40
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->r0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 41
    :cond_d
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getTargetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 42
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1100(Lio/grpc/alts/internal/StartClientHandshakeReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->q:Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 44
    :cond_e
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRpcVersions()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->s0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 46
    :cond_f
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getMaxFrameSize()I

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getMaxFrameSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->y0(I)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 48
    :cond_10
    invoke-static {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->access$1500(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->m:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/Endpoint;->newBuilder(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/Endpoint$b;->g0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/Endpoint$b;->Y()Lio/grpc/alts/internal/Endpoint;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->m:Lio/grpc/alts/internal/Endpoint;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->m:Lio/grpc/alts/internal/Endpoint;

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

.method public q0(Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->k:Lio/grpc/alts/internal/Identity;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/Identity;->newBuilder(Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/Identity$d;->i0(Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity$d;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/Identity$d;->Y()Lio/grpc/alts/internal/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->k:Lio/grpc/alts/internal/Identity;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->k:Lio/grpc/alts/internal/Identity;

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

.method public r0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->p:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->o:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/Endpoint;->newBuilder(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/Endpoint$b;->g0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/Endpoint$b;->Y()Lio/grpc/alts/internal/Endpoint;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->o:Lio/grpc/alts/internal/Endpoint;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->o:Lio/grpc/alts/internal/Endpoint;

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

.method public s0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->s:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->r:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/RpcProtocolVersions;->newBuilder(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->r:Lio/grpc/alts/internal/RpcProtocolVersions;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->r:Lio/grpc/alts/internal/RpcProtocolVersions;

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

.method public final t0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->m0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public v0(Lio/grpc/alts/internal/HandshakeProtocol;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lio/grpc/alts/internal/HandshakeProtocol;->getNumber()I

    move-result p1

    iput p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->f:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public x0(I)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public y0(I)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->t:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public z0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->s:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->r:Lio/grpc/alts/internal/RpcProtocolVersions;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method
