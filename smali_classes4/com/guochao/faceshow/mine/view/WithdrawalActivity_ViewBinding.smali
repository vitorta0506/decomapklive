.class public Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c2e

    const-string v2, "field \'tvSelectAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0344

    const-string v2, "field \'etAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0bfd

    const-string v2, "field \'tvAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvAmount:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c33

    const-string v2, "field \'tvSymbol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSymbol:Landroid/widget/TextView;

    const v0, 0x7f0a017c

    const-string v1, "field \'btnWithdrawal\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->btnWithdrawal:Landroid/view/View;

    .line 8
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0347

    const-string v2, "field \'etBankCardNo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    .line 9
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0345

    const-string v2, "field \'etAccountHolder\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    .line 10
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a057b

    const-string v2, "field \'ivArrowRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->ivArrowRight:Landroid/widget/ImageView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0bff

    const-string v2, "field \'tvBankName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvBankName:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09a6

    const-string v2, "field \'rlBankNameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    .line 13
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0346

    const-string v2, "field \'etBankAddress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    .line 14
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0341

    const-string v2, "field \'enterPayName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    const v0, 0x7f0a041e

    const-string v1, "field \'flRegion\' and method \'onViewClicked\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'flRegion\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->flRegion:Landroid/widget/LinearLayout;

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding;->d:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ce5

    const-string v2, "field \'tvRegion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvRegion:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvAmount:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSymbol:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->btnWithdrawal:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->ivArrowRight:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvBankName:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->flRegion:Landroid/widget/LinearLayout;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvRegion:Landroid/widget/TextView;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity_ViewBinding;->d:Landroid/view/View;

    .line 19
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method