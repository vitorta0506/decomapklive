.class final Lcom/google/common/cache/k$w;
.super Lcom/google/common/cache/k$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$x<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile e:J

.field f:Lcom/google/common/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile h:J

.field i:Lcom/google/common/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field j:Lcom/google/common/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/k$x;-><init>(Ljava/lang/Object;ILcom/google/common/cache/q;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 2
    iput-wide p1, p0, Lcom/google/common/cache/k$w;->e:J

    .line 3
    invoke-static {}, Lcom/google/common/cache/k;->w()Lcom/google/common/cache/q;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/k$w;->f:Lcom/google/common/cache/q;

    .line 4
    invoke-static {}, Lcom/google/common/cache/k;->w()Lcom/google/common/cache/q;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/k$w;->g:Lcom/google/common/cache/q;

    .line 5
    iput-wide p1, p0, Lcom/google/common/cache/k$w;->h:J

    .line 6
    invoke-static {}, Lcom/google/common/cache/k;->w()Lcom/google/common/cache/q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$w;->i:Lcom/google/common/cache/q;

    .line 7
    invoke-static {}, Lcom/google/common/cache/k;->w()Lcom/google/common/cache/q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$w;->j:Lcom/google/common/cache/q;

    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$w;->g:Lcom/google/common/cache/q;

    return-object v0
.end method

.method public e()Lcom/google/common/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$w;->i:Lcom/google/common/cache/q;

    return-object v0
.end method

.method public f()Lcom/google/common/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$w;->f:Lcom/google/common/cache/q;

    return-object v0
.end method

.method public g(Lcom/google/common/cache/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/k$w;->g:Lcom/google/common/cache/q;

    return-void
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

    iget-object v0, p0, Lcom/google/common/cache/k$w;->j:Lcom/google/common/cache/q;

    return-object v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/cache/k$w;->h:J

    return-wide v0
.end method

.method public k(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/cache/k$w;->e:J

    return-void
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/cache/k$w;->e:J

    return-wide v0
.end method

.method public m(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/cache/k$w;->h:J

    return-void
.end method

.method public o(Lcom/google/common/cache/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/k$w;->f:Lcom/google/common/cache/q;

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

    iput-object p1, p0, Lcom/google/common/cache/k$w;->i:Lcom/google/common/cache/q;

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

    iput-object p1, p0, Lcom/google/common/cache/k$w;->j:Lcom/google/common/cache/q;

    return-void
.end method
