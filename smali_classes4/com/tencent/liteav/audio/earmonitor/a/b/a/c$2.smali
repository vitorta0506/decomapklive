.class final Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$2;->a:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "binderDied"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$2;->a:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    .line 3
    iget-object v1, v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;->e:Landroid/os/IBinder;

    .line 4
    iget-object v0, v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;->f:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$2;->a:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    .line 7
    iget-object v0, v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;->b:Lcom/tencent/liteav/audio/earmonitor/a/b/a/b;

    const/16 v1, 0x3eb

    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/b;->a(I)V

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$2;->a:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;->e:Landroid/os/IBinder;

    return-void
.end method
