.class Lcom/guochao/faceshow/aaspring/manager/im/a$a;
.super Lcom/tencent/imsdk/v2/V2TIMSDKListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/a;->k(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/im/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onConnectFailed(ILjava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->f(Lcom/guochao/faceshow/aaspring/manager/im/a;I)I

    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/im/a;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectSuccess()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onConnectSuccess()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    const v1, 0x1d7bbd

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->f(Lcom/guochao/faceshow/aaspring/manager/im/a;I)I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/manager/im/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/manager/im/a;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnecting()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onConnecting()V

    return-void
.end method

.method public onKickedOffline()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onKickedOffline()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->B()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "ACCOUNT_LOGIN_OTHER_PLACE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/BaseAppContext;->accountForceLogout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
