.class public Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d30

    const-string v2, "field \'tvWithdrawalMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalMoney:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d32

    const-string v2, "field \'tvWithdrawalState\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c6a

    const-string v2, "field \'tvDeductFb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvDeductFb:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0939

    const-string v2, "field \'rcvProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->rcvProgress:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c3d

    const-string v2, "field \'tvAccountMode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountMode:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c3b

    const-string v2, "field \'tvAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccount:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cc6

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvName:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d18

    const-string v2, "field \'tvUSDT\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvUSDT:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06df

    const-string v2, "field \'llModeZfb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeZfb:Landroid/widget/LinearLayout;

    .line 12
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06de

    const-string v2, "field \'llModeUsdt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeUsdt:Landroid/widget/LinearLayout;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c4d

    const-string v2, "field \'tvBankCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvBankCode:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c3c

    const-string v2, "field \'tvAccountHolder\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountHolder:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c4e

    const-string v2, "field \'tvBankName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvBankName:Landroid/widget/TextView;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c4c

    const-string v2, "field \'tvBankAddress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvBankAddress:Landroid/widget/TextView;

    .line 17
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06dd

    const-string v2, "field \'llModeBank\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeBank:Landroid/widget/LinearLayout;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c57

    const-string v2, "field \'tvCause\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvCause:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06c3

    const-string v2, "field \'llCause\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llCause:Landroid/widget/LinearLayout;

    .line 20
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c3e

    const-string v2, "field \'tvAccountTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountTip:Landroid/widget/TextView;

    .line 21
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06e4

    const-string v2, "field \'llName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llName:Landroid/widget/LinearLayout;

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d34

    const-string v2, "field \'tvWithdrawalTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalTip:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalMoney:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvDeductFb:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->rcvProgress:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountMode:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccount:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvName:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvUSDT:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeZfb:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeUsdt:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvBankCode:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountHolder:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvBankName:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvBankAddress:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeBank:Landroid/widget/LinearLayout;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvCause:Landroid/widget/TextView;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llCause:Landroid/widget/LinearLayout;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountTip:Landroid/widget/TextView;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llName:Landroid/widget/LinearLayout;

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalTip:Landroid/widget/TextView;

    .line 23
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
