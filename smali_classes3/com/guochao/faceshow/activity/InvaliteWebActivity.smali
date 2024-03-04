.class public Lcom/guochao/faceshow/activity/InvaliteWebActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Leb/b;

.field h:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Leb/b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->g:Leb/b;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private m0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->q()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;-><init>(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)V

    invoke-virtual {v0, p0, v1}, Lc8/a;->w(Landroid/app/Activity;Lc8/a$h;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/guochao/faceshow/activity/InvaliteWebActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity$c;-><init>(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v1, 0x7f12098b

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f08054d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0066

    return v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f0a0098

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0a009c

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->f:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/guochao/faceshow/utils/WebViewUrlTools;->getLocalWebUrl(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0440

    const-string v3, ""

    invoke-static {v2, v0, v1, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->getInstance(ILandroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->h:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    .line 4
    new-instance v0, Leb/b;

    invoke-direct {v0, p0}, Leb/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->g:Leb/b;

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onBindWebView(Landroid/webkit/WebView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->h:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->getJSAction()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;-><init>(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->setOnCallBack(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    .line 7
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12021d

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "userId"

    .line 3
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lqa/a;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://zaime.gchao.cn/index.html?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->a:Ljava/lang/String;

    const-string p1, "https://zaimefile.gchao.cn/storage1/M00/00/03/wKgACWB_4yqAObpDAABN06Tq9hA939.png"

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->d:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.buzzcast.info/index.html?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->a:Ljava/lang/String;

    const-string p1, "http://mp4.facecast.xyz/storage1/M00/00/89/aPODC1s5_PmARWf8AAAYs5OGKPY374.png"

    .line 8
    iput-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->d:Ljava/lang/String;

    .line 9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nickname"

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120448

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120447

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->b:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->m0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->z()V

    .line 3
    invoke-static {}, Lv9/c;->c()V

    return-void
.end method

.method public onLoadErr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/f;->a(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setTitle(I)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;I)V
    .locals 0

    return-void
.end method
