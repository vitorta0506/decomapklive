.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;
    }
.end annotation


# static fields
.field private static sTranslated:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private translatedContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->sTranslated:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->sTranslated:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->translatedContent:Ljava/lang/String;

    return-object p1
.end method

.method public static from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "call_type"

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "content"

    .line 4
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    :goto_0
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->translatedContent:Ljava/lang/String;

    return-object v0
.end method

.method public isOnlineMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parsePrivateChatSendGiftMsg([B)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "content"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->content:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public translate(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->translatedContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->translatedContent:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;->a(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->sTranslated:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->sTranslated:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-interface {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;->a(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->content:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getOtherLanguage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->b()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$a;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage$b;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->g(Ljava/util/List;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    return-void
.end method
