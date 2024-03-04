.class public Lcom/tencent/live2/impl/V2TXLiveUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/live2/impl/V2TXLiveUtils$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "V2TXLiveUtils"

.field public static final TRTC_ADDRESS1:Ljava/lang/String; = "room://cloud.tencent.com/rtc"

.field public static final TRTC_ADDRESS2:Ljava/lang/String; = "room://rtc.tencent.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitrateByResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)Lcom/tencent/live2/impl/V2TXLiveUtils$a;
    .locals 7

    .line 1
    sget-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x384

    const/16 v1, 0x258

    const/16 v2, 0x190

    const/16 v3, 0xfa

    const/16 v4, 0x15e

    const/16 v5, 0x5dc

    const/16 v6, 0x320

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x5dc

    const/16 v1, 0x320

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x9c4

    const/16 v0, 0xbb8

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x3e8

    const/16 v0, 0x708

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x1f4

    goto :goto_2

    :pswitch_4
    const/16 v0, 0x226

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x190

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x258

    const/16 v1, 0x190

    goto :goto_2

    :pswitch_7
    const/16 v0, 0x177

    :goto_0
    const/16 v1, 0xfa

    goto :goto_2

    :pswitch_8
    const/16 v0, 0x20d

    :goto_1
    const/16 v1, 0x15e

    goto :goto_2

    :pswitch_9
    const/16 v1, 0xc8

    const/16 v0, 0x12c

    goto :goto_2

    :pswitch_a
    const/16 v1, 0x64

    const/16 v0, 0x96

    .line 2
    :goto_2
    :pswitch_b
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$a;

    invoke-direct {p0, v1, v0}, Lcom/tencent/live2/impl/V2TXLiveUtils$a;-><init>(II)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseLiveMode(Ljava/lang/String;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;
    .locals 2

    const-string/jumbo v0, "trtc://"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "V2TXLiveUtils"

    if-nez v0, :cond_1

    const-string v0, "room://cloud.tencent.com/rtc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "room://rtc.tencent.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "parseLiveMode: rtmp."

    .line 2
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;->TXLiveMode_RTMP:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "parseLiveMode: rtc."

    .line 4
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;->TXLiveMode_RTC:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;

    return-object p0
.end method

.method public static removeURLSensitiveInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "roomsig"

    const-string v2, "privatemapkey"

    const-string/jumbo v3, "usersig"

    .line 2
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 3
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v5, "&"

    .line 5
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 6
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "V2TXLiveUtils"

    const-string v1, "remove url sensitive info failed."

    .line 8
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object p0
.end method
