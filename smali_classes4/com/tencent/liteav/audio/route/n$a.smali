.class public abstract Lcom/tencent/liteav/audio/route/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/route/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/route/n$a$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/media/AudioManager;

.field final b:Landroid/os/Handler;

.field protected c:Lcom/tencent/liteav/audio/route/b$a;

.field protected d:Lcom/tencent/liteav/audio/route/a;

.field protected e:Lcom/tencent/liteav/audio/route/n$a$a;

.field protected f:I

.field g:Z

.field protected final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;Lcom/tencent/liteav/audio/route/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->a:Lcom/tencent/liteav/audio/route/b$a;

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->c:Lcom/tencent/liteav/audio/route/b$a;

    .line 3
    sget-object v0, Lcom/tencent/liteav/audio/route/a;->a:Lcom/tencent/liteav/audio/route/a;

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->d:Lcom/tencent/liteav/audio/route/a;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->e:Lcom/tencent/liteav/audio/route/n$a$a;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/liteav/audio/route/n$a;->f:I

    .line 6
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/route/n$a;->g:Z

    .line 7
    new-instance v0, Lcom/tencent/liteav/audio/route/n$a$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/route/n$a$1;-><init>(Lcom/tencent/liteav/audio/route/n$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->h:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Lcom/tencent/liteav/audio/route/n$a;->a:Landroid/media/AudioManager;

    .line 9
    iput-object p2, p0, Lcom/tencent/liteav/audio/route/n$a;->b:Landroid/os/Handler;

    .line 10
    iput-object p3, p0, Lcom/tencent/liteav/audio/route/n$a;->d:Lcom/tencent/liteav/audio/route/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/route/n$a;->g:Z

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->e:Lcom/tencent/liteav/audio/route/n$a$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/audio/route/n$a;->c:Lcom/tencent/liteav/audio/route/b$a;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/audio/route/n$a$a;->a(Lcom/tencent/liteav/audio/route/b$a;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/audio/route/n$a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/tencent/liteav/audio/route/a;)V
    .locals 1

    .line 6
    iput-object p1, p0, Lcom/tencent/liteav/audio/route/n$a;->d:Lcom/tencent/liteav/audio/route/a;

    .line 7
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/n$a;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/tencent/liteav/audio/route/n$a;->f:I

    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/n$a;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/tencent/liteav/audio/route/n$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/audio/route/n$a;->e:Lcom/tencent/liteav/audio/route/n$a$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/route/n$a;->c()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/audio/route/n$a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/route/n$a;->g:Z

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected final d()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/n$a;->a:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occurs in getAudioMode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AudioRouteSwitcher"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v1
.end method

.method protected abstract e()J
.end method
