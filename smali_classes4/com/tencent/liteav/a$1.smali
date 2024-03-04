.class public final Lcom/tencent/liteav/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/a$1;->a:Lcom/tencent/liteav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/txcvodplayer/b/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/a$1;->a:Lcom/tencent/liteav/a;

    invoke-static {v0}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/b/d;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/d;->a()Lcom/tencent/liteav/txcvodplayer/b/f;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/a$1;->a:Lcom/tencent/liteav/a;

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVT_ID"

    const/16 v2, 0x7da

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v3

    const-string v1, "EVT_TIME"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->b()J

    move-result-wide v3

    const-string v1, "EVT_UTC_TIME"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "EVT_MSG"

    const-string v3, "Requested file information successfully"

    .line 8
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EVT_PLAY_URL"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/f;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EVT_PLAY_COVER_URL"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/f;->g()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EVT_PLAY_NAME"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/f;->h()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EVT_PLAY_DESCRIPTION"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/f;->f()Lcom/tencent/liteav/txcvodplayer/b/g;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/f;->f()Lcom/tencent/liteav/txcvodplayer/b/g;

    move-result-object p1

    .line 15
    iget p1, p1, Lcom/tencent/liteav/txcvodplayer/b/g;->e:I

    const-string v1, "EVT_PLAY_DURATION"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/a$1;->a:Lcom/tencent/liteav/a;

    invoke-static {p1, v2, v0}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;ILandroid/os/Bundle;)V

    const-string p1, "TXCVodPlayer"

    const-string v0, "onNetSuccess: Requested file information successfully"

    .line 18
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/txcvodplayer/b/d;Ljava/lang/String;I)V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/tencent/liteav/a$1;->a:Lcom/tencent/liteav/a;

    invoke-static {v0}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/b/d;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "EVT_ID"

    const/16 v1, -0x902

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v2

    const-string v0, "EVT_TIME"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 23
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->b()J

    move-result-wide v2

    const-string v0, "EVT_UTC_TIME"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "EVT_MSG"

    .line 24
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EVT_PARAM1"

    .line 25
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object p3, p0, Lcom/tencent/liteav/a$1;->a:Lcom/tencent/liteav/a;

    invoke-static {p3, v1, p1}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;ILandroid/os/Bundle;)V

    .line 27
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onNetFailed: eventId: -2306 description:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCVodPlayer"

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
