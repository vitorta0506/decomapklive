.class public Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;

.field c:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

.field d:I

.field lay_content:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
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
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;

    return-object p1
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->i0()V

    return-void
.end method

.method private i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->d:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static k0(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dressType"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d007c

    return v0
.end method

.method public initView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dressType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->d:I

    const v0, 0x7f12010b

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->a:Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/PictureFrameFragment;->V1()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/PictureFrameFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->a:Ljava/util/List;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->W1()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->a:Ljava/util/List;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;->V1()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->a:Ljava/util/List;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f1209dd

    .line 9
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f1209dc

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120a2b

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f12010f

    .line 12
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->a:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroidx/fragment/app/FragmentManager;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->i0()V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->loadMvpBagData(Z)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->getMvpLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f080318

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->getNetLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
