.class final Lcom/tencent/liteav/txcvodplayer/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/txcvodplayer/b/c;->a(Lcom/tencent/liteav/txcvodplayer/b/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/b/c$a;

.field final synthetic b:Lcom/tencent/liteav/txcvodplayer/b/c;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/txcvodplayer/b/c;Lcom/tencent/liteav/txcvodplayer/b/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/c$1;->b:Lcom/tencent/liteav/txcvodplayer/b/c;

    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/b/c$1;->a:Lcom/tencent/liteav/txcvodplayer/b/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/tencent/liteav/txcvodplayer/b/c$1;->b:Lcom/tencent/liteav/txcvodplayer/b/c;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "https://playvideo.qcloud.com/getplayinfo/v4"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    iget-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->a:Lcom/tencent/rtmp/TXPlayInfoParams;

    invoke-virtual {v3}, Lcom/tencent/rtmp/TXPlayInfoParams;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->a:Lcom/tencent/rtmp/TXPlayInfoParams;

    invoke-virtual {v3}, Lcom/tencent/rtmp/TXPlayInfoParams;->getFileId()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "%s/%d/%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->a:Lcom/tencent/rtmp/TXPlayInfoParams;

    invoke-virtual {v3}, Lcom/tencent/rtmp/TXPlayInfoParams;->getPSign()Ljava/lang/String;

    move-result-object v3

    const-string v7, "TXCPlayInfoProtocolV4"

    const/4 v8, 0x0

    if-eqz v3, :cond_b

    .line 4
    iget-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->a:Lcom/tencent/rtmp/TXPlayInfoParams;

    invoke-virtual {v3}, Lcom/tencent/rtmp/TXPlayInfoParams;->getPSign()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "&"

    if-nez v10, :cond_0

    .line 7
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "pcfg="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "psign="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/c/a;->a()Lcom/tencent/liteav/txcvodplayer/c/a;

    move-result-object v3

    .line 11
    iget-object v10, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->a:Lcom/tencent/rtmp/TXPlayInfoParams;

    invoke-virtual {v10}, Lcom/tencent/rtmp/TXPlayInfoParams;->getAppId()I

    move-result v10

    iget-object v12, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->a:Lcom/tencent/rtmp/TXPlayInfoParams;

    invoke-virtual {v12}, Lcom/tencent/rtmp/TXPlayInfoParams;->getFileId()Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, "PlayInfoProtocolV4Storage"

    const-string v15, "_"

    if-eqz v13, :cond_2

    const-string v3, "get fileId is empty"

    .line 13
    invoke-static {v14, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v10, v12}, Lcom/tencent/liteav/txcvodplayer/c/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 15
    iget-object v8, v3, Lcom/tencent/liteav/txcvodplayer/c/a;->b:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v8, v13}, Lcom/tencent/liteav/base/storage/PersistStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 17
    iget-object v3, v3, Lcom/tencent/liteav/txcvodplayer/c/a;->a:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v3, v13}, Lcom/tencent/liteav/base/storage/PersistStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 18
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 19
    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 20
    array-length v8, v3

    if-lt v8, v6, :cond_4

    const-string v8, "default"

    .line 21
    invoke-static {v10, v8, v12, v4}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 22
    aget-object v10, v3, v4

    invoke-static {v8, v10}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 23
    aget-object v3, v3, v5

    invoke-static {v8, v3}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "get key: "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " iv: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x0

    .line 26
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 27
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 28
    array-length v8, v3

    if-ne v8, v6, :cond_6

    .line 29
    aget-object v4, v3, v4

    iput-object v4, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    .line 30
    aget-object v3, v3, v5

    iput-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    goto :goto_2

    .line 31
    :cond_5
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    .line 33
    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "V4 protocol send request fileId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->a:Lcom/tencent/rtmp/TXPlayInfoParams;

    invoke-virtual {v4}, Lcom/tencent/rtmp/TXPlayInfoParams;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | overlayKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | overlayIv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    iget-object v1, v1, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "1"

    goto :goto_3

    :cond_7
    const-string v4, ""

    .line 37
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "cipheredOverlayKey="

    .line 38
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cipheredOverlayIv="

    .line 39
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "keyId="

    .line 40
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/4 v1, 0x0

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "context="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v5, :cond_a

    .line 44
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 45
    :cond_a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_b
    move-object v1, v8

    .line 46
    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    :cond_c
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "request url: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/tencent/liteav/txcvodplayer/b/a$a;->a:Lcom/tencent/liteav/txcvodplayer/b/a;

    .line 50
    new-instance v3, Lcom/tencent/liteav/txcvodplayer/b/c$1$1;

    invoke-direct {v3, v0}, Lcom/tencent/liteav/txcvodplayer/b/c$1$1;-><init>(Lcom/tencent/liteav/txcvodplayer/b/c$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/b/a;->a(Ljava/lang/String;Lcom/tencent/liteav/txcvodplayer/b/a$b;)V

    return-void
.end method
