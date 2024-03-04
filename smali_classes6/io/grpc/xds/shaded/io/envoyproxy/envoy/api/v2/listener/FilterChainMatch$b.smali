.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/a;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lcom/google/protobuf/UInt32Value;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/UInt32Value;",
            "Lcom/google/protobuf/UInt32Value$b;",
            "Lcom/google/protobuf/e3;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/j;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:Lcom/google/protobuf/UInt32Value;

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/UInt32Value;",
            "Lcom/google/protobuf/UInt32Value$b;",
            "Lcom/google/protobuf/e3;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/j;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/protobuf/u0$g;

.field private q:Lcom/google/protobuf/z0;

.field private r:Ljava/lang/Object;

.field private s:Lcom/google/protobuf/z0;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->j:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->m:I

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$2000()Lcom/google/protobuf/u0$g;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->p:Lcom/google/protobuf/u0$g;

    .line 9
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    .line 10
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->r:Ljava/lang/Object;

    .line 11
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->k0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->j:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->m:I

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$2000()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->p:Lcom/google/protobuf/u0$g;

    .line 19
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    .line 20
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->r:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 22
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->k0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->p:Lcom/google/protobuf/u0$g;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$2100(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->p:Lcom/google/protobuf/u0$g;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private i0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private j0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v2, v2, 0x2

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private k0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->j0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->u0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->f:Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    if-nez v1, :cond_2

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    .line 9
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    .line 11
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->k:Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    .line 15
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->m:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;I)I

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    if-nez v1, :cond_5

    .line 17
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    .line 19
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    .line 20
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    .line 22
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 23
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->p:Lcom/google/protobuf/u0$g;

    invoke-interface {v1}, Lcom/google/protobuf/u0$j;->C()V

    .line 24
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    .line 25
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->p:Lcom/google/protobuf/u0$g;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    .line 26
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 27
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    .line 28
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    .line 29
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 30
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->r:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 32
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 33
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    .line 34
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->u0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public l0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->f:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->f:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->f:Lcom/google/protobuf/UInt32Value;

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

.method public m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1800()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->hasDestinationPort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->getDestinationPort()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->l0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    .line 4
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    .line 8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->b0()V

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 15
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    .line 16
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->h:Ljava/util/List;

    .line 17
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 21
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->getAddressSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 22
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->j:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 24
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->hasSuffixLen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->getSuffixLen()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    .line 26
    :cond_8
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->getSourceTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->t0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    .line 28
    :cond_9
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    if-nez v0, :cond_b

    .line 29
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 30
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    .line 32
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    goto :goto_3

    .line 33
    :cond_a
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->g0()V

    .line 34
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_4

    .line 36
    :cond_b
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 37
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 39
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    .line 40
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n:Ljava/util/List;

    .line 41
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    .line 42
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 43
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->j0()Lcom/google/protobuf/l2;

    move-result-object v1

    :cond_c
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    goto :goto_4

    .line 44
    :cond_d
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->o:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 45
    :cond_e
    :goto_4
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 46
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->p:Lcom/google/protobuf/u0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->p:Lcom/google/protobuf/u0$g;

    .line 48
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    goto :goto_5

    .line 49
    :cond_f
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e0()V

    .line 50
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->p:Lcom/google/protobuf/u0$g;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/u0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    :goto_5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 52
    :cond_10
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 53
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    .line 55
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    goto :goto_6

    .line 56
    :cond_11
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->d0()V

    .line 57
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->q:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 59
    :cond_12
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->getTransportProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 60
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->r:Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 62
    :cond_13
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 63
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 64
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 65
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->e:I

    goto :goto_7

    .line 66
    :cond_14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->a0()V

    .line 67
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :goto_7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 69
    :cond_15
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;->access$1700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    .line 70
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->k:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->k:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->k:Lcom/google/protobuf/UInt32Value;

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

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    return-object p1
.end method

.method public s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    return-object p1
.end method

.method public t0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->m:I

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public final u0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->n0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method
