.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$f;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:Lcom/google/protobuf/z0;

.field private h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/f;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/google/protobuf/UInt32Value;

.field private p:Lcom/google/protobuf/q2;
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

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

.field private t:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$d;",
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
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->f:I

    .line 5
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->f:I

    .line 10
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private g0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->f:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;I)I

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    .line 6
    :cond_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    .line 10
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    .line 13
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    .line 16
    :goto_2
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->n:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Z)Z

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->o:Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    .line 20
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    if-nez v1, :cond_6

    .line 21
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    .line 23
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    .line 24
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Ljava/util/List;)Ljava/util/List;

    .line 26
    :goto_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->t:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 27
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->s:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    goto :goto_5

    .line 28
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    .line 29
    :goto_5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    return-object v0
.end method

.method public e0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

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

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1500()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    :cond_1
    throw p1
.end method

.method public j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getOperationNameValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->s0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 4
    :cond_1
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    .line 7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->b0()V

    .line 9
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->g:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasClientSampling()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getClientSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 13
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasRandomSampling()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRandomSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 15
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasOverallSampling()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getOverallSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 17
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getVerbose()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getVerbose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->u0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 19
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasMaxPathTagLength()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getMaxPathTagLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->l0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 21
    :cond_8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    if-nez v0, :cond_a

    .line 22
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 23
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    .line 25
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    goto :goto_1

    .line 26
    :cond_9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->a0()V

    .line 27
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 29
    :cond_a
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 30
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    .line 33
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q:Ljava/util/List;

    .line 34
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->e:I

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 36
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 37
    :cond_c
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->r:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 38
    :cond_d
    :goto_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 40
    :cond_e
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->p:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->o:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->o:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->o:Lcom/google/protobuf/UInt32Value;

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

.method public m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->t:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->s:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->s:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->s:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

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

.method public o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

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

.method public final q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    return-object p1
.end method

.method public r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    return-object p1
.end method

.method public s0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->n:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method
