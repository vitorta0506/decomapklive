.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/MediaMessage;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceMessage"


# instance fields
.field private mIsPlaying:Z

.field mOnPlayListener:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

.field private mVoiceFileUrl:Ljava/lang/String;

.field mVoiceMessageViewHolderWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/MediaMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method public static from(JLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;
    .locals 4

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    long-to-int p1, p0

    invoke-virtual {v1, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createSoundMessage(Ljava/lang/String;I)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object v0
.end method


# virtual methods
.method public bindHolder(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mVoiceMessageViewHolderWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    return v0

    :cond_0
    const/16 v0, 0xc

    return v0
.end method

.method public getOnPlayListener()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mOnPlayListener:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mOnPlayListener:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mOnPlayListener:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

    return-object v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getRevokeSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTransformedOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f1208aa

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTransformedOtherLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_voice"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->MESSAGE_TIPS_MULTI_LANGUAGE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVoiceFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mVoiceFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mIsPlaying:Z

    return v0
.end method

.method public setOnPlayListener(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mOnPlayListener:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mIsPlaying:Z

    return-void
.end method

.method public setVoiceFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mVoiceFileUrl:Ljava/lang/String;

    return-void
.end method
