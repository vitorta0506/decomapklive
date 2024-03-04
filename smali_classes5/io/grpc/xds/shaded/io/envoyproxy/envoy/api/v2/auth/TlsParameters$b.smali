.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/j;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/google/protobuf/z0;

.field private i:Lcom/google/protobuf/z0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->f:I

    .line 5
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->g:I

    .line 6
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->f:I

    .line 11
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->g:I

    .line 12
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    .line 13
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    .line 14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->f:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;I)I

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->g:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;I)I

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    .line 7
    :cond_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    .line 10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    .line 11
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->getTlsMinimumProtocolVersionValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->m0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    .line 4
    :cond_1
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->getTlsMaximumProtocolVersionValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->l0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    .line 6
    :cond_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    .line 9
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->a0()V

    .line 11
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 13
    :cond_4
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    .line 16
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->e:I

    goto :goto_1

    .line 17
    :cond_5
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->b0()V

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->i:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 20
    :cond_6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    return-object p1
.end method

.method public l0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsParameters$b;

    move-result-object p1

    return-object p1
.end method
