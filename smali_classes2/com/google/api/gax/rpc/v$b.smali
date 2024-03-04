.class public Lcom/google/api/gax/rpc/v$b;
.super Lcom/google/api/gax/rpc/j0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        "Paged",
        "ListResponseT:Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/j0$a<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field private c:Lcom/google/api/gax/rpc/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/y<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/gax/rpc/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/v<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/j0$a;-><init>(Lcom/google/api/gax/rpc/j0;)V

    .line 4
    invoke-static {p1}, Lcom/google/api/gax/rpc/v;->f(Lcom/google/api/gax/rpc/v;)Lcom/google/api/gax/rpc/y;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/v$b;->c:Lcom/google/api/gax/rpc/y;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/gax/rpc/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/y<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/j0$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/v$b;->c:Lcom/google/api/gax/rpc/y;

    return-void
.end method

.method static synthetic h(Lcom/google/api/gax/rpc/v$b;)Lcom/google/api/gax/rpc/y;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/v$b;->c:Lcom/google/api/gax/rpc/y;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic c()Lcom/google/api/gax/rpc/j0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/gax/rpc/v$b;->i()Lcom/google/api/gax/rpc/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/v$b;->j(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/v$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/v$b;->k(Ljava/util/Set;)Lcom/google/api/gax/rpc/v$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f([Lcom/google/api/gax/rpc/StatusCode$Code;)Lcom/google/api/gax/rpc/j0$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/v$b;->l([Lcom/google/api/gax/rpc/StatusCode$Code;)Lcom/google/api/gax/rpc/v$b;

    move-result-object p1

    return-object p1
.end method

.method public i()Lcom/google/api/gax/rpc/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/v<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/gax/rpc/v;-><init>(Lcom/google/api/gax/rpc/v$b;Lcom/google/api/gax/rpc/v$a;)V

    return-object v0
.end method

.method public j(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/v$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/retrying/RetrySettings;",
            ")",
            "Lcom/google/api/gax/rpc/v$b<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/api/gax/rpc/j0$a;->d(Lcom/google/api/gax/retrying/RetrySettings;)Lcom/google/api/gax/rpc/j0$a;

    return-object p0
.end method

.method public k(Ljava/util/Set;)Lcom/google/api/gax/rpc/v$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;)",
            "Lcom/google/api/gax/rpc/v$b<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/api/gax/rpc/j0$a;->e(Ljava/util/Set;)Lcom/google/api/gax/rpc/j0$a;

    return-object p0
.end method

.method public varargs l([Lcom/google/api/gax/rpc/StatusCode$Code;)Lcom/google/api/gax/rpc/v$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ")",
            "Lcom/google/api/gax/rpc/v$b<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/api/gax/rpc/j0$a;->f([Lcom/google/api/gax/rpc/StatusCode$Code;)Lcom/google/api/gax/rpc/j0$a;

    return-object p0
.end method
