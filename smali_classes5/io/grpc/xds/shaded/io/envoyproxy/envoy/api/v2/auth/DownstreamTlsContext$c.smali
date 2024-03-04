.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/d;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/BoolValue;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/BoolValue;",
            "Lcom/google/protobuf/BoolValue$b;",
            "Lcom/google/protobuf/l;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/BoolValue;

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/BoolValue;",
            "Lcom/google/protobuf/BoolValue$b;",
            "Lcom/google/protobuf/l;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/l;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/protobuf/Duration;

.field private p:Lcom/google/protobuf/q2;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    .line 5
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->g0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->i:Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    .line 8
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->k:Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    .line 11
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 18
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_6
    :goto_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_8

    .line 22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->o:Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    goto :goto_5

    .line 23
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 24
    :goto_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;I)I

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext$c;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

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

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$1100()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    :cond_1
    throw p1
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->hasCommonTlsContext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getCommonTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CommonTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->hasRequireClientCertificate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getRequireClientCertificate()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->i0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->hasRequireSni()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getRequireSni()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->j0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->hasSessionTimeout()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getSessionTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->m0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    .line 10
    :cond_4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getSessionTicketKeysTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$SessionTicketKeysTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getDisableStatelessSessionResumption()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->o0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    goto :goto_0

    .line 12
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getSessionTicketKeysSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->getSessionTicketKeys()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    .line 14
    :goto_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->i:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/BoolValue;->newBuilder(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->i:Lcom/google/protobuf/BoolValue;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->i:Lcom/google/protobuf/BoolValue;

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

.method public j0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->k:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/BoolValue;->newBuilder(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->k:Lcom/google/protobuf/BoolValue;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->k:Lcom/google/protobuf/BoolValue;

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

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->m:Lcom/google/protobuf/q2;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/TlsSessionTicketKeys;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->m:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    return-object p0
.end method

.method public l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->n:Lcom/google/protobuf/q2;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/SdsSecretConfig;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->n:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    return-object p0
.end method

.method public m0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->p:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->o:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->o:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->o:Lcom/google/protobuf/Duration;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    return-object p1
.end method

.method public o0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 1

    const/4 v0, 0x7

    .line 1
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    return-object p1
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->g0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/DownstreamTlsContext$c;

    move-result-object p1

    return-object p1
.end method
