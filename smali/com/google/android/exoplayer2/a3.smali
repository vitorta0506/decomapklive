.class public Lcom/google/android/exoplayer2/a3;
.super Lcom/google/android/exoplayer2/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a3$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:Lcom/google/android/exoplayer2/v0;

.field private final c:Lcom/google/android/exoplayer2/util/g;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/q$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/e;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a3;->c:Lcom/google/android/exoplayer2/util/g;

    .line 3
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/v0;

    invoke-direct {v1, p1, p0}, Lcom/google/android/exoplayer2/v0;-><init>(Lcom/google/android/exoplayer2/q$b;Lcom/google/android/exoplayer2/l2;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g;->e()Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->c:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g;->e()Z

    .line 5
    throw p1
.end method

.method private e0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->c:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g;->b()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->A()Z

    move-result v0

    return v0
.end method

.method public B(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->B(Z)V

    return-void
.end method

.method public C(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->C(Z)V

    return-void
.end method

.method public D()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public E()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->E()I

    move-result v0

    return v0
.end method

.method public F(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->F(Landroid/view/TextureView;)V

    return-void
.end method

.method public H()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->H()I

    move-result v0

    return v0
.end method

.method public I()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public J()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public K(Lcom/google/android/exoplayer2/l2$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->K(Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public M()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->M()I

    move-result v0

    return v0
.end method

.method public N(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->N(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public O()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->O()Z

    move-result v0

    return v0
.end method

.method public P()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->P()J

    move-result-wide v0

    return-wide v0
.end method

.method public S()Lcom/google/android/exoplayer2/x1;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->S()Lcom/google/android/exoplayer2/x1;

    move-result-object v0

    return-object v0
.end method

.method public T()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->T()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lv2/q;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->a(Lv2/q;)V

    return-void
.end method

.method public b()Lcom/google/android/exoplayer2/k2;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/k2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->d(Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->e()Z

    move-result v0

    return v0
.end method

.method public f()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public f0()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->s1()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/l2$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->g(Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getVideoSize()Lk3/y;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->getVideoSize()Lk3/y;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->h(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public i(Lh3/z;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->i(Lh3/z;)V

    return-void
.end method

.method public bridge synthetic k()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a3;->f0()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public l(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->l(Z)V

    return-void
.end method

.method public m()Lcom/google/android/exoplayer2/n3;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->m()Lcom/google/android/exoplayer2/n3;

    move-result-object v0

    return-object v0
.end method

.method public o()Lx2/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->o()Lx2/e;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->p()I

    move-result v0

    return v0
.end method

.method public prepare()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->prepare()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->release()V

    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->s()I

    move-result v0

    return v0
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->setRepeatMode(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->stop()V

    return-void
.end method

.method public t()Lcom/google/android/exoplayer2/i3;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    return-object v0
.end method

.method public u()Landroid/os/Looper;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->u()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public v()Lh3/z;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->v()Lh3/z;

    move-result-object v0

    return-object v0
.end method

.method public x(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v0;->x(Landroid/view/TextureView;)V

    return-void
.end method

.method public y(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/v0;->y(IJ)V

    return-void
.end method

.method public z()Lcom/google/android/exoplayer2/l2$b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a3;->e0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->z()Lcom/google/android/exoplayer2/l2$b;

    move-result-object v0

    return-object v0
.end method
