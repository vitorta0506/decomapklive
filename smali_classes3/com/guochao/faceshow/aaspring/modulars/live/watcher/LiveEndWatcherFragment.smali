.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.source "SourceFile"


# instance fields
.field private a:Z

.field b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

.field c:[Landroid/view/View;

.field endTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFoucesView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecommendView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewFCoinAdded:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewFansAdded:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewLiveTotalPeople:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewUserName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->R1(Landroid/view/View;)V

    return-void
.end method

.method public static Q1(Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;Z)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "isPrivateLimit"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private R1(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 5
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->endTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060099

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->endTitle:Landroid/widget/TextView;

    const v3, 0x7f120739

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->endTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0603ce

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getIsBack()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->endTitle:Landroid/widget/TextView;

    const v3, 0x7f1205b3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->endTitle:Landroid/widget/TextView;

    const v3, 0x7f1204d2

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    sget-object v1, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/SigninManager;->releaseWatchLiveListener()V

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewFCoinAdded:Landroid/widget/TextView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFcoin()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFcoin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "+%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewLiveTotalPeople:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getOnlineNum()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewFansAdded:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFansNum()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFansNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewUserName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getIsAttention()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0a042f

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 20
    :cond_6
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getRecommend()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getRecommend()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->S1(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method private S1(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mRecommendView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x3

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->c:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->c:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->T1(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->c:[Landroid/view/View;

    aget-object v3, v3, v2

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;

    invoke-direct {v4, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mRecommendView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private T1(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 4

    const v0, 0x7f0a04ff

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0c22

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a051b

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a052d

    .line 4
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f0f025e

    invoke-static {v2, p1, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getOnlineNum()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0f0370

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f056d

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isInPkMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public focus(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mFoucesView:Landroid/widget/TextView;

    const v1, 0x7f1203a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->LIVE:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;Landroid/view/View;)V

    invoke-static {v0, v1, v2, v3}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01b2

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->initView(Landroid/view/View;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->c:[Landroid/view/View;

    const v1, 0x7f0a056b

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->c:[Landroid/view/View;

    const v1, 0x7f0a056c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->c:[Landroid/view/View;

    const v1, 0x7f0a056d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mFoucesView:Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12039f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "+ %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewUserName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0104

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0f03f3

    invoke-static {v1, v0, v2}, Lhc/a;->t(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s2(Landroidx/fragment/app/FragmentManager;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getRecommend()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->R1(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "tokens/live/newLive/findEndLiveMsg"

    .line 15
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveStartTimestamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startTime"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :goto_0
    const v0, 0x7f0a020d

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41000000    # 8.0f

    .line 18
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "isPrivateLimit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->a:Z

    :cond_0
    return-void
.end method

.method public toUserHome(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method
