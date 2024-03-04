.class public abstract Lv2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/q;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lv2/q$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lv2/q$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lv2/w$a;

.field private final d:Lcom/google/android/exoplayer2/drm/s$a;

.field private e:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/google/android/exoplayer2/i3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:La2/s1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lv2/a;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lv2/a;->b:Ljava/util/HashSet;

    .line 4
    new-instance v0, Lv2/w$a;

    invoke-direct {v0}, Lv2/w$a;-><init>()V

    iput-object v0, p0, Lv2/a;->c:Lv2/w$a;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/drm/s$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/s$a;-><init>()V

    iput-object v0, p0, Lv2/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    return-void
.end method


# virtual methods
.method public final a(Lv2/q$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lv2/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lv2/a;->e:Landroid/os/Looper;

    .line 4
    iput-object p1, p0, Lv2/a;->f:Lcom/google/android/exoplayer2/i3;

    .line 5
    iput-object p1, p0, Lv2/a;->g:La2/s1;

    .line 6
    iget-object p1, p0, Lv2/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 7
    invoke-virtual {p0}, Lv2/a;->z()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lv2/a;->c(Lv2/q$c;)V

    :goto_0
    return-void
.end method

.method public final c(Lv2/q$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lv2/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lv2/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lv2/a;->t()V

    :cond_0
    return-void
.end method

.method public final e(Landroid/os/Handler;Lv2/w;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lv2/a;->c:Lv2/w$a;

    invoke-virtual {v0, p1, p2}, Lv2/w$a;->f(Landroid/os/Handler;Lv2/w;)V

    return-void
.end method

.method public final g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lv2/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method public final i(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 1

    iget-object v0, p0, Lv2/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->t(Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method public final k(Lv2/q$c;Lj3/b0;La2/s1;)V
    .locals 2
    .param p2    # Lj3/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lv2/a;->e:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3
    iput-object p3, p0, Lv2/a;->g:La2/s1;

    .line 4
    iget-object p3, p0, Lv2/a;->f:Lcom/google/android/exoplayer2/i3;

    .line 5
    iget-object v1, p0, Lv2/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lv2/a;->e:Landroid/os/Looper;

    if-nez v1, :cond_2

    .line 7
    iput-object v0, p0, Lv2/a;->e:Landroid/os/Looper;

    .line 8
    iget-object p3, p0, Lv2/a;->b:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, p2}, Lv2/a;->x(Lj3/b0;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Lv2/a;->o(Lv2/q$c;)V

    .line 11
    invoke-interface {p1, p0, p3}, Lv2/q$c;->a(Lv2/q;Lcom/google/android/exoplayer2/i3;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic l()Z
    .locals 1

    invoke-static {p0}, Lv2/p;->b(Lv2/q;)Z

    move-result v0

    return v0
.end method

.method public synthetic m()Lcom/google/android/exoplayer2/i3;
    .locals 1

    invoke-static {p0}, Lv2/p;->a(Lv2/q;)Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    return-object v0
.end method

.method public final n(Lv2/w;)V
    .locals 1

    iget-object v0, p0, Lv2/a;->c:Lv2/w$a;

    invoke-virtual {v0, p1}, Lv2/w$a;->w(Lv2/w;)V

    return-void
.end method

.method public final o(Lv2/q$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/a;->e:Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lv2/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lv2/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lv2/a;->u()V

    :cond_0
    return-void
.end method

.method protected final p(ILv2/q$b;)Lcom/google/android/exoplayer2/drm/s$a;
    .locals 1
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lv2/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->u(ILv2/q$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    return-object p1
.end method

.method protected final q(Lv2/q$b;)Lcom/google/android/exoplayer2/drm/s$a;
    .locals 2
    .param p1    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lv2/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/s$a;->u(ILv2/q$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    return-object p1
.end method

.method protected final r(ILv2/q$b;J)Lv2/w$a;
    .locals 1
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lv2/a;->c:Lv2/w$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lv2/w$a;->x(ILv2/q$b;J)Lv2/w$a;

    move-result-object p1

    return-object p1
.end method

.method protected final s(Lv2/q$b;)Lv2/w$a;
    .locals 4
    .param p1    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lv2/a;->c:Lv2/w$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lv2/w$a;->x(ILv2/q$b;J)Lv2/w$a;

    move-result-object p1

    return-object p1
.end method

.method protected t()V
    .locals 0

    return-void
.end method

.method protected u()V
    .locals 0

    return-void
.end method

.method protected final v()La2/s1;
    .locals 1

    iget-object v0, p0, Lv2/a;->g:La2/s1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/s1;

    return-object v0
.end method

.method protected final w()Z
    .locals 1

    iget-object v0, p0, Lv2/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected abstract x(Lj3/b0;)V
    .param p1    # Lj3/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected final y(Lcom/google/android/exoplayer2/i3;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lv2/a;->f:Lcom/google/android/exoplayer2/i3;

    .line 2
    iget-object v0, p0, Lv2/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/q$c;

    .line 3
    invoke-interface {v1, p0, p1}, Lv2/q$c;->a(Lv2/q;Lcom/google/android/exoplayer2/i3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract z()V
.end method
