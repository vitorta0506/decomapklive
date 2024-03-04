.class public Lu5/d$a;
.super Lcom/google/api/gax/rpc/g0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/gax/rpc/g0$a<",
        "Lu5/d;",
        "Lu5/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final t:Lcom/google/common/collect/ImmutableMap;
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

.field private static final u:Lcom/google/common/collect/ImmutableMap;
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
            "Lcom/google/cloud/speech/v1/RecognizeRequest;",
            "Lcom/google/cloud/speech/v1/RecognizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/api/gax/rpc/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/api/gax/rpc/s$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/s$b<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeResponse;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/api/gax/rpc/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/f0$a<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 2
    sget-object v2, Lcom/google/api/gax/rpc/StatusCode$Code;->UNAVAILABLE:Lcom/google/api/gax/rpc/StatusCode$Code;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/api/gax/rpc/StatusCode$Code;->DEADLINE_EXCEEDED:Lcom/google/api/gax/rpc/StatusCode$Code;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/z5;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    const-string v2, "retry_policy_0_codes"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 6
    invoke-static {}, Lcom/google/common/collect/z5;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    const-string v2, "no_retry_1_codes"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 8
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lu5/d$a;->t:Lcom/google/common/collect/ImmutableMap;

    .line 9
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/api/gax/retrying/RetrySettings;->newBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 11
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->c(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/google/api/gax/retrying/RetrySettings$a;->i(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/32 v2, 0xea60

    .line 13
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->g(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/32 v2, 0x4c4b40

    .line 14
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/gax/retrying/RetrySettings$a;->d(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 15
    invoke-virtual {v1, v4, v5}, Lcom/google/api/gax/retrying/RetrySettings$a;->j(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 16
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/api/gax/retrying/RetrySettings$a;->h(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 17
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/api/gax/retrying/RetrySettings$a;->k(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object v1

    const-string v6, "retry_policy_0_params"

    .line 19
    invoke-virtual {v0, v6, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 20
    invoke-static {}, Lcom/google/api/gax/retrying/RetrySettings;->newBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 21
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/api/gax/retrying/RetrySettings$a;->d(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v4, v5}, Lcom/google/api/gax/retrying/RetrySettings$a;->j(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 23
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/gax/retrying/RetrySettings$a;->h(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 24
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->k(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object v1

    const-string v2, "no_retry_1_params"

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 27
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lu5/d$a;->u:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/gax/rpc/j;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/g0$a;-><init>(Lcom/google/api/gax/rpc/j;)V

    .line 2
    invoke-static {}, Lcom/google/api/gax/rpc/j0;->d()Lcom/google/api/gax/rpc/j0$a;

    move-result-object p1

    iput-object p1, p0, Lu5/d$a;->p:Lcom/google/api/gax/rpc/j0$a;

    .line 3
    invoke-static {}, Lcom/google/api/gax/rpc/j0;->d()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    iput-object v0, p0, Lu5/d$a;->q:Lcom/google/api/gax/rpc/j0$a;

    .line 4
    invoke-static {}, Lcom/google/api/gax/rpc/s;->e()Lcom/google/api/gax/rpc/s$b;

    move-result-object v1

    iput-object v1, p0, Lu5/d$a;->r:Lcom/google/api/gax/rpc/s$b;

    .line 5
    invoke-static {}, Lcom/google/api/gax/rpc/f0;->a()Lcom/google/api/gax/rpc/f0$a;

    move-result-object v1

    iput-object v1, p0, Lu5/d$a;->s:Lcom/google/api/gax/rpc/f0$a;

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lu5/d$a;->o:Lcom/google/common/collect/ImmutableList;

    .line 7
    invoke-static {p0}, Lu5/d$a;->L(Lu5/d$a;)Lu5/d$a;

    return-void
.end method

.method static synthetic I()Lu5/d$a;
    .locals 1

    invoke-static {}, Lu5/d$a;->K()Lu5/d$a;

    move-result-object v0

    return-object v0
.end method

.method private static K()Lu5/d$a;
    .locals 2

    .line 1
    new-instance v0, Lu5/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu5/d$a;-><init>(Lcom/google/api/gax/rpc/j;)V

    .line 2
    invoke-static {}, Lu5/d;->s()Lcom/google/api/gax/rpc/i0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/g0$a;->H(Lcom/google/api/gax/rpc/i0;)Lcom/google/api/gax/rpc/g0$a;

    .line 3
    invoke-static {}, Lu5/d;->q()Ll5/l$a;

    move-result-object v1

    invoke-virtual {v1}, Ll5/l$a;->b()Ll5/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/g0$a;->C(Ll5/f;)Lcom/google/api/gax/rpc/g0$a;

    .line 4
    invoke-static {}, Lu5/d;->p()Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->a()Lcom/google/api/gax/rpc/ApiClientHeaderProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/g0$a;->E(Lcom/google/api/gax/rpc/p;)Lcom/google/api/gax/rpc/g0$a;

    .line 5
    invoke-static {}, Lu5/d;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/g0$a;->D(Ljava/lang/String;)Lcom/google/api/gax/rpc/g0$a;

    .line 6
    invoke-static {}, Lu5/d;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/g0$a;->F(Ljava/lang/String;)Lcom/google/api/gax/rpc/g0$a;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/g0$a;->G(Z)Lcom/google/api/gax/rpc/g0$a;

    .line 8
    invoke-static {v0}, Lu5/d$a;->L(Lu5/d$a;)Lu5/d$a;

    move-result-object v0

    return-object v0
.end method

.method private static L(Lu5/d$a;)Lu5/d$a;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lu5/d$a;->O()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    sget-object v1, Lu5/d$a;->t:Lcom/google/common/collect/ImmutableMap;

    const-string v2, "retry_policy_0_codes"

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    sget-object v2, Lu5/d$a;->u:Lcom/google/common/collect/ImmutableMap;

    const-string v3, "retry_policy_0_params"

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/gax/retrying/RetrySettings;

    invoke-virtual {v0, v3}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    .line 4
    invoke-virtual {p0}, Lu5/d$a;->N()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    const-string v3, "no_retry_1_codes"

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v0, v4}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    const-string v4, "no_retry_1_params"

    .line 6
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/gax/retrying/RetrySettings;

    invoke-virtual {v0, v5}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    .line 7
    invoke-virtual {p0}, Lu5/d$a;->M()Lcom/google/api/gax/rpc/s$b;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/api/gax/rpc/j0;->d()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v5

    .line 9
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v5, v1}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    move-result-object v1

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/gax/retrying/RetrySettings;

    invoke-virtual {v1, v2}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/api/gax/rpc/j0$a;->c()Lcom/google/api/gax/rpc/j0;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/s$b;->b(Lcom/google/api/gax/rpc/j0;)Lcom/google/api/gax/rpc/s$b;

    move-result-object v0

    const-class v1, Lcom/google/cloud/speech/v1/LongRunningRecognizeResponse;

    .line 13
    invoke-static {v1}, Lm5/o0;->b(Ljava/lang/Class;)Lm5/o0;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/s$b;->e(Lk5/b;)Lcom/google/api/gax/rpc/s$b;

    move-result-object v0

    const-class v1, Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;

    .line 15
    invoke-static {v1}, Lm5/n0;->b(Ljava/lang/Class;)Lm5/n0;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/s$b;->c(Lk5/b;)Lcom/google/api/gax/rpc/s$b;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/google/api/gax/retrying/RetrySettings;->newBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 18
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->c(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/google/api/gax/retrying/RetrySettings$a;->i(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    .line 20
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->g(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->d(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 22
    invoke-virtual {v1, v3, v4}, Lcom/google/api/gax/retrying/RetrySettings$a;->j(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->h(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    .line 24
    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/retrying/RetrySettings$a;->k(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object v1

    .line 26
    invoke-static {v1}, Ln5/c;->a(Lcom/google/api/gax/retrying/RetrySettings;)Ln5/c;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/s$b;->d(Lo5/h;)Lcom/google/api/gax/rpc/s$b;

    return-object p0
.end method


# virtual methods
.method public J()Lu5/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lu5/d;

    invoke-direct {v0, p0}, Lu5/d;-><init>(Lu5/d$a;)V

    return-object v0
.end method

.method public M()Lcom/google/api/gax/rpc/s$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/s$b<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeResponse;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d$a;->r:Lcom/google/api/gax/rpc/s$b;

    return-object v0
.end method

.method public N()Lcom/google/api/gax/rpc/j0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d$a;->q:Lcom/google/api/gax/rpc/j0$a;

    return-object v0
.end method

.method public O()Lcom/google/api/gax/rpc/j0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0$a<",
            "Lcom/google/cloud/speech/v1/RecognizeRequest;",
            "Lcom/google/cloud/speech/v1/RecognizeResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d$a;->p:Lcom/google/api/gax/rpc/j0$a;

    return-object v0
.end method

.method public P()Lcom/google/api/gax/rpc/f0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/f0$a<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d$a;->s:Lcom/google/api/gax/rpc/f0$a;

    return-object v0
.end method

.method public bridge synthetic o()Lcom/google/api/gax/rpc/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lu5/d$a;->J()Lu5/d;

    move-result-object v0

    return-object v0
.end method
