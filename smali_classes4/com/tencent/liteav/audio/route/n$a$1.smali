.class final Lcom/tencent/liteav/audio/route/n$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/route/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/route/n$a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/route/n$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/audio/route/n$a$1;->a:Lcom/tencent/liteav/audio/route/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/n$a$1;->a:Lcom/tencent/liteav/audio/route/n$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/route/n$a;->e()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/tencent/liteav/audio/route/n$a$1;->a:Lcom/tencent/liteav/audio/route/n$a;

    iget v3, v2, Lcom/tencent/liteav/audio/route/n$a;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/tencent/liteav/audio/route/n$a;->f:I

    .line 3
    iget-object v3, v2, Lcom/tencent/liteav/audio/route/n$a;->b:Landroid/os/Handler;

    .line 4
    iget-object v2, v2, Lcom/tencent/liteav/audio/route/n$a;->h:Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v2, p0, Lcom/tencent/liteav/audio/route/n$a$1;->a:Lcom/tencent/liteav/audio/route/n$a;

    .line 6
    iget-boolean v3, v2, Lcom/tencent/liteav/audio/route/n$a;->g:Z

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 7
    iget-object v3, v2, Lcom/tencent/liteav/audio/route/n$a;->b:Landroid/os/Handler;

    .line 8
    iget-object v2, v2, Lcom/tencent/liteav/audio/route/n$a;->h:Ljava/lang/Runnable;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
