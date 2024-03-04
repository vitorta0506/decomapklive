.class public Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;
.source "SourceFile"


# instance fields
.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field mDanmuSwitch:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field n:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

.field o:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field private p:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic G0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->p:Lcom/guochao/faceshow/aaspring/beans/Comment;

    return-object p0
.end method

.method static synthetic H0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic I0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->i:I

    return p1
.end method

.method static synthetic N0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->i:I

    return p0
.end method

.method static synthetic P0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->i:I

    return p0
.end method

.method static synthetic Q0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->mTextViewCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic S0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->h:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    return-object p0
.end method

.method static synthetic T0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->i:I

    return p0
.end method

.method static synthetic W0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->h:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    return-object p0
.end method

.method static synthetic X0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->h:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    return-object p0
.end method

.method static synthetic Y0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->i:I

    return p0
.end method

.method static synthetic Z0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->h:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    return-object p0
.end method

.method static synthetic a1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->mTextViewCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->l:I

    return p0
.end method

.method static synthetic d1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    return-object p0
.end method

.method static synthetic g1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    return-object p0
.end method

.method static synthetic h1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Ljava/lang/String;Ljava/lang/String;II)Lcom/guochao/faceshow/aaspring/beans/Comment;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->m1(Ljava/lang/String;Ljava/lang/String;II)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object p0

    return-object p0
.end method

.method private m1(Ljava/lang/String;Ljava/lang/String;II)Lcom/guochao/faceshow/aaspring/beans/Comment;
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;-><init>()V

    .line 2
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setCommentId(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setComment(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setCommentJson(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setParentCommentId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget p1, p1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setSex(I)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setUserImg(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setAvatar(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setLevelId(I)V

    return-object v0
.end method

.method public static o1(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/VideoItem;ZLjava/lang/String;ILcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "videoItem"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "forceEdit"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "videoId"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "from"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    const p1, 0x7f01000e

    const p2, 0x7f01004f

    .line 7
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-static {p0, v0, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public A0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/EmptyHolder;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->loadData(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->o:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f0a02a3

    const v4, 0x7f1201f8

    const v5, 0x7f0a0266

    const v6, 0x7f1201e4

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 7
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 11
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const v7, 0x7f06006b

    const v8, 0x7f0a0971

    const v9, 0x7f1207a7

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 14
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 15
    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v1, v8}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 20
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 24
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3

    .line 27
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 28
    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v1, v8}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_3
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;-><init>()V

    .line 33
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->setItemId(I)V

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;->S1(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;)V

    return-void
.end method

.method public B0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f1205a2

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const v0, 0x7f120439

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->i1(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method

.method protected F0(Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    new-instance p3, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v0, "api/token/social/video/updateCommentLike"

    invoke-direct {p3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-string v1, "userId"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "commentId"

    invoke-virtual {p3, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$e;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)V

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$d;

    invoke-direct {p3, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Landroid/view/View;)V

    .line 3
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

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

.method protected i1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->q:Z

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->d:Ljava/lang/String;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;

    invoke-direct {v3, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->addVideoComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->initView()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoItem"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->o:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->o:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->p:Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->n:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->o:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->a:Ljava/lang/String;

    :cond_1
    const-string v1, "forceEdit"

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->m:Z

    const-string v1, "videoId"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->k:Ljava/lang/String;

    const-string v1, "from"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->l:I

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->mDanmuSwitch:Landroid/view/View;

    const-string v1, "danmu"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getSetting(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVideoBarrageSwitch()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->mDanmuSwitch:Landroid/view/View;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVideoBarrageSwitch()I

    move-result v1

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->mTextViewCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->o:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCommentNum()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->m:Z

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoard(Landroid/widget/EditText;)V

    :cond_4
    return-void
.end method

.method protected k1(Lcom/guochao/faceshow/aaspring/beans/Comment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->k:Ljava/lang/String;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;

    invoke-direct {v3, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/Comment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->deleteCommentById(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public loadData(I)V
    .locals 4

    .line 1
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->k:Ljava/lang/String;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)V

    const/16 v3, 0xa

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->getCommentList(IILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getDeviceBrand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setDanmuSwitch(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "danmu"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getSetting(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getVideoBarrageSwitch()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/lit8 v3, v2, 0x1

    .line 2
    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->setSetting(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->n:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz v0, :cond_1

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->o:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    :cond_1
    xor-int/lit8 v0, v2, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public shouldShowLiveFloatWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
