.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;
    }
.end annotation


# static fields
.field public static final h:[Ljava/lang/String;


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

.field b:Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

.field bottomDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;

.field d:Z

.field e:Ljava/lang/Runnable;

.field private f:Z

.field g:Z

.field mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewPublish:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewPublishImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewPublishVideo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSpace:Landroid/widget/Space;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTabLayoutSticky:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTabLayoutStickyArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitleView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->d:Z

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->e:Ljava/lang/Runnable;

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->f:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->g:Z

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->p0(Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->n0()V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->f:Z

    return p1
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->s0()V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->l0()V

    return-void
.end method

.method private k0(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private l0()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object v0

    .line 2
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method private m0()V
    .locals 3

    const-string v0, "tokens/search/findTopicInfoByTopicIdOrName"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "topicName"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "topicId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private n0()V
    .locals 3

    const v0, 0x7f0a0741

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a093e

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a017f

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0823

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->bottomDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->q0(Z)V

    const-string v1, ""

    .line 7
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->g:Z

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 10
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    return-void
.end method

.method private p0(Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;)V
    .locals 3

    if-eqz p1, :cond_1

    const v0, 0x7f0a0269

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getPartakeTimes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v2, 0x7f1201f2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a00e8

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1201f1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;->getFriendTopicId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setTopicId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private q0(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    const v0, 0x7f0a0bc5

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0a042c

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x1020016

    .line 4
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x8

    const-string v3, ""

    const v5, 0x7f06002d

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;I)V

    .line 7
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    const p1, 0x7f0f02fd

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->bottomDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f080307

    .line 10
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 11
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 12
    invoke-virtual {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->bottomDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static r0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private s0()V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [I

    .line 1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublish:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublishVideo:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublishImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v5, v3, v4

    sub-int/2addr v1, v5

    int-to-float v1, v1

    aget v2, v2, v4

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 4
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublishImage:Landroid/widget/ImageView;

    new-array v6, v4, [F

    neg-float v2, v2

    const/4 v7, 0x0

    aput v2, v6, v7

    const-string v2, "translationY"

    invoke-static {v5, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 6
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublishVideo:Landroid/widget/ImageView;

    new-array v8, v4, [F

    neg-float v1, v1

    aput v1, v8, v7

    invoke-static {v6, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 7
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v5, v0, v7

    aput-object v1, v0, v4

    .line 8
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xc8

    .line 9
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->f:Z

    const v0, 0x7f0a020d

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f0a0741

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->s0()V

    return-void
.end method

.method public doPublishPicture(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->q0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->l0()V

    return-void
.end method

.method public doPublishVideo(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f1204c4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f12098b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f12069f

    .line 4
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->h:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public emptyClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b9

    return v0
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublishVideo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "topicId"

    .line 5
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "topicName"

    .line 6
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;-><init>()V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    .line 8
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setTopicId(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setTopicName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "data"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    .line 11
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->m0()V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const v1, 0x7f0f0089

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    const v0, 0x7f0a0259

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit16 v1, v1, 0x154

    div-int/lit16 v1, v1, 0x539

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mSpace:Landroid/widget/Space;

    invoke-virtual {v0}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getActionBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f0a0bd7

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a0269

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getPartakeTimes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v2, 0x7f1201f2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;Landroidx/fragment/app/FragmentManager;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayoutSticky:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const v0, 0x7f0f02fd

    .line 23
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->q0(Z)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_3

    .line 27
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public o0(ILjava/util/List;)V
    .locals 5
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, ""

    const/4 v0, 0x0

    move-object v1, p1

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->k0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12079c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->k0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 8
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12079d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->k0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 12
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12079f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->k0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v3, p1

    .line 16
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12079e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 17
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f1207a0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->d:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->getLocationInWindow([I)V

    const/4 v0, 0x1

    aget p1, p1, v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTitleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-gt p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayoutStickyArea:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayoutStickyArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-nez p2, :cond_2

    .line 8
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->q0(Z)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const p2, 0x7f0a042c

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-lt p1, p2, :cond_3

    .line 10
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->q0(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->d:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method public seeUser(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->b:Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->b:Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showPublish(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "from"

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "topicName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "topic_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->R1(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
