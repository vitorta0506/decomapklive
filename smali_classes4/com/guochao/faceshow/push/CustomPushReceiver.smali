.class public Lcom/guochao/faceshow/push/CustomPushReceiver;
.super Lcn/jpush/android/service/JPushMessageReceiver;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/JPushMessageReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput v0, Lcom/guochao/faceshow/push/CustomPushReceiver;->b:I

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/push/CustomPushReceiver;->a:Z

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x814d

    invoke-static {v0, v1}, Lcn/jpush/android/api/JPushInterface;->deleteAlias(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAliasOperatorResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/JPushMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomPushReceiver"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcn/jpush/android/api/JPushMessage;->getErrorCode()I

    move-result p2

    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    if-eq p2, p1, :cond_1

    const/16 p1, 0x178b

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string/jumbo p2, "tokens/user/jpush/delete_alias"

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/guochao/faceshow/push/CustomPushReceiver$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/push/CustomPushReceiver$a;-><init>(Lcom/guochao/faceshow/push/CustomPushReceiver;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 6
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(\u4ec5\u6d4b\u8bd5)\u6781\u5149\u521d\u59cb\u5316\u6210\u529f\u4e86,\u91cd\u8bd5\u6b21\u6570\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/guochao/faceshow/push/CustomPushReceiver;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    const/4 p1, 0x0

    .line 7
    sput p1, Lcom/guochao/faceshow/push/CustomPushReceiver;->b:I

    .line 8
    sput-boolean v1, Lcom/guochao/faceshow/push/CustomPushReceiver;->a:Z

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->q:Z

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->M(Z)V

    .line 11
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/utils/PushUtils;->removeAliasRunnable()V

    :goto_0
    return-void
.end method

.method public onMessage(Landroid/content/Context;Lcn/jpush/android/api/CustomMessage;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onMessage(Landroid/content/Context;Lcn/jpush/android/api/CustomMessage;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/CustomMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG_KEY_FORM_PUSH"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p2, Lcn/jpush/android/api/CustomMessage;->extra:Ljava/lang/String;

    new-instance v2, Lcom/guochao/faceshow/push/CustomPushReceiver$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/push/CustomPushReceiver$b;-><init>(Lcom/guochao/faceshow/push/CustomPushReceiver;)V

    .line 4
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6
    iget-object p2, p2, Lcn/jpush/android/api/CustomMessage;->extra:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/utils/PushUtils;->receiveCustomMessage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public onMultiActionClicked(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onMultiActionClicked(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "TAG_KEY_FORM_PUSH"

    const-string v0, "[onMultiActionClicked] \u7528\u6237\u70b9\u51fb\u4e86\u901a\u77e5\u680f\u6309\u94ae"

    .line 2
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "cn.jpush.android.NOTIFIACATION_ACTION_EXTRA"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "ACTION_NOTIFICATION_CLICK_ACTION nActionExtra is null"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "my_extra1"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "[onMultiActionClicked] \u7528\u6237\u70b9\u51fb\u901a\u77e5\u680f\u6309\u94ae\u4e00"

    .line 6
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "my_extra2"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "[onMultiActionClicked] \u7528\u6237\u70b9\u51fb\u901a\u77e5\u680f\u6309\u94ae\u4e8c"

    .line 8
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "my_extra3"

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "[onMultiActionClicked] \u7528\u6237\u70b9\u51fb\u901a\u77e5\u680f\u6309\u94ae\u4e09"

    .line 10
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p2, "[onMultiActionClicked] \u7528\u6237\u70b9\u51fb\u901a\u77e5\u680f\u6309\u94ae\u672a\u5b9a\u4e49"

    .line 11
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNotifyMessageArrived(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onNotifyMessageArrived(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotifyMessageArrived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/jpush/android/api/NotificationMessage;->notificationExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG_KEY_FORM_PUSH"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object p2, p2, Lcn/jpush/android/api/NotificationMessage;->notificationExtras:Ljava/lang/String;

    new-instance v1, Lcom/guochao/faceshow/push/CustomPushReceiver$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/CustomPushReceiver$c;-><init>(Lcom/guochao/faceshow/push/CustomPushReceiver;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 6
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/PushUtils;->receiveNotification(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public onNotifyMessageOpened(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "TAG_KEY_FORM_PUSH"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/PushUtils;->moveToFront()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "From onNotifyMessageOpened to MainActivity"

    .line 5
    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onNotifyMessageOpened(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V

    .line 7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotifyMessageOpened = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p2, Lcn/jpush/android/api/NotificationMessage;->notificationExtras:Ljava/lang/String;

    new-instance v2, Lcom/guochao/faceshow/push/CustomPushReceiver$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/push/CustomPushReceiver$d;-><init>(Lcom/guochao/faceshow/push/CustomPushReceiver;)V

    .line 9
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 11
    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/PushUtils;->savePushTag(Landroid/content/Context;Ljava/util/Map;)V

    .line 12
    iget-object v0, p2, Lcn/jpush/android/api/NotificationMessage;->msgId:Ljava/lang/String;

    iget p2, p2, Lcn/jpush/android/api/NotificationMessage;->platform:I

    int-to-byte p2, p2

    invoke-static {p1, v0, p2}, Lcn/jpush/android/api/JPushInterface;->reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;B)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string p2, "JPush_notification_click"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    return-void
.end method
