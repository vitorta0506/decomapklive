.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$c;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->n:I

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->n:I

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    .line 6
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    .line 9
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    .line 12
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    .line 15
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->n:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;I)I

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

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

.method public e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/b;->m:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$3100()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->hasActiveState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->getActiveState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    .line 7
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->hasWarmingState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->getWarmingState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    .line 9
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->hasDrainingState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->getDrainingState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    .line 11
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->hasErrorState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->getErrorState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/UpdateFailureState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    .line 13
    :cond_5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$2900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->getClientStatusValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->m0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    .line 15
    :cond_6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;->access$3000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    return-object p1
.end method

.method public l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListenerState;

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

.method public m0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->n:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    return-object p1
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$DynamicListener$b;

    move-result-object p1

    return-object p1
.end method