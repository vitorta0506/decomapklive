.class public final Lcom/tencent/liteav/videobase/videobase/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getTextureViewSetByUser"

    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v1, v2, v0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    instance-of v0, p0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 9
    check-cast p0, Landroid/view/TextureView;

    return-object p0

    :cond_0
    return-object v2
.end method

.method public static varargs a(Lcom/tencent/rtmp/ui/TXCloudVideoView;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/rtmp/ui/TXCloudVideoView;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "TXCCloudVideoViewMethodInvoker"

    if-nez p0, :cond_0

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",TXCloudVideoView is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_0
    :try_start_0
    const-class v2, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v2, 0x1

    .line 12
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 13
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",Exception:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Class;

    .line 5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    const-string p1, "showFocusView"

    invoke-static {p0, p1, v1, v0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/a;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/tencent/rtmp/ui/a;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    const-string p1, "setTouchToFocusEnabled"

    invoke-static {p0, p1, v1, v0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/b;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/tencent/rtmp/ui/b;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    const-string p1, "setZoomEnabled"

    invoke-static {p0, p1, v1, v0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
