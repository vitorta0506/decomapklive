.class Lpd/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd/a;->b(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/BaseRespData;

.field final synthetic b:Lpd/a;


# direct methods
.method constructor <init>(Lpd/a;Lcom/guochao/faceshow/aaspring/beans/BaseRespData;)V
    .locals 0

    iput-object p1, p0, Lpd/a$a;->b:Lpd/a;

    iput-object p2, p0, Lpd/a$a;->a:Lcom/guochao/faceshow/aaspring/beans/BaseRespData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpd/a$a;->a:Lcom/guochao/faceshow/aaspring/beans/BaseRespData;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->msg:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

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
