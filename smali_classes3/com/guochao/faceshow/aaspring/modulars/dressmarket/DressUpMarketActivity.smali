.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->a:Ljava/util/List;

    return-object p0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0076

    return v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f1202e9

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a042c

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->setBottomEnable(Z)V

    const v0, 0x7f0f0096

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/EntranceCarMarketFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/EntranceCarMarketFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/PendantAvatarMarketFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/PendantAvatarMarketFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/ChatShadingMarketFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/ChatShadingMarketFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$b;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v0, :cond_1

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;)V

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0740

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRESS_UP_INDEX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v3, "dress"

    invoke-static {v3, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    move-object v0, v2

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "index"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    move-object v2, v0

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
