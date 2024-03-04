.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->l0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object v0

    invoke-virtual {v0}, Lu7/c;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    const-string p2, "\u6ca1\u6709\u53ef\u4ee5\u5220\u9664\u7684\u5185\u5bb9"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lu7/c;->e(Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object p2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p2, v1, v2, v0}, Lu7/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
