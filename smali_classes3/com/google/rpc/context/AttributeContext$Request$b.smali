.class public final Lcom/google/rpc/context/AttributeContext$Request$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/rpc/context/AttributeContext$Request$b;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$f;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Lcom/google/protobuf/Timestamp;

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Timestamp;",
            "Lcom/google/protobuf/Timestamp$b;",
            "Lcom/google/protobuf/z2;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;

.field private q:Lcom/google/rpc/context/AttributeContext$Auth;

.field private r:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/rpc/context/AttributeContext$Auth;",
            "Lcom/google/rpc/context/AttributeContext$Auth$b;",
            "Lcom/google/rpc/context/AttributeContext$c;",
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
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->e:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->f:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->h:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->i:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->j:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->k:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->o:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->p:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->e:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->f:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->h:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->i:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->j:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->k:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->o:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->p:Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/rpc/context/AttributeContext$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;-><init>()V

    return-void
.end method

.method private b0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->g:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private d0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->g:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request$c;->a:Lcom/google/protobuf/e1;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->g:Lcom/google/protobuf/g1;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->g:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->g:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->g:Lcom/google/protobuf/g1;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->g:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->access$4900()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->Z()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->Y()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->Y()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/rpc/context/a;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/rpc/context/AttributeContext$Request;

    const-class v2, Lcom/google/rpc/context/AttributeContext$Request$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->b0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected N(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->d0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->o0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$Request$b;

    return-object p1
.end method

.method public X()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->Y()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/rpc/context/AttributeContext$Request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/rpc/context/AttributeContext$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5102(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5202(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->b0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5302(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 5
    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5300(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 6
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5402(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5502(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5602(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5702(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->l:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5802(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5802(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 13
    :goto_0
    iget-wide v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->n:J

    invoke-static {v0, v1, v2}, Lcom/google/rpc/context/AttributeContext$Request;->access$5902(Lcom/google/rpc/context/AttributeContext$Request;J)J

    .line 14
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->o:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6002(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->p:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6102(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->r:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->q:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6202(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Auth;

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6202(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Auth;

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request$b;

    return-object v0
.end method

.method public a0()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1

    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->X()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->X()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$Request$b;

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

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->Z()Lcom/google/rpc/context/AttributeContext$Request$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->o0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->r:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->q:Lcom/google/rpc/context/AttributeContext$Auth;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->newBuilder(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Auth$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth$b;->j0(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Auth$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Auth$b;->Y()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->q:Lcom/google/rpc/context/AttributeContext$Auth;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->q:Lcom/google/rpc/context/AttributeContext$Auth;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->a0()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->a0()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/rpc/context/a;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->access$6500()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$Request;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->j0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;

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

    check-cast p2, Lcom/google/rpc/context/AttributeContext$Request;
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
    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$Request$b;->j0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;

    .line 6
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

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/rpc/context/AttributeContext$Request;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->j0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5100(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5200(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->f:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->d0()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6300(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5400(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->h:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5500(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->i:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->j:Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 19
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5700(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->k:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 21
    :cond_6
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$Request$b;->k0(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Request$b;

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    .line 24
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/rpc/context/AttributeContext$Request$b;->n0(J)Lcom/google/rpc/context/AttributeContext$Request$b;

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 26
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6000(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->o:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 28
    :cond_9
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 29
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6100(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->p:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 31
    :cond_a
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->hasAuth()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getAuth()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$Request$b;->g0(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Request$b;

    .line 33
    :cond_b
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6400(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$Request$b;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->l:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->l:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->l:Lcom/google/protobuf/Timestamp;

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

.method public final l0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$Request$b;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$Request$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->Z()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(J)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/rpc/context/AttributeContext$Request$b;->n:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$Request$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method