.class public Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;
.super Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;
    }
.end annotation


# instance fields
.field mLiving:Z

.field private mPopAnchorView:Landroid/view/View;

.field private mSharePopController:Leb/b;

.field protected onCallBack:Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;

.field private shareImgUrl:Ljava/lang/String;

.field private shareText:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mPopAnchorView:Landroid/view/View;

    .line 4
    new-instance p2, Leb/b;

    invoke-direct {p2, p1}, Leb/b;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mSharePopController:Leb/b;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 6
    iput-boolean p3, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mLiving:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getHalloween(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-class v0, Lcom/guochao/faceshow/activity/VideoPlayActivity;

    const-string v1, "8"

    iget-object v2, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/guochao/faceshow/bean/HalloweenBean;

    invoke-virtual {v4, p2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/HalloweenBean;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 5
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    move-object v4, v3

    :goto_0
    const-string v5, "2"

    .line 6
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_2

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getNickName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(ID:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->shareText:Ljava/lang/String;

    .line 8
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getVideoImg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->shareImgUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getShortUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->shareUrl:Ljava/lang/String;

    .line 10
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;-><init>()V

    .line 11
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoUrl(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUserId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getWidth()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setWidth(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getHeight()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setHeight(Ljava/lang/String;)V

    :cond_2
    move-object v9, v3

    .line 16
    iget-object v4, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mSharePopController:Leb/b;

    iget-object v5, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mPopAnchorView:Landroid/view/View;

    iget-object v6, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->shareText:Ljava/lang/String;

    iget-object v7, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->shareImgUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->shareUrl:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Leb/b;->H(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    goto/16 :goto_1

    :cond_3
    const-string v5, "1"

    .line 17
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "video_id"

    const-string v7, "Type"

    const-string/jumbo v8, "user_id"

    const-string/jumbo v9, "videoUrl"

    const-string v10, "imgUrl"

    const-string/jumbo v11, "width"

    const-string v12, "height"

    if-eqz v5, :cond_5

    .line 18
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getHeight()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v12, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getWidth()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v11, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getVideoImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "99"

    .line 24
    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getVideoId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    :cond_4
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_5
    const-string v5, "3"

    .line 27
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 28
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v4, :cond_6

    .line 29
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getHeight()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v12, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getWidth()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v11, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getVideoImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getVideoId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const-string p2, "109"

    .line 35
    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "4"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/guochao/faceshow/bean/HalloweenSayBean;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/HalloweenSayBean;

    if-nez p2, :cond_8

    return-void

    :cond_8
    const-string/jumbo v0, "topic_id"

    .line 40
    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/HalloweenSayBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "titleName"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/HalloweenSayBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    const-string v0, "5"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 45
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p2, "userId"

    .line 46
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/HalloweenBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "from"

    .line 47
    iget-boolean v0, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mLiving:Z

    if-eqz v0, :cond_a

    sget v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->FROM_LIVE_ROOM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_a
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 48
    instance-of p2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p2, :cond_b

    const-string/jumbo p2, "type"

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/16 p2, 0x271a

    invoke-virtual {v2, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 51
    :cond_b
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_c
    const-string v0, "6"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_d
    const-string v0, "7"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    :try_start_4
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/guochao/faceshow/activity/MyGiftListActivity;

    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 62
    :cond_e
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    :try_start_5
    const-string p1, "SHARE_ACTIVITY_DATA"

    .line 63
    invoke-static {v2, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SHARE_ACTIVITY_BEAN"

    .line 64
    invoke-static {v2, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    :catch_5
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_1
    return-void
.end method

.method public getReCaptChaToken(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->onCallBack:Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;->getReCaptChaToken(Ljava/lang/Object;)V

    :cond_0
    const-string p1, "1"

    return-object p1
.end method

.method public inviteFriendMakeMoney(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->onCallBack:Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1, p1}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;->onInviteClick(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    .line 6
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->inviteFriendMakeMoney(Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public inviteFunction(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->onCallBack:Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;->onInviteClick()V

    goto :goto_0

    :cond_1
    const-string v1, "2"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/InvalitedActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isLiving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mLiving:Z

    return v0
.end method

.method public setLiving(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mLiving:Z

    return-void
.end method

.method public setOnCallBack(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->onCallBack:Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;

    return-void
.end method

.method public setPopAnchorView(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mPopAnchorView:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Leb/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Leb/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->mSharePopController:Leb/b;

    :cond_0
    return-void
.end method
