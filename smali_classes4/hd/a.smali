.class public abstract Lhd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/animation/Animator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:J

.field protected b:Led/b$a;

.field protected c:Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Led/b$a;)V
    .locals 2
    .param p1    # Led/b$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x15e

    .line 2
    iput-wide v0, p0, Lhd/a;->a:J

    .line 3
    iput-object p1, p0, Lhd/a;->b:Led/b$a;

    .line 4
    invoke-virtual {p0}, Lhd/a;->a()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lhd/a;->c:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/animation/Animator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public b(J)Lhd/a;
    .locals 2

    .line 1
    iput-wide p1, p0, Lhd/a;->a:J

    .line 2
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_0
    return-object p0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public abstract d(F)Lhd/a;
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
