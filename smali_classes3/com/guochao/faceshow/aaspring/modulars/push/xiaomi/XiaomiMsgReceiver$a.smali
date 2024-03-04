.class Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;->onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$a;->c:Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$a;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$a;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$a;->b:Landroid/content/Context;

    const-string v2, "11"

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->onReceiveOnlineMessage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received a mi push message that is not a json ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$a;->a:Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XiaomiMsgReceiver"

    invoke-static {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
