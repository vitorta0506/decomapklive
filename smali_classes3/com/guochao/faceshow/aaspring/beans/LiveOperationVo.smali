.class public Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private disableType:I

.field private hour:I

.field private liveFlag:I

.field private mRestartLiveTimeStamp:J

.field private reasonId:I

.field private reasonMsg:Ljava/lang/String;

.field private reasonMsgLang:Ljava/lang/String;

.field private speechTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEndTime(I)J
    .locals 4

    packed-switch p0, :pswitch_data_0

    const-wide v0, 0x757b12c00L

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v0

    :goto_0
    add-long/2addr v2, v0

    return-wide v2

    :pswitch_0
    const-wide v0, 0x9a7ec800L

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    const-wide/32 v0, 0xa4cb800

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    const-wide/32 v0, 0x5265c00

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v0

    goto :goto_0

    :pswitch_3
    const-wide/32 v0, 0x2932e00

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v0

    goto :goto_0

    :pswitch_4
    const-wide/32 v0, 0x36ee80

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v0

    goto :goto_0

    :pswitch_5
    const-wide/32 v0, 0x1b7740

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v0

    goto/16 :goto_0

    :pswitch_6
    const-wide/32 v0, 0xdbba0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLiveBannedEndTime(I)J
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getEndTime(I)J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "LiveBannedEndTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-wide v0
.end method

.method public static getLocalLiveBannedEndTime()J
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LiveBannedEndTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getDisableType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->disableType:I

    return v0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->hour:I

    return v0
.end method

.method public getLiveFlag()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->liveFlag:I

    return v0
.end method

.method public getReasonId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->reasonId:I

    return v0
.end method

.method public getReasonMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->reasonMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonMsgLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->reasonMsgLang:Ljava/lang/String;

    return-object v0
.end method

.method public getRestartLiveTimeStamp()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->mRestartLiveTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getLocalLiveBannedEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->mRestartLiveTimeStamp:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->mRestartLiveTimeStamp:J

    return-wide v0
.end method

.method public getSpeechTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->speechTimeStamp:J

    return-wide v0
.end method

.method public setDisableType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->disableType:I

    return-void
.end method

.method public setHour(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->hour:I

    return-void
.end method

.method public setLiveFlag(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->liveFlag:I

    return-void
.end method

.method public setReasonId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->reasonId:I

    return-void
.end method

.method public setReasonMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->reasonMsg:Ljava/lang/String;

    return-void
.end method

.method public setReasonMsgLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->reasonMsgLang:Ljava/lang/String;

    return-void
.end method

.method public setRestartLiveTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->mRestartLiveTimeStamp:J

    return-void
.end method

.method public setSpeechTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->speechTimeStamp:J

    return-void
.end method
