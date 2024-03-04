.class public Lcom/guochao/faceshow/web/WebViewActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/webview"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/web/WebViewActivity$e;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewActivity"


# instance fields
.field mFrom:I

.field protected mSharePopController:Leb/b;

.field mWebView:Landroid/webkit/WebView;

.field private pageId:Ljava/lang/String;

.field private shareImg:Ljava/lang/String;

.field private shareText:Ljava/lang/String;

.field private shareTitle:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field titleBarView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/web/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/web/WebViewActivity;->showOpenMoreMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/web/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/web/WebViewActivity;->startShare()V

    return-void
.end method

.method public static createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/web/WebViewActivity$e;

    invoke-direct {v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;-><init>()V

    return-object v0
.end method

.method private initShare(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shareIcon"

    const v2, 0x7f0f02fb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareTitle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareTitle:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareText"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareText:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareImg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareImg:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareUrl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareUrl:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pageId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->pageId:Ljava/lang/String;

    .line 7
    const-class v1, Lcom/guochao/faceshow/bean/ShareActivityBean;

    const-string v2, "SHARE_ACTIVITY_BEAN"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getShareActivityBean(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/ShareActivityBean;

    if-eqz v1, :cond_4

    .line 8
    iget-object v2, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->webPageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareImg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->shareImgUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareImg:Ljava/lang/String;

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->webPageUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareUrl:Ljava/lang/String;

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->pageId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->id:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->pageId:Ljava/lang/String;

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/utils/LanguageGetUtils;->isLanguageChinese()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->shareTextCn:Ljava/lang/String;

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareText:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, v1, Lcom/guochao/faceshow/bean/ShareActivityBean;->shareTextEn:Ljava/lang/String;

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareText:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareUrl:Ljava/lang/String;

    .line 21
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 22
    new-instance p1, Leb/b;

    invoke-direct {p1, p0}, Leb/b;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mSharePopController:Leb/b;

    .line 23
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz p1, :cond_6

    .line 25
    new-instance v0, Lcom/guochao/faceshow/web/WebViewActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/web/WebViewActivity$c;-><init>(Lcom/guochao/faceshow/web/WebViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    :cond_6
    return-void
.end method

.method private showOpenMoreMenu()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    const v2, 0x7f1201e5

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    const v2, 0x7f1206ad

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/web/WebViewActivity$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/web/WebViewActivity$d;-><init>(Lcom/guochao/faceshow/web/WebViewActivity;)V

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;->S1(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;)V

    return-void
.end method

.method private startShare()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->pageId:Ljava/lang/String;

    const-string v1, "176"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->pageId:Ljava/lang/String;

    const-string v1, "129"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->pageId:Ljava/lang/String;

    const-string v1, "136"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mSharePopController:Leb/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareText:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    iget-object v5, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareImg:Ljava/lang/String;

    iget-object v6, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/guochao/faceshow/web/WebViewActivity;->pageId:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareUrl:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?activityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->pageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mSharePopController:Leb/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, v7

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareText:Ljava/lang/String;

    move-object v5, v0

    :goto_2
    iget-object v6, p0, Lcom/guochao/faceshow/web/WebViewActivity;->shareImg:Ljava/lang/String;

    iget-object v8, p0, Lcom/guochao/faceshow/web/WebViewActivity;->pageId:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "backgroundRes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f(I)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0291

    return v0
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mFrom:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-lez v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/utils/WebViewUrlTools;->getLocalWebUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/utils/WebViewUrlTools;->getWebTitle(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    :cond_0
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0440

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-static {v0, v4, v1, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->getInstance(ILandroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "withShare"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/web/WebViewActivity;->initShare(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hideTitle"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->titleBarView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hasMore"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_4

    const v0, 0x7f0f0230

    .line 18
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    new-instance v1, Lcom/guochao/faceshow/web/WebViewActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/web/WebViewActivity$a;-><init>(Lcom/guochao/faceshow/web/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/web/WebViewActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/web/WebViewActivity$b;-><init>(Lcom/guochao/faceshow/web/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "backgroundRes"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_6

    const v1, 0x7f06038c

    .line 26
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->l(I)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->w(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 29
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_6
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onBindWebView(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showScrollbar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lv9/c;->c()V

    return-void
.end method

.method public onLoadErr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/f;->a(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mFrom:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
