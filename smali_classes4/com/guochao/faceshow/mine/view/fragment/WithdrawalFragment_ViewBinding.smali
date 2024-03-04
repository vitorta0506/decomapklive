.class public Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;->b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0171

    const-string v2, "field \'btnDiamond\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->btnDiamond:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0173

    const-string v2, "field \'btnMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->btnMoney:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ca4

    const-string v2, "field \'tvIntro\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvIntro:Landroid/widget/TextView;

    .line 6
    const-class v0, Lcom/guochao/faceshow/views/ObservableScrollView;

    const v1, 0x7f0a082f

    const-string v2, "field \'scrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/ObservableScrollView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    .line 7
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06d0

    const-string v2, "field \'llFreezeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreezeLayout:Landroid/widget/LinearLayout;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c80

    const-string v2, "field \'tvFcontunt1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFcontunt1:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c4b

    const-string v2, "field \'tvAvailableBalance\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvAvailableBalance:Landroid/widget/TextView;

    const v0, 0x7f0a05a9

    const-string v1, "field \'ivFreezeBalance\' and method \'onViewClicked\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivFreezeBalance\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->ivFreezeBalance:Landroid/widget/ImageView;

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;->c:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c8b

    const-string v2, "field \'tvFreezeBalance\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeBalance:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06d1

    const-string v2, "field \'llFreezeTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreezeTip:Landroid/widget/LinearLayout;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d31

    const-string v2, "field \'tvWithdrawalOf\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvWithdrawalOf:Landroid/widget/TextView;

    .line 17
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06cf

    const-string v2, "field \'llFreeze\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreeze:Landroid/widget/LinearLayout;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c8d

    const-string v2, "field \'tvFreezeJia\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeJia:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c8e

    const-string v2, "field \'tvFreezeTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeTip:Landroid/widget/TextView;

    .line 20
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06c1

    const-string v2, "field \'llBottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llBottom:Landroid/widget/LinearLayout;

    .line 21
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05ee

    const-string v2, "field \'titleBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->titleBar:Landroid/widget/ImageView;

    const v0, 0x7f0a05a5

    const-string v1, "method \'onClick\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;->d:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;->b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;->b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->btnDiamond:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->btnMoney:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvIntro:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreezeLayout:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFcontunt1:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvAvailableBalance:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->ivFreezeBalance:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeBalance:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreezeTip:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvWithdrawalOf:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llFreeze:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeJia:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFreezeTip:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->llBottom:Landroid/widget/LinearLayout;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->titleBar:Landroid/widget/ImageView;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;->c:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
