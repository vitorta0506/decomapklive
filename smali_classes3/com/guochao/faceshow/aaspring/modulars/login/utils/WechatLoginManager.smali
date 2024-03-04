.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;
.super Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$a;,
        Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;
    }
.end annotation


# instance fields
.field e:Landroid/os/Handler;

.field f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;->e:Landroid/os/Handler;

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.guochao.faceshow.wechat"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->g()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method
