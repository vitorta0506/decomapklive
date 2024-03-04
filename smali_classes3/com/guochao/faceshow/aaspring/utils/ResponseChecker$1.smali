.class Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;->checkFreeze(ILorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;->access$000(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;->access$000(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "ACCOUNT_LOGOUT"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/BaseAppContext;->accountForceLogout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
