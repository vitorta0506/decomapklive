.class Lcom/guochao/faceshow/mine/view/BankListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BankListActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BankListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BankListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BankListActivity$a;->a:Lcom/guochao/faceshow/mine/view/BankListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BankListActivity$a;->a:Lcom/guochao/faceshow/mine/view/BankListActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BankListActivity;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BankListActivity$a;->a:Lcom/guochao/faceshow/mine/view/BankListActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/BankListActivity;->a:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/Serializable;

    const-string p3, "bankBean"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BankListActivity$a;->a:Lcom/guochao/faceshow/mine/view/BankListActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BankListActivity$a;->a:Lcom/guochao/faceshow/mine/view/BankListActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_0
    return-void
.end method
