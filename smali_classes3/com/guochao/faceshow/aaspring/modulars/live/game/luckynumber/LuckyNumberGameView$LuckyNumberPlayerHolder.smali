.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LuckyNumberPlayerHolder"
.end annotation


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

.field mCardBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewFlag:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewGender:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewMask:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mInfoView:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    .line 2
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->a:Landroid/view/View$OnClickListener;

    const v0, 0x7f0a0209

    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mInfoView:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mCardBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/high16 v3, 0x42b40000    # 90.0f

    aput v3, v2, v1

    const-string v1, "rotationY"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mInfoView:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->b()V

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->b:I

    return-void
.end method

.method g()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mImageViewMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->d(Landroid/view/View;Landroid/widget/ImageView;)V

    return-void
.end method

.method public h(I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->e(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method i(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->g()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mImageViewMask:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mImageViewMask:Landroid/widget/ImageView;

    const v1, 0x7f0f0488

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mInfoView:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->d(I)V

    return-void
.end method

.method public j()V
    .locals 9

    const v0, 0x7f0a080d

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->b:I

    aget-object v2, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mCardBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->f()I

    move-result v2

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result v4

    if-lt v2, v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mCardBg:Landroid/widget/ImageView;

    const v4, 0x7f0f0489

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mCardBg:Landroid/widget/ImageView;

    const v4, 0x7f0f047e

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mInfoView:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mImageViewMask:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mCardBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mInfoView:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mImageViewMask:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->b:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    .line 15
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mImageViewAvatar:Landroid/widget/ImageView;

    .line 16
    invoke-interface {v2}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f008b

    new-instance v6, Ljc/e;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    .line 17
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Ljc/e;-><init>(Landroid/content/Context;I)V

    .line 18
    invoke-static {v3, v4, v5, v6}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    .line 19
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mImageViewFlag:Landroid/widget/ImageView;

    .line 20
    invoke-interface {v2}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f0122

    .line 21
    invoke-static {v3, v4, v5}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 22
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mImageViewGender:Landroid/widget/ImageView;

    invoke-interface {v2}, Lp7/h;->getGender()I

    move-result v4

    if-ne v4, v1, :cond_3

    const v1, 0x7f0f0482

    goto :goto_3

    :cond_3
    const v1, 0x7f0f0483

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    invoke-interface {v2}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
