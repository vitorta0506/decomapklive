.class Lcom/google/common/cache/k$l0$a;
.super Lcom/google/common/cache/k$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k$l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/k$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/k$l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/k$d;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/google/common/cache/k$l0$a;->a:Lcom/google/common/cache/q;

    .line 3
    iput-object p0, p0, Lcom/google/common/cache/k$l0$a;->b:Lcom/google/common/cache/q;

    return-void
.end method


# virtual methods
.method public e()Lcom/google/common/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$l0$a;->a:Lcom/google/common/cache/q;

    return-object v0
.end method

.method public h()Lcom/google/common/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$l0$a;->b:Lcom/google/common/cache/q;

    return-object v0
.end method

.method public j()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public m(J)V
    .locals 0

    return-void
.end method

.method public p(Lcom/google/common/cache/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/k$l0$a;->a:Lcom/google/common/cache/q;

    return-void
.end method

.method public q(Lcom/google/common/cache/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/k$l0$a;->b:Lcom/google/common/cache/q;

    return-void
.end method
