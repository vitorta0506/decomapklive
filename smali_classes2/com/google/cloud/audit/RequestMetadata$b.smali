.class public final Lcom/google/cloud/audit/RequestMetadata$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/cloud/audit/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/audit/RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/cloud/audit/RequestMetadata$b;",
        ">;",
        "Lcom/google/cloud/audit/d;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Lcom/google/rpc/context/AttributeContext$Request;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/rpc/context/AttributeContext$Request;",
            "Lcom/google/rpc/context/AttributeContext$Request$b;",
            "Lcom/google/rpc/context/AttributeContext$f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/rpc/context/AttributeContext$Peer;

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/rpc/context/AttributeContext$Peer;",
            "Lcom/google/rpc/context/AttributeContext$Peer$b;",
            "Lcom/google/rpc/context/AttributeContext$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->e:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->f:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->g:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/cloud/audit/RequestMetadata$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/cloud/audit/RequestMetadata$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->e:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->f:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->g:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/audit/RequestMetadata$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/RequestMetadata$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->Z()Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->Y()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->Y()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/audit/a;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/audit/RequestMetadata;

    const-class v2, Lcom/google/cloud/audit/RequestMetadata$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/RequestMetadata$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->h0(Lcom/google/protobuf/l1;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/RequestMetadata$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/RequestMetadata$b;

    return-object p1
.end method

.method public X()Lcom/google/cloud/audit/RequestMetadata;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->Y()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/cloud/audit/RequestMetadata;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/cloud/audit/RequestMetadata;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/cloud/audit/RequestMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/cloud/audit/RequestMetadata;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/audit/RequestMetadata$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/RequestMetadata;->access$402(Lcom/google/cloud/audit/RequestMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/RequestMetadata;->access$502(Lcom/google/cloud/audit/RequestMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/RequestMetadata;->access$602(Lcom/google/cloud/audit/RequestMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->h:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/RequestMetadata;->access$702(Lcom/google/cloud/audit/RequestMetadata;Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/RequestMetadata;->access$702(Lcom/google/cloud/audit/RequestMetadata;Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->j:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/RequestMetadata;->access$802(Lcom/google/cloud/audit/RequestMetadata;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/RequestMetadata;->access$802(Lcom/google/cloud/audit/RequestMetadata;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata$b;

    return-object v0
.end method

.method public a0()Lcom/google/cloud/audit/RequestMetadata;
    .locals 1

    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->getDefaultInstance()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->X()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->X()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/RequestMetadata$b;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/RequestMetadata$b;

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

    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->Z()Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->j:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->newBuilder(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer$b;->i0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Peer$b;->Y()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->j:Lcom/google/rpc/context/AttributeContext$Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->j:Lcom/google/rpc/context/AttributeContext$Peer;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public e0(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->getDefaultInstance()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata;->getCallerIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/cloud/audit/RequestMetadata;->access$400(Lcom/google/cloud/audit/RequestMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata;->getCallerSuppliedUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/cloud/audit/RequestMetadata;->access$500(Lcom/google/cloud/audit/RequestMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->f:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata;->getCallerNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {p1}, Lcom/google/cloud/audit/RequestMetadata;->access$600(Lcom/google/cloud/audit/RequestMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->g:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata;->hasRequestAttributes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata;->getRequestAttributes()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/RequestMetadata$b;->i0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/cloud/audit/RequestMetadata$b;

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata;->hasDestinationAttributes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata;->getDestinationAttributes()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/RequestMetadata$b;->d0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/cloud/audit/RequestMetadata$b;

    .line 15
    :cond_5
    invoke-static {p1}, Lcom/google/cloud/audit/RequestMetadata;->access$900(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/RequestMetadata$b;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/RequestMetadata$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->access$1000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/RequestMetadata;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->e0(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata$b;

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

    check-cast p2, Lcom/google/cloud/audit/RequestMetadata;
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
    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/RequestMetadata$b;->e0(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->a0()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->a0()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/audit/a;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/cloud/audit/RequestMetadata;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/cloud/audit/RequestMetadata;

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->e0(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/RequestMetadata$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$b;->h:Lcom/google/rpc/context/AttributeContext$Request;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->newBuilder(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->j0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->Y()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->h:Lcom/google/rpc/context/AttributeContext$Request;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/RequestMetadata$b;->h:Lcom/google/rpc/context/AttributeContext$Request;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/RequestMetadata$b;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/RequestMetadata$b;

    return-object p1
.end method

.method public final l0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/RequestMetadata$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/RequestMetadata$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$b;->Z()Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/RequestMetadata$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->h0(Lcom/google/protobuf/l1;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    return-object p1
.end method
