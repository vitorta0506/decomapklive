.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/h;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Lcom/google/protobuf/q2;
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

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$f;",
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
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->g:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->g:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3100()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    :goto_0
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_5
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_7
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;I)I

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->j:Lcom/google/protobuf/q2;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->j:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    return-object p0
.end method

.method public e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->i:Lcom/google/protobuf/q2;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->i:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    return-object p0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3700()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->y:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->g:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getLayerSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getRtdsLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getAdminLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$AdminLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getDiskLayer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$DiskLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->getStaticLayer()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->k0(Lcom/google/protobuf/Struct;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    .line 10
    :goto_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;->access$3600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->k:Lcom/google/protobuf/q2;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$RtdsLayer;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->k:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    return-object p0
.end method

.method public k0(Lcom/google/protobuf/Struct;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->h:Lcom/google/protobuf/q2;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Struct;

    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->h:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->e:I

    return-object p0
.end method

.method public final l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$d;

    move-result-object p1

    return-object p1
.end method
