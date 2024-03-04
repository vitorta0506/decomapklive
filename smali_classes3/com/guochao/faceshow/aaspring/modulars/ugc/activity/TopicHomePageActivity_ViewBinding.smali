.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    .line 3
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0e05

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b26

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 5
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b27

    const-string v2, "field \'mTabLayoutSticky\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayoutSticky:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v0, 0x7f0a0b28

    const-string v1, "field \'mTabLayoutStickyArea\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayoutStickyArea:Landroid/view/View;

    .line 7
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a00b8

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f0a08db

    const-string v1, "field \'mImageViewPublishImage\' and method \'doPublishPicture\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageViewPublishImage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublishImage:Landroid/widget/ImageView;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08dc

    const-string v1, "field \'mImageViewPublishVideo\' and method \'doPublishVideo\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageViewPublishVideo\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublishVideo:Landroid/widget/ImageView;

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->e:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08d8

    const-string v1, "field \'mImageViewPublish\' and method \'showPublish\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 17
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageViewPublish\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublish:Landroid/widget/ImageView;

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->f:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a042c

    const-string v1, "field \'mTitleView\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTitleView:Landroid/view/View;

    const v0, 0x7f0a0154

    const-string v1, "field \'bottomDivider\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->bottomDivider:Landroid/view/View;

    const v0, 0x7f0a00fd

    const-string v1, "field \'mAvatarView\' and method \'seeUser\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 23
    const-class v2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const-string v3, "field \'mAvatarView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->g:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a00f0

    const-string v2, "field \'mImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageView:Landroid/widget/ImageView;

    .line 27
    const-class v0, Landroid/widget/Space;

    const v1, 0x7f0a0bd5

    const-string v2, "field \'mSpace\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mSpace:Landroid/widget/Space;

    const v0, 0x7f0a0741

    const-string v1, "method \'emptyClick\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->h:Landroid/view/View;

    .line 30
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e8

    const-string v1, "method \'seeUser\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->i:Landroid/view/View;

    .line 33
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a020d

    const-string v1, "method \'close\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->j:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayoutSticky:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTabLayoutStickyArea:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublishImage:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublishVideo:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageViewPublish:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mTitleView:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->bottomDivider:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mImageView:Landroid/widget/ImageView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->mSpace:Landroid/widget/Space;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->d:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->e:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->f:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->g:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->h:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->i:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity_ViewBinding;->j:Landroid/view/View;

    .line 30
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
