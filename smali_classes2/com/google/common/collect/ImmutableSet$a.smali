.class public Lcom/google/common/collect/ImmutableSet$a;
.super Lcom/google/common/collect/ImmutableCollection$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/common/collect/ImmutableSet$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet$h<",
            "TE;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$a;-><init>()V

    if-lez p1, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/ImmutableSet$f;

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableSet$f;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet$c;->h()Lcom/google/common/collect/ImmutableSet$h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    :goto_0
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$a;-><init>()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$a;->k()V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$h;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    return-object p0
.end method

.method public g(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->d(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$a;

    return-object p0
.end method

.method public h()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$a;->b:Z

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$h;->g()Lcom/google/common/collect/ImmutableSet$h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$h;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method i(Lcom/google/common/collect/ImmutableSet$a;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$a<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$a;->k()V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    iget-object p1, p1, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$h;->d(Lcom/google/common/collect/ImmutableSet$h;)Lcom/google/common/collect/ImmutableSet$h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    return-object p0
.end method

.method j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$h;->e()Lcom/google/common/collect/ImmutableSet$h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$a;->a:Lcom/google/common/collect/ImmutableSet$h;

    return-void
.end method

.method final k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$a;->j()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$a;->b:Z

    :cond_0
    return-void
.end method
