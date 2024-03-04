.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    .line 3
    const-class v0, Landroid/widget/Space;

    const v1, 0x7f0a0ab5

    const-string v2, "field \'mSpace\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mSpace:Landroid/widget/Space;

    const v0, 0x7f0a067f

    const-string v1, "field \'mLiveBtns\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveBtns:Landroid/view/View;

    .line 5
    const-class v0, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    const v0, 0x7f0a0690

    const-string v1, "method \'showGift\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const-string v3, "field \'mGiftSVGAImageView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->e:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06a7

    const-string v1, "field \'mGiftImageView\' and method \'showGift\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mGiftImageView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftImageView:Landroid/widget/ImageView;

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->f:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0680

    const-string v1, "field \'liveChatBtn\' and method \'onViewClicked\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'liveChatBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->liveChatBtn:Landroid/widget/ImageView;

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->g:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a041c

    const-string v1, "field \'newMessage\' and method \'onNewMessageClick\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'newMessage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->newMessage:Landroid/widget/FrameLayout;

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->h:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06e5

    const-string v2, "field \'llNewMsg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->llNewMsg:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0895

    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->pkLayoutLive:Landroid/view/View;

    const v0, 0x7f0a0500

    const-string v1, "field \'multiGame\' and method \'onViewClick\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->multiGame:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->i:Landroid/view/View;

    .line 27
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ac

    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 29
    const-class v2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const-string v3, "field \'callingBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v1, :cond_0

    .line 30
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->j:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a069a

    const-string v1, "field \'liveImBtn\' and method \'startIMChat\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->liveImBtn:Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->k:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$g;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0514

    const-string v1, "field \'floatImUnread\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->floatImUnread:Landroid/view/View;

    const v0, 0x7f0a06a6

    const-string v1, "field \'mLiveMore\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 38
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveMore:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->l:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$h;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04cb

    .line 41
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'helloUnReadNum\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->helloUnReadNum:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mSpace:Landroid/widget/Space;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveBtns:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftImageView:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->liveChatBtn:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->newMessage:Landroid/widget/FrameLayout;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->llNewMsg:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->pkLayoutLive:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->multiGame:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->liveImBtn:Landroid/view/View;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->floatImUnread:Landroid/view/View;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveMore:Landroid/view/View;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->helloUnReadNum:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->e:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->f:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->g:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->h:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->i:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->j:Landroid/view/View;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->k:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->l:Landroid/view/View;

    .line 35
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;->unbind()V

    return-void

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
