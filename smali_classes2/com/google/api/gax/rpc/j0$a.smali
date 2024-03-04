.class public Lcom/google/api/gax/rpc/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/api/gax/retrying/RetrySettings$a;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/w7;->g()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/j0$a;->a:Ljava/util/Set;

    .line 3
    invoke-static {}, Lcom/google/api/gax/retrying/RetrySettings;->newBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/j0$a;->b:Lcom/google/api/gax/retrying/RetrySettings$a;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/gax/rpc/j0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/j0<",
            "TRequestT;TResponseT;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/api/gax/rpc/j0;->a(Lcom/google/api/gax/rpc/j0;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    .line 6
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j0;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    return-void
.end method

.method static synthetic a(Lcom/google/api/gax/rpc/j0$a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/j0$a;->a:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b(Lcom/google/api/gax/rpc/j0$a;)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/j0$a;->b:Lcom/google/api/gax/retrying/RetrySettings$a;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/google/api/gax/rpc/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/j0;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/j0;-><init>(Lcom/google/api/gax/rpc/j0$a;)V

    return-object v0
.end method

.method public d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/retrying/RetrySettings;",
            ")",
            "Lcom/google/api/gax/rpc/j0$a<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->toBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/j0$a;->b:Lcom/google/api/gax/retrying/RetrySettings$a;

    return-object p0
.end method

.method public e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;)",
            "Lcom/google/api/gax/rpc/j0$a<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/w7;->h(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/j0$a;->a:Ljava/util/Set;

    return-object p0
.end method

.method public varargs f([Lcom/google/api/gax/rpc/StatusCode$Code;)Lcom/google/api/gax/rpc/j0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ")",
            "Lcom/google/api/gax/rpc/j0$a<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/w7;->j([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    return-object p0
.end method

.method public g(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/rpc/j0$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/Duration;",
            ")",
            "Lcom/google/api/gax/rpc/j0$a<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/api/gax/rpc/StatusCode$Code;

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/api/gax/rpc/j0$a;->f([Lcom/google/api/gax/rpc/StatusCode$Code;)Lcom/google/api/gax/rpc/j0$a;

    .line 2
    invoke-static {}, Lcom/google/api/gax/retrying/RetrySettings;->newBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/api/gax/retrying/RetrySettings$a;->k(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->c(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/google/api/gax/retrying/RetrySettings$a;->i(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->g(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/api/gax/retrying/RetrySettings$a;->d(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/google/api/gax/retrying/RetrySettings$a;->j(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/api/gax/retrying/RetrySettings$a;->h(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/api/gax/retrying/RetrySettings$a;->f(I)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings$a;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    return-object p0
.end method
