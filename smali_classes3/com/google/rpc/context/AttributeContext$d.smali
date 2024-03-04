.class public final Lcom/google/rpc/context/AttributeContext$d;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/rpc/context/AttributeContext$d;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lcom/google/rpc/context/AttributeContext$Peer;

.field private g:Lcom/google/protobuf/q2;
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

.field private h:Lcom/google/rpc/context/AttributeContext$Peer;

.field private i:Lcom/google/protobuf/q2;
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

.field private l:Lcom/google/rpc/context/AttributeContext$Request;

.field private m:Lcom/google/protobuf/q2;
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

.field private n:Lcom/google/rpc/context/AttributeContext$Response;

.field private o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/rpc/context/AttributeContext$Response;",
            "Lcom/google/rpc/context/AttributeContext$Response$b;",
            "Lcom/google/rpc/context/AttributeContext$h;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/rpc/context/AttributeContext$Resource;

.field private q:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/rpc/context/AttributeContext$Resource;",
            "Lcom/google/rpc/context/AttributeContext$Resource$c;",
            "Lcom/google/rpc/context/AttributeContext$g;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/rpc/context/AttributeContext$Api;

.field private s:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/rpc/context/AttributeContext$Api;",
            "Lcom/google/rpc/context/AttributeContext$Api$b;",
            "Lcom/google/rpc/context/AttributeContext$b;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/Any;",
            "Lcom/google/protobuf/Any$b;",
            "Lcom/google/protobuf/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$d;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$d;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/rpc/context/AttributeContext$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$d;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/Any;",
            "Lcom/google/protobuf/Any$b;",
            "Lcom/google/protobuf/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    iget v2, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

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

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/rpc/context/AttributeContext;->access$11800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$d;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->Z()Lcom/google/rpc/context/AttributeContext$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->Y()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->Y()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/rpc/context/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/rpc/context/AttributeContext;

    const-class v2, Lcom/google/rpc/context/AttributeContext$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;->r0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;->j0(Lcom/google/protobuf/l1;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$d;->s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;->t0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$d;

    return-object p1
.end method

.method public X()Lcom/google/rpc/context/AttributeContext;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->Y()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/rpc/context/AttributeContext;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/rpc/context/AttributeContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/rpc/context/AttributeContext;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/rpc/context/AttributeContext$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->f:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12002(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12002(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->h:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12102(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12102(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->j:Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12202(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12202(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;

    .line 11
    :goto_2
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->l:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12302(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request;

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12302(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request;

    .line 14
    :goto_3
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->o:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->n:Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12402(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Response;

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12402(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Response;

    .line 17
    :goto_4
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->q:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 18
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->p:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12502(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Resource;

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12502(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Resource;

    .line 20
    :goto_5
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->s:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 21
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->r:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12602(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Api;

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12602(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Api;

    .line 23
    :goto_6
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    if-nez v1, :cond_8

    .line 24
    iget v1, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 25
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    .line 26
    iget v1, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    .line 27
    :cond_7
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12702(Lcom/google/rpc/context/AttributeContext;Ljava/util/List;)Ljava/util/List;

    goto :goto_7

    .line 28
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12702(Lcom/google/rpc/context/AttributeContext;Ljava/util/List;)Ljava/util/List;

    .line 29
    :goto_7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$d;

    return-object v0
.end method

.method public b0()Lcom/google/rpc/context/AttributeContext;
    .locals 1

    invoke-static {}, Lcom/google/rpc/context/AttributeContext;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->X()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->X()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$d;->s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$d;

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

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->Z()Lcom/google/rpc/context/AttributeContext$d;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$d;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;->t0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->s:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->r:Lcom/google/rpc/context/AttributeContext$Api;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Api;->newBuilder(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Api$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Api$b;->g0(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Api$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Api$b;->Y()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->r:Lcom/google/rpc/context/AttributeContext$Api;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->r:Lcom/google/rpc/context/AttributeContext$Api;

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
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->b0()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->b0()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/rpc/context/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->j:Lcom/google/rpc/context/AttributeContext$Peer;

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

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->j:Lcom/google/rpc/context/AttributeContext$Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->j:Lcom/google/rpc/context/AttributeContext$Peer;

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

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$d;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/rpc/context/AttributeContext;->access$13000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;->k0(Lcom/google/rpc/context/AttributeContext;)Lcom/google/rpc/context/AttributeContext$d;

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

    check-cast p2, Lcom/google/rpc/context/AttributeContext;
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
    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$d;->k0(Lcom/google/rpc/context/AttributeContext;)Lcom/google/rpc/context/AttributeContext$d;

    .line 6
    :cond_1
    throw p1
.end method

.method public j0(Lcom/google/protobuf/l1;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/rpc/context/AttributeContext;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;->k0(Lcom/google/rpc/context/AttributeContext;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public k0(Lcom/google/rpc/context/AttributeContext;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/rpc/context/AttributeContext;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasOrigin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$d;->l0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$d;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getSource()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$d;->q0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$d;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasDestination()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getDestination()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$d;->h0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$d;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getRequest()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$d;->m0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$d;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getResponse()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$d;->o0(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$d;

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getResource()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$d;->n0(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$d;

    .line 14
    :cond_6
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasApi()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getApi()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/rpc/context/AttributeContext$d;->g0(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$d;

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    if-nez v0, :cond_9

    .line 17
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext;->access$12700(Lcom/google/rpc/context/AttributeContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 18
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext;->access$12700(Lcom/google/rpc/context/AttributeContext;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    .line 20
    iget v0, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    goto :goto_0

    .line 21
    :cond_8
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$d;->a0()V

    .line 22
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext;->access$12700(Lcom/google/rpc/context/AttributeContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 24
    :cond_9
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext;->access$12700(Lcom/google/rpc/context/AttributeContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 25
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    .line 28
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext;->access$12700(Lcom/google/rpc/context/AttributeContext;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/rpc/context/AttributeContext$d;->t:Ljava/util/List;

    .line 29
    iget v1, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/rpc/context/AttributeContext$d;->e:I

    .line 30
    invoke-static {}, Lcom/google/rpc/context/AttributeContext;->access$12800()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 31
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$d;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 32
    :cond_b
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->u:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext;->access$12700(Lcom/google/rpc/context/AttributeContext;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 33
    :cond_c
    :goto_1
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext;->access$12900(Lcom/google/rpc/context/AttributeContext;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;->r0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$d;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->f:Lcom/google/rpc/context/AttributeContext$Peer;

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

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->f:Lcom/google/rpc/context/AttributeContext$Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->f:Lcom/google/rpc/context/AttributeContext$Peer;

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

.method public m0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->l:Lcom/google/rpc/context/AttributeContext$Request;

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

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->l:Lcom/google/rpc/context/AttributeContext$Request;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->l:Lcom/google/rpc/context/AttributeContext$Request;

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

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$d;->Z()Lcom/google/rpc/context/AttributeContext$d;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->q:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->p:Lcom/google/rpc/context/AttributeContext$Resource;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->newBuilder(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Resource$c;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource$c;->m0(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Resource$c;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Resource$c;->Y()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->p:Lcom/google/rpc/context/AttributeContext$Resource;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->p:Lcom/google/rpc/context/AttributeContext$Resource;

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

.method public o0(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->o:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->n:Lcom/google/rpc/context/AttributeContext$Response;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->newBuilder(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Response$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Response$b;->j0(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Response$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Response$b;->Y()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->n:Lcom/google/rpc/context/AttributeContext$Response;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->n:Lcom/google/rpc/context/AttributeContext$Response;

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

.method public q0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$d;->h:Lcom/google/rpc/context/AttributeContext$Peer;

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

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->h:Lcom/google/rpc/context/AttributeContext$Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$d;->h:Lcom/google/rpc/context/AttributeContext$Peer;

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

.method public final r0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$d;

    return-object p1
.end method

.method public s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$d;

    return-object p1
.end method

.method public final t0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$d;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$d;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;->j0(Lcom/google/protobuf/l1;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$d;->r0(Lcom/google/protobuf/h3;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method
