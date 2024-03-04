.class final Lcom/google/android/exoplayer2/util/q$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/exoplayer2/util/l$b;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/q$c;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/util/l$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/l$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/q$c;->b:Lcom/google/android/exoplayer2/util/l$b;

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/exoplayer2/util/q$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/q$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/q$c;->d:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q$c;->b:Lcom/google/android/exoplayer2/util/l$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/l$b;->a(I)Lcom/google/android/exoplayer2/util/l$b;

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/q$c;->c:Z

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/q$c;->a:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/util/q$a;->invoke(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/q$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/q$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/q$c;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/q$c;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q$c;->b:Lcom/google/android/exoplayer2/util/l$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l$b;->e()Lcom/google/android/exoplayer2/util/l;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/util/l$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/l$b;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/q$c;->b:Lcom/google/android/exoplayer2/util/l$b;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/q$c;->c:Z

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/q$c;->a:Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/util/q$b;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/l;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/util/q$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/q$b<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/q$c;->d:Z

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/q$c;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q$c;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/q$c;->b:Lcom/google/android/exoplayer2/util/l$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l$b;->e()Lcom/google/android/exoplayer2/util/l;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/util/q$b;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/l;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/google/android/exoplayer2/util/q$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q$c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/util/q$c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/q$c;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q$c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
