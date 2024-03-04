.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;


# instance fields
.field mContent:Ljava/lang/CharSequence;

.field private oneDay:Z

.field private sayHi:Z


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->sayHi:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->oneDay:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->parseContent(Lcom/tencent/imsdk/v2/V2TIMMessage;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->mContent:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->oneDay:Z

    .line 7
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->sayHi:Z

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->parseSayHi(Lcom/tencent/imsdk/v2/V2TIMMessage;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->mContent:Ljava/lang/CharSequence;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->parseContent(Lcom/tencent/imsdk/v2/V2TIMMessage;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->mContent:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;ZZ)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->sayHi:Z

    .line 12
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->oneDay:Z

    if-eqz p3, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->parseOneDay(Lcom/tencent/imsdk/v2/V2TIMMessage;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->mContent:Ljava/lang/CharSequence;

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->parseContent(Lcom/tencent/imsdk/v2/V2TIMMessage;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->mContent:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createTextMessage(Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->mContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getPhoneLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getPhoneLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    .line 5
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getFaceCastAppLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getFaceCastAppLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    return v2

    .line 8
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getPhoneLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x2

    if-nez v0, :cond_8

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getPhoneLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    return v2

    .line 11
    :cond_8
    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getFaceCastAppLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getFaceCastAppLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    return v1

    :cond_a
    return v2
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getRevokeSummary()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isOneDay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->oneDay:Z

    return v0
.end method

.method public isSayHi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->sayHi:Z

    return v0
.end method

.method public parseContent(Lcom/tencent/imsdk/v2/V2TIMMessage;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseOneDay(Lcom/tencent/imsdk/v2/V2TIMMessage;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "content"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public parseSayHi(Lcom/tencent/imsdk/v2/V2TIMMessage;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "msgText"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const-string p1, ""

    return-object p1
.end method
