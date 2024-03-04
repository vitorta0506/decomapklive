.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;,
        Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/views/g;

.field b:J

.field c:Z

.field public d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

.field private e:I

.field emptyUsers:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:F

.field ivBoxOpen:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBackButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCloseDialog:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCountDownContainerView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFailTipsTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGrabResultView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mOpenGiftView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mResultView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mShakeIconView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSuccessCountView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCountDown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewDiamondCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTipsTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewShowUserList:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;-><init>()V

    const-wide/16 v0, 0x2710

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->b:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->g:Z

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->X1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;J)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->b2(J)I

    move-result p0

    return p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->a2(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->f:Z

    return p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->e:I

    return p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->e:I

    return p1
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->i:F

    return p0
.end method

.method public static W1(Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private synthetic X1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onBack()Z

    :cond_0
    return-void
.end method

.method private Y1(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mShakeIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0f020d

    goto :goto_0

    :cond_0
    const v1, 0x7f0f01b5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0aed

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const v0, 0x7f0f01bc

    goto :goto_1

    :cond_1
    const v0, 0x7f0f039b

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result v0

    if-ne v0, v2, :cond_2

    const v0, 0x7f0f020b

    goto :goto_2

    :cond_2
    const v0, 0x7f0f01b6

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTextViewCountDown:Landroid/widget/TextView;

    const v0, 0x7f060124

    const v1, 0x7f060123

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setGradientTextColor(Landroid/widget/TextView;III)V

    goto :goto_3

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTextViewCountDown:Landroid/widget/TextView;

    const v0, 0x7f0600c5

    const v1, 0x7f0600c4

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setGradientTextColor(Landroid/widget/TextView;III)V

    :goto_3
    return-void
.end method

.method private a2(ZILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float v0, p2

    .line 2
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->i:F

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->i:F

    .line 4
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->g:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->g:Z

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->h:Z

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mResultView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mGrabResultView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mCloseDialog:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTextViewDiamondCount:Landroid/widget/TextView;

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result v5

    if-ne v5, v0, :cond_2

    move-object v5, p3

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    aput-object v5, v4, v2

    const-string v5, "+%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mSuccessCountView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    const p2, 0x7f1204dc

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    const p3, 0x7f1204da

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-virtual {p0, p3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->emptyUsers:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mFailTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 19
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 p1, 0x41a00000    # 20.0f

    .line 20
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    const p2, 0x7f1204d9

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x3e600000    # -20.0f

    .line 23
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mFailTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mSuccessCountView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b2(J)I
    .locals 2

    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public Z1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mCloseDialog:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mCountDownContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mShakeIconView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mShakeIconView:Landroid/widget/ImageView;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 5
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object v3, v2, v0

    .line 6
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xfa

    .line 7
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public back(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mGrabResultView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mViewShowUserList:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->h:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mSuccessCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mFailTipsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    const v3, 0x7f1204d9

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mFailTipsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mSuccessCountView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->emptyUsers:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 16
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->i:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    const v0, 0x7f0f020c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    const v0, 0x7f0f020b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0164

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->initView(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    const v1, 0x7f0a020d

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0211

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mCloseDialog:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTextViewDiamondCount:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    .line 10
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->b:J

    const-wide/16 v0, 0x3e8

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->Z1()V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;JJ)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->a:Lcom/guochao/faceshow/views/g;

    .line 14
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 15
    :goto_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->Y1(Landroid/view/View;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getPhoneEndTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->b:J

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mShakeIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->b(Landroid/view/View;)V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->c:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->a:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->a:Lcom/guochao/faceshow/views/g;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    :cond_0
    return-void
.end method

.method public openGiftBox(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->f:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->f:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mShakeIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->a(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result v0

    if-ne v0, p1, :cond_2

    const-string p1, "tokens/live/treasure/happyGrab"

    goto :goto_0

    :cond_2
    const-string p1, "tokens/live/treasure/grab"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scene"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getGiftBoxId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "treasureId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "liveId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public showGiftUserList(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string p1, "tokens/live/treasure/detail"

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scene"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getGiftBoxId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "treasureId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "liveId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
