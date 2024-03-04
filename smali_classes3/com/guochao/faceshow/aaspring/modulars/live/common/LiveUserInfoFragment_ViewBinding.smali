.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06db

    const-string v2, "field \'llLocationAndName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLocationAndName:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0103

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a066f

    const-string v2, "field \'littleAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->littleAvatar:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cb3

    const-string v2, "field \'tvLiveName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveName:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cb2

    const-string v2, "field \'tvLiveLocation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveLocation:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06da

    const-string v2, "field \'llLocation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLocation:Landroid/widget/LinearLayout;

    .line 9
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a00fd

    const-string v2, "field \'mAvatarView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 10
    const-class v0, Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    const v1, 0x7f0a0db7

    const-string v2, "field \'mRecyclerViewUsers\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mRecyclerViewUsers:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0746

    const-string v2, "field \'masterName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->masterName:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a083c

    const-string v2, "field \'onlineCountText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onlineCountText:Landroid/widget/TextView;

    const v0, 0x7f0a0432

    const-string v1, "field \'focusBtn\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 14
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v2, v0, v1, v3}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    .line 15
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0430

    const-string v1, "field \'focusSVGA\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusSVGA:Landroid/view/View;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a068c

    const-string v2, "field \'liveFbCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveFbCount:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a06a2

    const-string v2, "field \'liveLikeCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveLikeCount:Landroid/widget/TextView;

    .line 20
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a07ea

    const-string v2, "field \'nameLy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->nameLy:Landroid/widget/LinearLayout;

    const v0, 0x7f0a06cc

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 22
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llFb\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llFb:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->f:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a06d9

    .line 25
    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llLikeCount\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLikeCount:Landroid/widget/LinearLayout;

    const v0, 0x7f0a05bf

    .line 26
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivMotion\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->ivMotion:Landroid/widget/ImageView;

    const v0, 0x7f0a068b

    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLiveFCoinAndLike:Landroid/view/View;

    const v0, 0x7f0a091e

    .line 28
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "field \'rankListMulti\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListMulti:Landroid/view/ViewGroup;

    const v0, 0x7f0a091f

    .line 29
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "field \'rankListSingle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListSingle:Landroid/view/ViewGroup;

    const v0, 0x7f0a0bd4

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 31
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->g:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLocationAndName:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->littleAvatar:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveName:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveLocation:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLocation:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mRecyclerViewUsers:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->masterName:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onlineCountText:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusSVGA:Landroid/view/View;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveFbCount:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveLikeCount:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->nameLy:Landroid/widget/LinearLayout;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llFb:Landroid/widget/LinearLayout;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLikeCount:Landroid/widget/LinearLayout;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->ivMotion:Landroid/widget/ImageView;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLiveFCoinAndLike:Landroid/view/View;

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListMulti:Landroid/view/ViewGroup;

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListSingle:Landroid/view/ViewGroup;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->e:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->f:Landroid/view/View;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment_ViewBinding;->g:Landroid/view/View;

    .line 32
    :cond_1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;->unbind()V

    return-void

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
