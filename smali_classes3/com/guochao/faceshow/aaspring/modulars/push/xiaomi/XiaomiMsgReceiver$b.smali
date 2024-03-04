.class Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$b;->a:Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver$b;->a:Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;->a(Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "11"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
