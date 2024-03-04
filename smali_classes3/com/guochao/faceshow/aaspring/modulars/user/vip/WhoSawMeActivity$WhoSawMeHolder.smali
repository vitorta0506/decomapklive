.class public Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhoSawMeHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

.field avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;

.field private c:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

.field private d:I

.field dividerLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private e:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;

.field iconFocus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userCenterAgeLevel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userSawPhotos:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userSign:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field watchTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d028a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userCenterAgeLevel:Landroid/view/View;

    invoke-direct {p1, v0, v2, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;ZZ)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userSawPhotos:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->setOnClickImageListener(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->c:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->d:I

    return p0
.end method


# virtual methods
.method public g(ILcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;I)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->d:I

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->c:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->dividerLine:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x1

    sub-int/2addr p3, v1

    const/4 v2, 0x0

    if-ne p1, p3, :cond_0

    const/high16 p1, 0x428c0000    # 70.0f

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 6
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userSign:Landroid/widget/TextView;

    const p3, 0x7f1209bc

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userSign:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userSign:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getSignature()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getNickName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->a(Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->watchTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getCreateTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/guochao/faceshow/utils/TimeUtil;->getWhoSawMeTime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->c:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->iconFocus:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getIsAttention()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->iconFocus:Landroid/widget/ImageView;

    const p2, 0x7f0f0606

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->iconFocus:Landroid/widget/ImageView;

    const p2, 0x7f0f02db

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->iconFocus:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04f9

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 2
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->c:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getIsAttention()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->c:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->c:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->c:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->c:Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)V

    invoke-static {v0, v1, p1, v2}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    :goto_1
    return-void
.end method

.method public setOnItemDataChangedListener(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;

    return-void
.end method
