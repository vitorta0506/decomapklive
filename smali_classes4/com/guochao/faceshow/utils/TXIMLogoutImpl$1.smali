.class Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->doLogoutAction(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/TXIMLogoutImpl;

.field final synthetic val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/TXIMLogoutImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;->this$0:Lcom/guochao/faceshow/utils/TXIMLogoutImpl;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;->this$0:Lcom/guochao/faceshow/utils/TXIMLogoutImpl;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->access$000(Lcom/guochao/faceshow/utils/TXIMLogoutImpl;)I

    move-result p1

    sget p2, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->LIMIT_COUNT:I

    if-ge p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;->this$0:Lcom/guochao/faceshow/utils/TXIMLogoutImpl;

    iget-object p2, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->access$100(Lcom/guochao/faceshow/utils/TXIMLogoutImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    :cond_1
    const-string p1, "TXIMLogoutImpl"

    const-string p2, "logoutTIM \u767b\u51fa \u8bf7\u6c42\u5931\u8d25..."

    .line 5
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl$1;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onSuccess()V

    :cond_0
    const-string v0, "TXIMLogoutImpl"

    const-string v1, "logoutTIM \u767b\u51fa \u8bf7\u6c42\u6210\u529f..."

    .line 3
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
