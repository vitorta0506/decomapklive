.class public Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c0c

    const-string v2, "field \'tvDiamondCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->tvDiamondCount:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0bca

    const-string v2, "field \'topLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->topLayout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Lcom/guochao/faceshow/views/MeasureListView;

    const v1, 0x7f0a0732

    const-string v2, "field \'lvWithdrawalList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/MeasureListView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->lvWithdrawalList:Lcom/guochao/faceshow/views/MeasureListView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0bfc

    const-string v2, "field \'tvAgreement\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->tvAgreement:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->tvDiamondCount:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->topLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->lvWithdrawalList:Lcom/guochao/faceshow/views/MeasureListView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->tvAgreement:Landroid/widget/TextView;

    .line 7
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
