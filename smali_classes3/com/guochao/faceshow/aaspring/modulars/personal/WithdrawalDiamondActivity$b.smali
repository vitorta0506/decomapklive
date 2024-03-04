.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->g0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/WithdrawalBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;Lcom/guochao/faceshow/mine/model/WithdrawalBean;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "userFB"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getF()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "payPassword"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f1304b9

    if-eqz v0, :cond_0

    .line 5
    new-instance p1, Lcom/guochao/faceshow/views/e;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1206d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Lcom/guochao/faceshow/views/n;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120800

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b$b;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/views/n;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/n$b;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/n;->show()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_2
    :goto_0
    return-void
.end method
