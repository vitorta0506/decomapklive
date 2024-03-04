.class public final Lio/grpc/alts/internal/StartServerHandshakeReq$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/StartServerHandshakeReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/alts/internal/StartServerHandshakeReq$b;",
        ">;",
        "Lio/grpc/alts/internal/c0;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lcom/google/protobuf/z0;

.field private g:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Integer;",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/protobuf/ByteString;

.field private i:Lio/grpc/alts/internal/Endpoint;

.field private j:Lcom/google/protobuf/q2;
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

.field private k:Lio/grpc/alts/internal/Endpoint;

.field private l:Lcom/google/protobuf/q2;
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

.field private m:Lio/grpc/alts/internal/RpcProtocolVersions;

.field private n:Lcom/google/protobuf/q2;
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

.field private o:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    .line 5
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->h:Lcom/google/protobuf/ByteString;

    .line 6
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->h0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 8
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    .line 9
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->h:Lcom/google/protobuf/ByteString;

    .line 10
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->h0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/alts/internal/StartServerHandshakeReq$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/alts/internal/StartServerHandshakeReq$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Integer;",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private g0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Integer;",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private h0()V
    .locals 0

    invoke-static {}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->a0()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->Z()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->Z()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/alts/internal/r;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/alts/internal/StartServerHandshakeReq;

    const-class v2, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e0()Lcom/google/protobuf/g1;

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

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g0()Lcom/google/protobuf/g1;

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

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->j0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->v0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Ljava/lang/String;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->b0()V

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    return-object p1
.end method

.method public Y()Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->Z()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Z()Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/alts/internal/StartServerHandshakeReq$a;)V

    .line 2
    iget v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    .line 4
    iget v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e:I

    .line 5
    :cond_0
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$402(Lio/grpc/alts/internal/StartServerHandshakeReq;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 6
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$502(Lio/grpc/alts/internal/StartServerHandshakeReq;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 7
    invoke-static {v0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$500(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 8
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->h:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$602(Lio/grpc/alts/internal/StartServerHandshakeReq;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 9
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->i:Lio/grpc/alts/internal/Endpoint;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$702(Lio/grpc/alts/internal/StartServerHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/Endpoint;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$702(Lio/grpc/alts/internal/StartServerHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;

    .line 12
    :goto_0
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->k:Lio/grpc/alts/internal/Endpoint;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$802(Lio/grpc/alts/internal/StartServerHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/Endpoint;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$802(Lio/grpc/alts/internal/StartServerHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;

    .line 15
    :goto_1
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 16
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->m:Lio/grpc/alts/internal/RpcProtocolVersions;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$902(Lio/grpc/alts/internal/StartServerHandshakeReq;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions;

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/alts/internal/RpcProtocolVersions;

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$902(Lio/grpc/alts/internal/StartServerHandshakeReq;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions;

    .line 18
    :goto_2
    iget v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->o:I

    invoke-static {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$1002(Lio/grpc/alts/internal/StartServerHandshakeReq;I)I

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public a0()Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->Y()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->Y()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

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

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->a0()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getDefaultInstance()Lio/grpc/alts/internal/StartServerHandshakeReq;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->v0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->d0()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->d0()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/r;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$1300()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartServerHandshakeReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->k0(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

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

    check-cast p2, Lio/grpc/alts/internal/StartServerHandshakeReq;
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
    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->k0(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    :cond_1
    throw p1
.end method

.method public j0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/alts/internal/StartServerHandshakeReq;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/alts/internal/StartServerHandshakeReq;

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->k0(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public k0(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getDefaultInstance()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$400(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$400(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    .line 5
    iget v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->e:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->b0()V

    .line 7
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->f:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$400(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 9
    :cond_2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 10
    invoke-static {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$1100(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 12
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getInBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v0, v1, :cond_3

    .line 13
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getInBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->s0(Lcom/google/protobuf/ByteString;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 14
    :cond_3
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasLocalEndpoint()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->l0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 16
    :cond_4
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRemoteEndpoint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->m0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 18
    :cond_5
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRpcVersions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->n0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 20
    :cond_6
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getMaxFrameSize()I

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getMaxFrameSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->t0(I)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 22
    :cond_7
    invoke-static {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->access$1200(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->i:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/Endpoint;->newBuilder(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/Endpoint$b;->g0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/Endpoint$b;->Y()Lio/grpc/alts/internal/Endpoint;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->i:Lio/grpc/alts/internal/Endpoint;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->i:Lio/grpc/alts/internal/Endpoint;

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

.method public m0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->k:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/Endpoint;->newBuilder(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/Endpoint$b;->g0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/Endpoint$b;->Y()Lio/grpc/alts/internal/Endpoint;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->k:Lio/grpc/alts/internal/Endpoint;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->k:Lio/grpc/alts/internal/Endpoint;

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

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->a0()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->m:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/alts/internal/RpcProtocolVersions;->newBuilder(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->m:Lio/grpc/alts/internal/RpcProtocolVersions;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->m:Lio/grpc/alts/internal/RpcProtocolVersions;

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

.method public final o0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    return-object p1
.end method

.method public q0(ILio/grpc/alts/internal/ServerHandshakeParameters;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    const-string v0, "map value"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->g0()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    return-object p1
.end method

.method public s0(Lcom/google/protobuf/ByteString;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->h:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public t0(I)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->o:I

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->m:Lio/grpc/alts/internal/RpcProtocolVersions;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->j0(Lcom/google/protobuf/l1;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public final v0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method
