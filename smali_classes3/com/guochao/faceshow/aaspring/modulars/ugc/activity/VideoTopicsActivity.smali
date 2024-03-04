.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$g;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field avatarBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/LinearLayout;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private f:Lcom/guochao/faceshow/bean/FirstSixBean;

.field private g:Leb/b;

.field mExpandableImageTextView:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewMore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCreator:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->f:Lcom/guochao/faceshow/bean/FirstSixBean;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;Lcom/guochao/faceshow/bean/FirstSixBean;)Lcom/guochao/faceshow/bean/FirstSixBean;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->f:Lcom/guochao/faceshow/bean/FirstSixBean;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->c:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Leb/b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->g:Leb/b;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method private l0()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b:Ljava/lang/String;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->intoVideoTopic(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00cd

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type_id"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->a:Ljava/lang/String;

    const-string v1, "topic_id"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b:Ljava/lang/String;

    const-string v1, "titleName"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->d:Ljava/lang/String;

    const-string v1, "tyPeName"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->e:Ljava/lang/String;

    .line 6
    new-instance v0, Leb/b;

    invoke-direct {v0, p0}, Leb/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->g:Leb/b;

    const v0, 0x7f0a073b

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->c:Landroid/widget/LinearLayout;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->avatarBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTextViewCreator:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$g;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_tipic_global:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_tipic_country:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_tipic_latest:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$d;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mExpandableImageTextView:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setOnShowExpand(Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;)V

    return-void
.end method

.method public join(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_topic_join:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "from"

    const/4 v1, 0x4

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->d:Ljava/lang/String;

    const-string v1, "titleName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->a:Ljava/lang/String;

    const-string v1, "typeId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b:Ljava/lang/String;

    const-string v1, "topic_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->e:Ljava/lang/String;

    const-string v1, "tyPeName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->l0()V

    const p1, 0x7f0f0627

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    :cond_0
    return-void
.end method

.method public showMore(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mImageViewMore:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mExpandableImageTextView:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    const-string v1, "sdf \u53d1\u58eb\u5927\u592b\u6492\u65e6\u6cd5\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u65af\u8482\u82ac\u963f\u65af\u8482\u82ac\u6c14\u6e29\u67d3\u8272\u8d39\u65af\u8482\u82ac\u65af\u8482\u82ac\u5200\u950b\u5c71"

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setRealText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->f:Lcom/guochao/faceshow/bean/FirstSixBean;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->introduction:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mImageViewMore:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mExpandableImageTextView:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->f:Lcom/guochao/faceshow/bean/FirstSixBean;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/FirstSixBean;->introduction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setRealText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
