.class public final Lv2/d0;
.super Lv2/a;
.source "SourceFile"

# interfaces
.implements Lv2/c0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/d0$b;
    }
.end annotation


# instance fields
.field private final h:Lcom/google/android/exoplayer2/s1;

.field private final i:Lcom/google/android/exoplayer2/s1$h;

.field private final j:Lj3/i$a;

.field private final k:Lv2/x$a;

.field private final l:Lcom/google/android/exoplayer2/drm/u;

.field private final m:Lcom/google/android/exoplayer2/upstream/b;

.field private final n:I

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Lj3/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/s1;Lj3/i$a;Lv2/x$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/b;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lv2/a;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1;->b:Lcom/google/android/exoplayer2/s1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/s1$h;

    iput-object v0, p0, Lv2/d0;->i:Lcom/google/android/exoplayer2/s1$h;

    .line 4
    iput-object p1, p0, Lv2/d0;->h:Lcom/google/android/exoplayer2/s1;

    .line 5
    iput-object p2, p0, Lv2/d0;->j:Lj3/i$a;

    .line 6
    iput-object p3, p0, Lv2/d0;->k:Lv2/x$a;

    .line 7
    iput-object p4, p0, Lv2/d0;->l:Lcom/google/android/exoplayer2/drm/u;

    .line 8
    iput-object p5, p0, Lv2/d0;->m:Lcom/google/android/exoplayer2/upstream/b;

    .line 9
    iput p6, p0, Lv2/d0;->n:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lv2/d0;->o:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p1, p0, Lv2/d0;->p:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/s1;Lj3/i$a;Lv2/x$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/b;ILv2/d0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lv2/d0;-><init>(Lcom/google/android/exoplayer2/s1;Lj3/i$a;Lv2/x$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/b;I)V

    return-void
.end method

.method private A()V
    .locals 9

    .line 1
    new-instance v8, Lv2/l0;

    iget-wide v1, p0, Lv2/d0;->p:J

    iget-boolean v3, p0, Lv2/d0;->q:Z

    iget-boolean v5, p0, Lv2/d0;->r:Z

    iget-object v7, p0, Lv2/d0;->h:Lcom/google/android/exoplayer2/s1;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lv2/l0;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/s1;)V

    .line 2
    iget-boolean v0, p0, Lv2/d0;->o:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lv2/d0$a;

    invoke-direct {v0, p0, v8}, Lv2/d0$a;-><init>(Lv2/d0;Lcom/google/android/exoplayer2/i3;)V

    move-object v8, v0

    .line 4
    :cond_0
    invoke-virtual {p0, v8}, Lv2/a;->y(Lcom/google/android/exoplayer2/i3;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/s1;
    .locals 1

    iget-object v0, p0, Lv2/d0;->h:Lcom/google/android/exoplayer2/s1;

    return-object v0
.end method

.method public d(Lv2/n;)V
    .locals 0

    check-cast p1, Lv2/c0;

    invoke-virtual {p1}, Lv2/c0;->e0()V

    return-void
.end method

.method public f(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lv2/d0;->p:J

    .line 2
    :cond_0
    iget-boolean v0, p0, Lv2/d0;->o:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lv2/d0;->p:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lv2/d0;->q:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lv2/d0;->r:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 3
    :cond_1
    iput-wide p1, p0, Lv2/d0;->p:J

    .line 4
    iput-boolean p3, p0, Lv2/d0;->q:Z

    .line 5
    iput-boolean p4, p0, Lv2/d0;->r:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lv2/d0;->o:Z

    .line 7
    invoke-direct {p0}, Lv2/d0;->A()V

    return-void
.end method

.method public h(Lv2/q$b;Lj3/b;J)Lv2/n;
    .locals 14

    move-object v12, p0

    .line 1
    iget-object v0, v12, Lv2/d0;->j:Lj3/i$a;

    invoke-interface {v0}, Lj3/i$a;->a()Lj3/i;

    move-result-object v2

    .line 2
    iget-object v0, v12, Lv2/d0;->s:Lj3/b0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v2, v0}, Lj3/i;->c(Lj3/b0;)V

    .line 4
    :cond_0
    new-instance v13, Lv2/c0;

    iget-object v0, v12, Lv2/d0;->i:Lcom/google/android/exoplayer2/s1$h;

    iget-object v1, v0, Lcom/google/android/exoplayer2/s1$h;->a:Landroid/net/Uri;

    iget-object v0, v12, Lv2/d0;->k:Lv2/x$a;

    .line 5
    invoke-virtual {p0}, Lv2/a;->v()La2/s1;

    move-result-object v3

    invoke-interface {v0, v3}, Lv2/x$a;->a(La2/s1;)Lv2/x;

    move-result-object v3

    iget-object v4, v12, Lv2/d0;->l:Lcom/google/android/exoplayer2/drm/u;

    .line 6
    invoke-virtual {p0, p1}, Lv2/a;->q(Lv2/q$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object v5

    iget-object v6, v12, Lv2/d0;->m:Lcom/google/android/exoplayer2/upstream/b;

    .line 7
    invoke-virtual {p0, p1}, Lv2/a;->s(Lv2/q$b;)Lv2/w$a;

    move-result-object v7

    iget-object v0, v12, Lv2/d0;->i:Lcom/google/android/exoplayer2/s1$h;

    iget-object v10, v0, Lcom/google/android/exoplayer2/s1$h;->e:Ljava/lang/String;

    iget v11, v12, Lv2/d0;->n:I

    move-object v0, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lv2/c0;-><init>(Landroid/net/Uri;Lj3/i;Lv2/x;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/b;Lv2/w$a;Lv2/c0$b;Lj3/b;Ljava/lang/String;I)V

    return-object v13
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method protected x(Lj3/b0;)V
    .locals 2
    .param p1    # Lj3/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lv2/d0;->s:Lj3/b0;

    .line 2
    iget-object p1, p0, Lv2/d0;->l:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/u;->prepare()V

    .line 3
    iget-object p1, p0, Lv2/d0;->l:Lcom/google/android/exoplayer2/drm/u;

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Lv2/a;->v()La2/s1;

    move-result-object v1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/u;->b(Landroid/os/Looper;La2/s1;)V

    .line 6
    invoke-direct {p0}, Lv2/d0;->A()V

    return-void
.end method

.method protected z()V
    .locals 1

    iget-object v0, p0, Lv2/d0;->l:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/u;->release()V

    return-void
.end method
