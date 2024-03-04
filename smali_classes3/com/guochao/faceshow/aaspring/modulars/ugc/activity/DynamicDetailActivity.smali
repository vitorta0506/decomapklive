.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Laa/e;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field private c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

.field private d:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

.field private e:Landroidx/core/view/GestureDetectorCompat;

.field private f:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

.field private g:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

.field protected h:I

.field private i:Lcom/guochao/faceshow/views/Love;

.field j:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field mViewGroup:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/views/Love;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->i:Lcom/guochao/faceshow/views/Love;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    return-object p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Landroidx/core/view/GestureDetectorCompat;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->e:Landroidx/core/view/GestureDetectorCompat;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/Comment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/Comment;

    return-object p0
.end method


# virtual methods
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

.method public getImageRecyclerViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->j:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->j:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->j:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0047

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    :cond_0
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->e:Landroidx/core/view/GestureDetectorCompat;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/views/Love;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/views/Love;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->i:Lcom/guochao/faceshow/views/Love;

    .line 5
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->i:Lcom/guochao/faceshow/views/Love;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->e:Landroidx/core/view/GestureDetectorCompat;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public loadData()V
    .locals 3

    const-string v0, "tokens/friend/details"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->a:Ljava/lang/String;

    const-string v2, "friendId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onAvatarClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    return-void
.end method

.method public onBlackStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->o(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    :cond_0
    return-void
.end method

.method public onCommentButtonClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->h:I

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "circle_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120950

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method

.method public onDeleteDynamic(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->e0()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method public onDynamicCommentEvent(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;->getDynamicCommentId()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->h:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;->getCommentType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->I(I)V

    :cond_0
    return-void
.end method

.method public onFocusStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->o(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    :cond_0
    return-void
.end method

.method public onImageClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->f:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->f:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->f:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->startZoom(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method public synthetic onLikeClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Laa/d;->a(Laa/e;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V

    return-void
.end method

.method public onResendClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    return-void
.end method

.method public onVideoClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    return-void
.end method
