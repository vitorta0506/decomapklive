.class public Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/mine/view/fragment/a;


# instance fields
.field private a:Z

.field private b:Z

.field btnDiamond:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field btnMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field ivFreezeBalance:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llBottom:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llFreeze:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llFreezeLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llFreezeTip:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field titleBar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAvailableBalance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFcontunt1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFreezeBalance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFreezeJia:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFreezeTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWithdrawalOf:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->b:Z

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->c:Z

    return p1
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->b:Z

    return p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->a:Z

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->a:Z

    return p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->d:Z

    return p1
.end method

.method private U1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->MY_WALLET_DATA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$d;-><init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->btnDiamond:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$b;-><init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->btnMoney:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$c;-><init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public E0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->i0()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->d:Z

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->U1()V

    :cond_0
    return-void
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01f9

    return v0
.end method

.method public i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->titleBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->c:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    const-string/jumbo p1, "user_f_to_diamond"

    .line 1
    invoke-static {p1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object p1

    const-string/jumbo v0, "user_f_to_money"

    .line 2
    invoke-static {v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->btnDiamond:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->btnMoney:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->initListener()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFcontunt1:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvIntro:Landroid/widget/TextView;

    const v0, 0x7f1206c5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvIntro:Landroid/widget/TextView;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvIntro:Landroid/widget/TextView;

    const v0, 0x7f1206c6

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->tvFcontunt1:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "userFB"

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;-><init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/ObservableScrollView;->setScrollViewListener(Lcom/guochao/faceshow/views/ObservableScrollView$a;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->e(I)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->d:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->U1()V

    :cond_0
    return-void
.end method

.method public onViewClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/personal/FreezeCauseActivity;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->startActivity(Ljava/lang/Class;)V

    return-void
.end method
