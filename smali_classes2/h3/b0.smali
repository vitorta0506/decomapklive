.class public abstract Lh3/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/b0$a;
    }
.end annotation


# instance fields
.field private a:Lh3/b0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lj3/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lj3/d;
    .locals 1

    iget-object v0, p0, Lh3/b0;->b:Lj3/d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/d;

    return-object v0
.end method

.method public b()Lh3/z;
    .locals 1

    sget-object v0, Lh3/z;->A:Lh3/z;

    return-object v0
.end method

.method public c(Lh3/b0$a;Lj3/d;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iput-object p1, p0, Lh3/b0;->a:Lh3/b0$a;

    .line 2
    iput-object p2, p0, Lh3/b0;->b:Lj3/d;

    return-void
.end method

.method protected final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh3/b0;->a:Lh3/b0$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lh3/b0$a;->b()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract f(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public g()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lh3/b0;->a:Lh3/b0$a;

    .line 2
    iput-object v0, p0, Lh3/b0;->b:Lj3/d;

    return-void
.end method

.method public abstract h([Lcom/google/android/exoplayer2/w2;Lv2/q0;Lv2/q$b;Lcom/google/android/exoplayer2/i3;)Lh3/c0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public i(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    return-void
.end method

.method public j(Lh3/z;)V
    .locals 0

    return-void
.end method
