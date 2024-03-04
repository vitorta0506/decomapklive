.class public Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;
.super Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;
    }
.end annotation


# instance fields
.field focus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field headImg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mActionArea:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mConversation:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

.field mUserBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mViews:[Landroid/view/View;

.field nickName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private onFocusListener:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;

.field vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mUserBeans:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->onFocusListener:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;

    return-object p0
.end method

.method private refreshFocus()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->focus:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getIsAttention()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->focus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->focus:Landroid/widget/ImageView;

    const v1, 0x7f0f02db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->focus:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setDataToView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->headImg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->nickName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getVipLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->refreshFocus()V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    return-void
.end method

.method public createItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mUserBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x12c

    .line 2
    invoke-static {v0, v1, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->Z1(Ljava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->setOnScaleListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;)V

    .line 4
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->setOnPhotoTapListener(Lh1/f;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->d2(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mUserBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d02d6

    return v0
.end method

.method public getResetThumbView()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4
    aget-object v0, v1, v0

    return-object v0

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->getResetThumbView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected makeViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->makeViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->setOnSwipeBackListener(Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;)V

    return-object v0
.end method

.method public onFocusEvent(Ly7/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ly7/e;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {p1}, Ly7/e;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->setIsAttention(I)V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->refreshFocus()V

    return-void
.end method

.method public bridge synthetic onScaled(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/k;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected onShowActionArea()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->onShowActionArea()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mActionArea:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mConversation:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onSwipeRight(Lcom/guochao/faceshow/aaspring/views/HackyViewPager;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public requestFocus(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-wide/16 v0, 0x1f4

    .line 1
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)V

    invoke-static {v0, v1, p1, v2}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$3;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$3;-><init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)V

    const-wide/16 v1, 0x1e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resetZoom()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->resetZoom()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mActionArea:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mConversation:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setOnFocusListener(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->onFocusListener:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;

    return-void
.end method

.method public startChat(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getNickName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public startUserHome(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mCurData:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startZoom(Ljava/util/List;Landroid/view/View;I[Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            "I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mUserBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mUserBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mViews:[Landroid/view/View;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 6
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->removeCurrentViewPager()V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->makeViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 9
    new-instance p4, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p4, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroidx/fragment/app/FragmentManager;)V

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPagerAdapter:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    invoke-virtual {p1, p4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-lez p3, :cond_1

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1209da

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->getItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p4, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, p2, p4, v1}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startZoom(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, p2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-array p1, v2, [I

    .line 18
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of p4, p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p4, :cond_2

    .line 20
    check-cast p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 21
    :cond_2
    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$1;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p2, :cond_3

    .line 24
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setOnBackButtonPressedHandler(Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;)V

    .line 25
    :cond_3
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->onPageSelected(I)V

    .line 26
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->setDataToView()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
