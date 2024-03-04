.class public Lu6/c$c;
.super Lcom/google/api/gax/rpc/g0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/gax/rpc/g0$a<",
        "Lu6/c;",
        "Lu6/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final u:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final v:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/api/gax/retrying/RetrySettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/api/gax/rpc/j0$a<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/api/gax/rpc/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/longrunning/GetOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/api/gax/rpc/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/v$b<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            "Lcom/google/longrunning/ListOperationsResponse;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/api/gax/rpc/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/longrunning/CancelOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/api/gax/rpc/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/longrunning/DeleteOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/google/api/gax/rpc/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/longrunning/WaitOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 2
    sget-object v2, Lcom/google/api/gax/rpc/StatusCode$Code;->DEADLINE_EXCEEDED:Lcom/google/api/gax/rpc/StatusCode$Code;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/api/gax/rpc/StatusCode$Code;->UNAVAILABLE:Lcom/google/api/gax/rpc/StatusCode$Code;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/z5;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    const-string v2, "idempotent"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 6
    invoke-static {}, Lcom/google/common/collect/z5;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    const-string v2, "non_idempotent"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lu6/c$c;->u:Lcom/google/common/collect/ImmutableMap;

    .line 8
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/google/api/gax/retrying/RetrySettings;->newBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 10
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->c(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/google/api/gax/retrying/RetrySettings$a;->i(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/32 v2, 0xea60

    .line 12
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->g(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/32 v2, 0x15f90

    .line 13
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/gax/retrying/RetrySettings$a;->d(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 14
    invoke-virtual {v1, v4, v5}, Lcom/google/api/gax/retrying/RetrySettings$a;->j(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 15
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->h(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    .line 16
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->k(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object v1

    const-string v2, "default"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 19
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lu6/c$c;->v:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/gax/rpc/j;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/g0$a;-><init>(Lcom/google/api/gax/rpc/j;)V

    .line 2
    invoke-static {}, Lcom/google/api/gax/rpc/j0;->d()Lcom/google/api/gax/rpc/j0$a;

    move-result-object p1

    iput-object p1, p0, Lu6/c$c;->p:Lcom/google/api/gax/rpc/j0$a;

    .line 3
    invoke-static {}, Lu6/c;->o()Lcom/google/api/gax/rpc/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gax/rpc/v;->h(Lcom/google/api/gax/rpc/y;)Lcom/google/api/gax/rpc/v$b;

    move-result-object v0

    iput-object v0, p0, Lu6/c$c;->q:Lcom/google/api/gax/rpc/v$b;

    .line 4
    invoke-static {}, Lcom/google/api/gax/rpc/j0;->d()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v1

    iput-object v1, p0, Lu6/c$c;->r:Lcom/google/api/gax/rpc/j0$a;

    .line 5
    invoke-static {}, Lcom/google/api/gax/rpc/j0;->d()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v2

    iput-object v2, p0, Lu6/c$c;->s:Lcom/google/api/gax/rpc/j0$a;

    .line 6
    invoke-static {}, Lcom/google/api/gax/rpc/j0;->d()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v3

    iput-object v3, p0, Lu6/c$c;->t:Lcom/google/api/gax/rpc/j0$a;

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lu6/c$c;->o:Lcom/google/common/collect/ImmutableList;

    .line 8
    invoke-static {p0}, Lu6/c$c;->O(Lu6/c$c;)Lu6/c$c;

    return-void
.end method

.method static synthetic I()Lu6/c$c;
    .locals 1

    invoke-static {}, Lu6/c$c;->L()Lu6/c$c;

    move-result-object v0

    return-object v0
.end method

.method private static L()Lu6/c$c;
    .locals 2

    .line 1
    new-instance v0, Lu6/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu6/c$c;-><init>(Lcom/google/api/gax/rpc/j;)V

    .line 2
    invoke-static {v0}, Lu6/c$c;->O(Lu6/c$c;)Lu6/c$c;

    move-result-object v0

    return-object v0
.end method

.method private static O(Lu6/c$c;)Lu6/c$c;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lu6/c$c;->N()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    sget-object v1, Lu6/c$c;->u:Lcom/google/common/collect/ImmutableMap;

    const-string v2, "idempotent"

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v0, v3}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    sget-object v3, Lu6/c$c;->v:Lcom/google/common/collect/ImmutableMap;

    const-string v4, "default"

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/gax/retrying/RetrySettings;

    invoke-virtual {v0, v5}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    .line 4
    invoke-virtual {p0}, Lu6/c$c;->P()Lcom/google/api/gax/rpc/v$b;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-virtual {v0, v5}, Lcom/google/api/gax/rpc/v$b;->k(Ljava/util/Set;)Lcom/google/api/gax/rpc/v$b;

    move-result-object v0

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/gax/retrying/RetrySettings;

    invoke-virtual {v0, v5}, Lcom/google/api/gax/rpc/v$b;->j(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/v$b;

    .line 7
    invoke-virtual {p0}, Lu6/c$c;->K()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-virtual {v0, v5}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/gax/retrying/RetrySettings;

    invoke-virtual {v0, v5}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    .line 10
    invoke-virtual {p0}, Lu6/c$c;->M()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-virtual {v0, v5}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    .line 12
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/gax/retrying/RetrySettings;

    invoke-virtual {v0, v5}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    .line 13
    invoke-virtual {p0}, Lu6/c$c;->Q()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    .line 15
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/gax/retrying/RetrySettings;

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    return-object p0
.end method


# virtual methods
.method public J()Lu6/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lu6/c;

    invoke-direct {v0, p0}, Lu6/c;-><init>(Lu6/c$c;)V

    return-object v0
.end method

.method public K()Lcom/google/api/gax/rpc/j0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/longrunning/CancelOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c$c;->r:Lcom/google/api/gax/rpc/j0$a;

    return-object v0
.end method

.method public M()Lcom/google/api/gax/rpc/j0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/longrunning/DeleteOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c$c;->s:Lcom/google/api/gax/rpc/j0$a;

    return-object v0
.end method

.method public N()Lcom/google/api/gax/rpc/j0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/longrunning/GetOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c$c;->p:Lcom/google/api/gax/rpc/j0$a;

    return-object v0
.end method

.method public P()Lcom/google/api/gax/rpc/v$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/v$b<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            "Lcom/google/longrunning/ListOperationsResponse;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c$c;->q:Lcom/google/api/gax/rpc/v$b;

    return-object v0
.end method

.method public Q()Lcom/google/api/gax/rpc/j0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/longrunning/WaitOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c$c;->t:Lcom/google/api/gax/rpc/j0$a;

    return-object v0
.end method

.method public bridge synthetic o()Lcom/google/api/gax/rpc/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lu6/c$c;->J()Lu6/c;

    move-result-object v0

    return-object v0
.end method
