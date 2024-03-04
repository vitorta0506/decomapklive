.class public final Lcom/google/cloud/audit/AuditLog$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/audit/AuditLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/cloud/audit/AuditLog$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private A:Lcom/google/protobuf/q2;
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

.field private B:Lcom/google/protobuf/Any;

.field private C:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Any;",
            "Lcom/google/protobuf/Any$b;",
            "Lcom/google/protobuf/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Lcom/google/cloud/audit/ResourceLocation;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/cloud/audit/ResourceLocation;",
            "Lcom/google/cloud/audit/ResourceLocation$b;",
            "Lcom/google/cloud/audit/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/Struct;

.field private l:Lcom/google/protobuf/q2;
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

.field private m:J

.field private n:Lcom/google/rpc/Status;

.field private o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/rpc/Status;",
            "Lcom/google/rpc/Status$b;",
            "Lcom/google/rpc/c;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/cloud/audit/AuthenticationInfo;

.field private q:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/cloud/audit/AuthenticationInfo;",
            "Lcom/google/cloud/audit/AuthenticationInfo$b;",
            "Lcom/google/cloud/audit/b;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            "Lcom/google/cloud/audit/AuthorizationInfo$b;",
            "Lcom/google/cloud/audit/c;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/google/cloud/audit/RequestMetadata;

.field private u:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/cloud/audit/RequestMetadata;",
            "Lcom/google/cloud/audit/RequestMetadata$b;",
            "Lcom/google/cloud/audit/d;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/google/protobuf/Struct;

.field private w:Lcom/google/protobuf/q2;
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

.field private x:Lcom/google/protobuf/Struct;

.field private y:Lcom/google/protobuf/q2;
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

