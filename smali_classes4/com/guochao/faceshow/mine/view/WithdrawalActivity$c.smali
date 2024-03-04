.class Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->y0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;->b:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 2

    .line 1
    const-class v0, Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;

    const-string/jumbo v1, "userFB"

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;->b:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;->getF()I

    move-result p1

    invoke-static {p2, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;->b:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;->b:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/WithdrawalResultBean;->getF()I

    move-result p1

    invoke-static {p2, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;->b:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :goto_0
    return-void
.end method
