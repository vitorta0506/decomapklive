.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/d;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/z0;

.field private h:Ljava/lang/Object;

.field private i:Lcom/google/protobuf/Any;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Any;",
            "Lcom/google/protobuf/Any$b;",
            "Lcom/google/protobuf/f;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/Duration;

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Duration;",
            "Lcom/google/protobuf/Duration$b;",
            "Lcom/google/protobuf/v;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

.field private n:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->f:Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->h:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->d0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->f:Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    .line 11
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->h:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->d0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1000()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->e:I

    .line 6
    :cond_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->i:Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;

    .line 11
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->k:Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 14
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->m:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

    .line 17
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    return-object v0
.end method

.method public b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object v0

    return-object v0
.end method

.method public e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->m:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->m:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->m:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

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

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/c;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    .line 8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->e:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->a0()V

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->h:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 15
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->getResource()Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->j0(Lcom/google/protobuf/Any;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    .line 17
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->hasTtl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->getTtl()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->k0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    .line 19
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->hasCacheControl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->getCacheControl()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$CacheControl;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    .line 21
    :cond_7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;->access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/Any;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->i:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Any;->newBuilder(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Any$b;->d0(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Any$b;->Y()Lcom/google/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->i:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->i:Lcom/google/protobuf/Any;

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

.method public k0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->k:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->k:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->k:Lcom/google/protobuf/Duration;

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

.method public final l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/Resource$b;

    move-result-object p1

    return-object p1
.end method