.field private z:Lcom/google/protobuf/Struct;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->f:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->g:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->h:Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/cloud/audit/AuditLog$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->f:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->g:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->h:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    .line 14
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/audit/AuditLog$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            "Lcom/google/cloud/audit/AuthorizationInfo$b;",
            "Lcom/google/cloud/audit/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    iget v2, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

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

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog$b;->b0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->Z()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->Y()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->Y()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/audit/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/audit/AuditLog;

    const-class v2, Lcom/google/cloud/audit/AuditLog$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;->t0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;->j0(Lcom/google/protobuf/l1;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog$b;->u0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;->x0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuditLog$b;

    return-object p1
.end method

.method public X()Lcom/google/cloud/audit/AuditLog;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->Y()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/cloud/audit/AuditLog;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/cloud/audit/AuditLog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/cloud/audit/AuditLog;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/audit/AuditLog$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$402(Lcom/google/cloud/audit/AuditLog;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$502(Lcom/google/cloud/audit/AuditLog;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$602(Lcom/google/cloud/audit/AuditLog;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->i:Lcom/google/cloud/audit/ResourceLocation;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$702(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/ResourceLocation;)Lcom/google/cloud/audit/ResourceLocation;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/audit/ResourceLocation;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$702(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/ResourceLocation;)Lcom/google/cloud/audit/ResourceLocation;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->k:Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$802(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$802(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    .line 11
    :goto_1
    iget-wide v1, p0, Lcom/google/cloud/audit/AuditLog$b;->m:J

    invoke-static {v0, v1, v2}, Lcom/google/cloud/audit/AuditLog;->access$902(Lcom/google/cloud/audit/AuditLog;J)J

    .line 12
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->o:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->n:Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1002(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)Lcom/google/rpc/Status;

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1002(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)Lcom/google/rpc/Status;

    .line 15
    :goto_2
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->q:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->p:Lcom/google/cloud/audit/AuthenticationInfo;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1102(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuthenticationInfo;

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/audit/AuthenticationInfo;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1102(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuthenticationInfo;

    .line 18
    :goto_3
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    if-nez v1, :cond_5

    .line 19
    iget v1, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    .line 21
    iget v1, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1202(Lcom/google/cloud/audit/AuditLog;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 23
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1202(Lcom/google/cloud/audit/AuditLog;Ljava/util/List;)Ljava/util/List;

    .line 24
    :goto_4
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->u:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 25
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->t:Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1302(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata;

    goto :goto_5

    .line 26
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1302(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata;

    .line 27
    :goto_5
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->w:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 28
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->v:Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1402(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    goto :goto_6

    .line 29
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1402(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    .line 30
    :goto_6
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->y:Lcom/google/protobuf/q2;

    if-nez v1, :cond_8

    .line 31
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->x:Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1502(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    goto :goto_7

    .line 32
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1502(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    .line 33
    :goto_7
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->A:Lcom/google/protobuf/q2;

    if-nez v1, :cond_9

    .line 34
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->z:Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1602(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    goto :goto_8

    .line 35
    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1602(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    .line 36
    :goto_8
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->C:Lcom/google/protobuf/q2;

    if-nez v1, :cond_a

    .line 37
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->B:Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1702(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;

    goto :goto_9

    .line 38
    :cond_a
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1702(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;

    .line 39
    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/AuditLog$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->X()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->X()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog$b;->u0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/AuditLog$b;

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

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->Z()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/cloud/audit/AuditLog;
    .locals 1

    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->getDefaultInstance()Lcom/google/cloud/audit/AuditLog;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;->x0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->q:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->p:Lcom/google/cloud/audit/AuthenticationInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/cloud/audit/AuthenticationInfo;->newBuilder(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuthenticationInfo$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/cloud/audit/AuthenticationInfo$b;->g0(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuthenticationInfo$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuthenticationInfo$b;->Y()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->p:Lcom/google/cloud/audit/AuthenticationInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->p:Lcom/google/cloud/audit/AuthenticationInfo;

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
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->d0()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->d0()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/audit/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/cloud/audit/AuditLog;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->getDefaultInstance()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$400(Lcom/google/cloud/audit/AuditLog;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$500(Lcom/google/cloud/audit/AuditLog;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->g:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$600(Lcom/google/cloud/audit/AuditLog;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->h:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasResourceLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getResourceLocation()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->n0(Lcom/google/cloud/audit/ResourceLocation;)Lcom/google/cloud/audit/AuditLog$b;

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasResourceOriginalState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getResourceOriginalState()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->o0(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$b;

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getNumResponseItems()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 16
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getNumResponseItems()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/cloud/audit/AuditLog$b;->v0(J)Lcom/google/cloud/audit/AuditLog$b;

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getStatus()Lcom/google/rpc/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->s0(Lcom/google/rpc/Status;)Lcom/google/cloud/audit/AuditLog$b;

    .line 19
    :cond_7
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasAuthenticationInfo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->g0(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuditLog$b;

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    if-nez v0, :cond_a

    .line 22
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 23
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    .line 25
    iget v0, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    goto :goto_0

    .line 26
    :cond_9
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog$b;->a0()V

    .line 27
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 29
    :cond_a
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 30
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    .line 33
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/cloud/audit/AuditLog$b;->r:Ljava/util/List;

    .line 34
    iget v1, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/cloud/audit/AuditLog$b;->e:I

    .line 35
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 36
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog$b;->b0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 37
    :cond_c
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->s:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 38
    :cond_d
    :goto_1
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasRequestMetadata()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->m0(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/AuditLog$b;

    .line 40
    :cond_e
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 41
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getRequest()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->l0(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$b;

    .line 42
    :cond_f
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 43
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getResponse()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->q0(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$b;

    .line 44
    :cond_10
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getMetadata()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->k0(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$b;

    .line 46
    :cond_11
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasServiceData()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getServiceData()Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->r0(Lcom/google/protobuf/Any;)Lcom/google/cloud/audit/AuditLog$b;

    .line 48
    :cond_12
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->access$1900(Lcom/google/cloud/audit/AuditLog;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;->t0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/AuditLog$b;

    .line 49
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

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->access$2000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuditLog;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;->h0(Lcom/google/cloud/audit/AuditLog;)Lcom/google/cloud/audit/AuditLog$b;

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

    check-cast p2, Lcom/google/cloud/audit/AuditLog;
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
    invoke-virtual {p0, v0}, Lcom/google/cloud/audit/AuditLog$b;->h0(Lcom/google/cloud/audit/AuditLog;)Lcom/google/cloud/audit/AuditLog$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public j0(Lcom/google/protobuf/l1;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/cloud/audit/AuditLog;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;->h0(Lcom/google/cloud/audit/AuditLog;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public k0(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->A:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->z:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->z:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->z:Lcom/google/protobuf/Struct;

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

.method public l0(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->w:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->v:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->v:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->v:Lcom/google/protobuf/Struct;

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

.method public m0(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->u:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->t:Lcom/google/cloud/audit/RequestMetadata;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/cloud/audit/RequestMetadata;->newBuilder(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/cloud/audit/RequestMetadata$b;->e0(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata$b;->Y()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->t:Lcom/google/cloud/audit/RequestMetadata;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->t:Lcom/google/cloud/audit/RequestMetadata;

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

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$b;->Z()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/cloud/audit/ResourceLocation;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->i:Lcom/google/cloud/audit/ResourceLocation;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/cloud/audit/ResourceLocation;->newBuilder(Lcom/google/cloud/audit/ResourceLocation;)Lcom/google/cloud/audit/ResourceLocation$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/cloud/audit/ResourceLocation$b;->g0(Lcom/google/cloud/audit/ResourceLocation;)Lcom/google/cloud/audit/ResourceLocation$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/cloud/audit/ResourceLocation$b;->Y()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->i:Lcom/google/cloud/audit/ResourceLocation;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->i:Lcom/google/cloud/audit/ResourceLocation;

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

.method public o0(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->k:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->k:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->k:Lcom/google/protobuf/Struct;

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

.method public q0(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->y:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->x:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->x:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->x:Lcom/google/protobuf/Struct;

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

.method public r0(Lcom/google/protobuf/Any;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->C:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->B:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Any;->newBuilder(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Any$b;->d0(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Any$b;->Y()Lcom/google/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->B:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->B:Lcom/google/protobuf/Any;

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

.method public s0(Lcom/google/rpc/Status;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->o:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$b;->n:Lcom/google/rpc/Status;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/rpc/Status;->newBuilder(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/rpc/Status$b;->i0(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/rpc/Status$b;->Y()Lcom/google/rpc/Status;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->n:Lcom/google/rpc/Status;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog$b;->n:Lcom/google/rpc/Status;

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

.method public final t0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuditLog$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog$b;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuditLog$b;

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;->j0(Lcom/google/protobuf/l1;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public v0(J)Lcom/google/cloud/audit/AuditLog$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/cloud/audit/AuditLog$b;->m:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final x0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuditLog$b;

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog$b;->t0(Lcom/google/protobuf/h3;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method
