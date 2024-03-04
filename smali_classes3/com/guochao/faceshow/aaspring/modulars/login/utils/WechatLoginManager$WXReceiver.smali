.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WXReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.guochao.faceshow.wechat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "cancel"

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d()V

    return-void

    :cond_0
    const-string p1, "code"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$WXReceiver;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;->e:Landroid/os/Handler;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "wxd2a73493abdc882d"

    aput-object v2, v0, v1

    const-string v1, "41e26c6f170242ab6f1b5672f52df79a"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f;->b(Landroid/os/Handler;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
