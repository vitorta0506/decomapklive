.class public Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v0, 0x7f0a0420

    const-string v1, "field \'flSelectWithdrawalWay\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'flSelectWithdrawalWay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flSelectWithdrawalWay:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0bfd

    const-string v2, "field \'tvAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAmount:Landroid/widget/TextView;

    const v0, 0x7f0a017c

    const-string v1, "field \'btnWithdrawal\' and method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 9
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->btnWithdrawal:Landroid/view/View;

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->e:Landroid/view/View;

    .line 11
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d35

    const-string v2, "field \'tvWithdrawalWay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a035b

    const-string v2, "field \'etAliPayAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayAccount:Landroid/widget/EditText;

    .line 14
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0406

    const-string v2, "field \'flAliPayAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flAliPayAccount:Landroid/widget/FrameLayout;

    .line 15
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a035c

    const-string v2, "field \'etAliPayName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayName:Landroid/widget/EditText;

    .line 16
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0407

    const-string v2, "field \'flAliPayName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flAliPayName:Landroid/widget/FrameLayout;

    .line 17
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06bb

    const-string v2, "field \'llAliPayLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a035d

    const-string v1, "field \'etBankCardAccount\' and method \'onViewClicked\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/EditText;

    const-string v3, "field \'etBankCardAccount\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccount:Landroid/widget/EditText;

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->f:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a040a

    const-string v2, "field \'flBankCard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flBankCard:Landroid/widget/FrameLayout;

    .line 23
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a035e

    const-string v2, "field \'etBankCardAccountHolder\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccountHolder:Landroid/widget/EditText;

    .line 24
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a040b

    const-string v2, "field \'flBankCardAccountHolder\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flBankCardAccountHolder:Landroid/widget/FrameLayout;

    .line 25
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a057b

    const-string v2, "field \'ivArrowRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivArrowRight:Landroid/widget/ImageView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0bff

    const-string v2, "field \'tvBankName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvBankName:Landroid/widget/TextView;

    const v0, 0x7f0a09a6

    const-string v1, "field \'rlBankNameLayout\' and method \'onViewClicked\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 28
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlBankNameLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    .line 29
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->g:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a035f

    const-string v2, "field \'etBankCardAddress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAddress:Landroid/widget/EditText;

    .line 32
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a040c

    const-string v2, "field \'flBankCardAddress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flBankCardAddress:Landroid/widget/FrameLayout;

    .line 33
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06bf

    const-string v2, "field \'llBankCardLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    .line 34
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0367

    const-string v2, "field \'etPayPalAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalAccount:Landroid/widget/EditText;

    .line 35
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0368

    const-string v2, "field \'etPayPalName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalName:Landroid/widget/EditText;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ce6

    const-string v2, "field \'tvRegionName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvRegionName:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ce5

    const-string v2, "field \'tvRegion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvRegion:Landroid/widget/TextView;

    const v0, 0x7f0a041e

    const-string v1, "field \'flRegion\' and method \'onViewClicked\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'flRegion\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flRegion:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->h:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06e7

    const-string v2, "field \'llPayPalLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayPalLayout:Landroid/widget/LinearLayout;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a036a

    const-string v2, "field \'etPayoneerId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06e8

    const-string v2, "field \'llPayoneerLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0c3f

    const-string v1, "field \'tvAddPayoneer\' and method \'onViewClicked\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 46
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvAddPayoneer\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->i:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ccf

    const-string v2, "field \'tvPayoneerTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05f9

    const-string v2, "field \'ivWithdrawalLogo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    const v0, 0x7f0a06e9

    const-string v1, "field \'llPayoneerSelect\' and method \'onViewClicked\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llPayoneerSelect\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerSelect:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->j:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05c8

    const-string v2, "field \'ivPayoneerMore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivPayoneerMore:Landroid/widget/ImageView;

    .line 56
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a041d

    const-string v2, "field \'flPayoneer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flPayoneer:Landroid/widget/FrameLayout;

    .line 57
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05fa

    const-string v2, "field \'ivWithdrawalMore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalMore:Landroid/widget/ImageView;

    .line 58
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06ea

    const-string v2, "field \'llPayoneerv2Layout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    .line 59
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0369

    const-string v2, "field \'etPayoneerAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerAccount:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flSelectWithdrawalWay:Landroid/widget/FrameLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAmount:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->btnWithdrawal:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayAccount:Landroid/widget/EditText;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flAliPayAccount:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayName:Landroid/widget/EditText;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flAliPayName:Landroid/widget/FrameLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccount:Landroid/widget/EditText;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flBankCard:Landroid/widget/FrameLayout;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccountHolder:Landroid/widget/EditText;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flBankCardAccountHolder:Landroid/widget/FrameLayout;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivArrowRight:Landroid/widget/ImageView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvBankName:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAddress:Landroid/widget/EditText;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flBankCardAddress:Landroid/widget/FrameLayout;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalAccount:Landroid/widget/EditText;

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalName:Landroid/widget/EditText;

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvRegionName:Landroid/widget/TextView;

    .line 25
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvRegion:Landroid/widget/TextView;

    .line 26
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flRegion:Landroid/widget/LinearLayout;

    .line 27
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayPalLayout:Landroid/widget/LinearLayout;

    .line 28
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    .line 29
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    .line 30
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    .line 31
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    .line 32
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    .line 33
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerSelect:Landroid/widget/LinearLayout;

    .line 34
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivPayoneerMore:Landroid/widget/ImageView;

    .line 35
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flPayoneer:Landroid/widget/FrameLayout;

    .line 36
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalMore:Landroid/widget/ImageView;

    .line 37
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    .line 38
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerAccount:Landroid/widget/EditText;

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->d:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->e:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->f:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->g:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->h:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->i:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity_ViewBinding;->j:Landroid/view/View;

    .line 53
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
