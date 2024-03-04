.class Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;->onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;Lcom/xiaomi/mipush/sdk/MiPushMessage;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$c;->c:Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$c;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationMessageClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$c;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XiaomiMsgReceiver"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$c;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ext"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$c;->c:Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;

    invoke-static {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;->b(Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;Ljava/util/Map;Ljava/lang/String;)V

    const-string v1, "type_id"

    const-string v2, "10000"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "firm_type"

    const-string v2, "11"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$c;->b:Landroid/content/Context;

    const-class v4, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/MapUtils;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 11
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$c;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
