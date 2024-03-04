.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority;",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority$b;",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/a1;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/Duration;

.field private n:Lcom/google/protobuf/q2;
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

.field private o:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    .line 6
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->o:I

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    .line 11
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->o:I

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    :cond_0
    return-void
.end method

.method private b0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority;",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority$b;",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->b0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 4

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    .line 3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    .line 6
    :cond_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/util/List;)Ljava/util/List;

    .line 8
    :goto_0
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    if-ne v1, v3, :cond_2

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_6
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 21
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_8
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_9

    .line 23
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->m:Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    goto :goto_4

    .line 24
    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 25
    :goto_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->o:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;I)I

    .line 26
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;I)I

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->k:Lcom/google/protobuf/q2;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->k:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->j:Lcom/google/protobuf/q2;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->j:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$1100()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    :cond_1
    throw p1
.end method

.method public j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_2

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    .line 6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->a0()V

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    .line 14
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h:Ljava/util/List;

    .line 15
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g:I

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$900()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->b0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 19
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasInitialFetchTimeout()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getInitialFetchTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->l0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    .line 21
    :cond_6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getResourceApiVersionValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->q0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    .line 23
    :cond_7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getConfigSourceSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$ConfigSourceSpecifierCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    goto :goto_2

    .line 24
    :cond_8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getSelf()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    goto :goto_2

    .line 25
    :cond_9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getAds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    goto :goto_2

    .line 26
    :cond_a
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getApiConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    goto :goto_2

    .line 27
    :cond_b
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    .line 28
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 30
    :goto_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->m:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->m:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->m:Lcom/google/protobuf/Duration;

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

.method public m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->l:Lcom/google/protobuf/q2;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->l:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->e:I

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    return-object p1
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    return-object p1
.end method

.method public q0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->o:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method
