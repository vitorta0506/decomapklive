.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/e0;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lcom/google/protobuf/Struct;

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Struct;",
            "Lcom/google/protobuf/Struct$b;",
            "Lcom/google/protobuf/u2;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/c0;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/i;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Extension;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Extension$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/q;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/google/protobuf/z0;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;",
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
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->h:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->i:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->n:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->o:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    .line 10
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->k0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->h:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->i:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->n:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->o:Ljava/lang/Object;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    .line 20
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    .line 22
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->k0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;-><init>()V

    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    :cond_0
    return-void
.end method

.method private i0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Extension;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Extension$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private j0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private k0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->i0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->j0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public final B0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    return-object p1
.end method

.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->Y(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object v0

    return-object v0
.end method

.method public D0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->o:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public H0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    .line 3
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->Y(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->m0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->v0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->B0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Ljava/lang/Iterable;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->d0()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public X(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g0()V

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/l2;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/l2;

    :goto_0
    return-object p0
.end method

.method public Y(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    return-object p1
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->j:Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    .line 7
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    .line 10
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->n:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->o:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_4
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    if-nez v1, :cond_6

    .line 19
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    .line 21
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    .line 22
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/util/List;)Ljava/util/List;

    .line 24
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 25
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    .line 26
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    .line 27
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 28
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    if-nez v1, :cond_9

    .line 29
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 30
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    .line 31
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    .line 32
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 33
    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;Ljava/util/List;)Ljava/util/List;

    .line 34
    :goto_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;I)I

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->v0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->B0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->h0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->h0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1800()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    :cond_1
    throw p1
.end method

.method public m0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->h:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getCluster()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->i:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getMetadata()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q0(Lcom/google/protobuf/Struct;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 10
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->hasLocality()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 12
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getBuildVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->n:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 15
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getUserAgentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 16
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->o:Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 18
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 19
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 20
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    .line 22
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    goto :goto_0

    .line 23
    :cond_7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e0()V

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 26
    :cond_8
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 27
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 29
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    .line 30
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->q:Ljava/util/List;

    .line 31
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    .line 32
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->i0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_1

    :cond_9
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 34
    :cond_a
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 35
    :cond_b
    :goto_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 36
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    .line 38
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    goto :goto_3

    .line 39
    :cond_c
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->d0()V

    .line 40
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lcom/google/protobuf/z0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 42
    :cond_d
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    if-nez v0, :cond_f

    .line 43
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 44
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 45
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    .line 46
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    goto :goto_4

    .line 47
    :cond_e
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g0()V

    .line 48
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_5

    .line 50
    :cond_f
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 51
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 52
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 53
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    .line 54
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t:Ljava/util/List;

    .line 55
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->g:I

    .line 56
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 57
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->j0()Lcom/google/protobuf/l2;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    goto :goto_5

    .line 58
    :cond_11
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 59
    :cond_12
    :goto_5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getUserAgentVersionTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$UserAgentVersionTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_6

    .line 60
    :cond_13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->getUserAgentBuildVersion()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->s0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    goto :goto_6

    :cond_14
    const/4 v0, 0x7

    .line 61
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    .line 62
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->f:Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 64
    :goto_6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->access$1700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

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

.method public q0(Lcom/google/protobuf/Struct;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->j:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->j:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->j:Lcom/google/protobuf/Struct;

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

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    return-object p1
.end method

.method public s0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->p:Lcom/google/protobuf/q2;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BuildVersion;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->p:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->e:I

    return-object p0
.end method

.method public t0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->n:Ljava/lang/Object;

    .line 3
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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->l0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public u0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->i:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->m0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public v0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    return-object p1
.end method

.method public x0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->h:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public y0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    return-object p1
.end method

.method public z0(Lcom/google/protobuf/Struct$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->X()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->j:Lcom/google/protobuf/Struct;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->X()Lcom/google/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method
