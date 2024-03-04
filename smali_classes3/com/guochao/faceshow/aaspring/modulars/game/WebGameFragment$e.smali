.class Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;
.super Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onRecvNewMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game_admin"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "message"

    .line 8
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "groupId"

    .line 10
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "timeStamp"

    .line 11
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "sender"

    .line 12
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    :goto_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->getWebView()Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "onReceiveGroupMessage(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->s(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
