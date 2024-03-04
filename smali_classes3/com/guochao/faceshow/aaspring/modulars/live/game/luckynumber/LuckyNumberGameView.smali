.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;,
        Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

.field c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

.field d:[Landroid/view/View;

.field e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

.field f:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

.field g:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

.field private h:Z

.field i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0xa

    new-array p2, p1, [Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    .line 5
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    new-array p1, p1, [Landroid/view/View;

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->d:[Landroid/view/View;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->h:Z

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->i:I

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->j()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->a:Z

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;)I
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->h()I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->q(II)V

    return-void
.end method

.method private h()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private j()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->d:[Landroid/view/View;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0307

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    invoke-direct {v3, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;Landroid/view/View;)V

    const v4, 0x7f0a0193

    .line 5
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->f(I)V

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->d:[Landroid/view/View;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0193

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->l(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->y2()V

    return-void
.end method

.method private q(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->h:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    const-string v1, "tokens/game/v2/round/changePosition"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;II)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public f()I
    .locals 5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method protected g(I)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0193

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    return-object p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method i(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public l(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;I)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->j()V

    return-void
.end method

.method public m(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->getLiveGameUserInfo()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;->getFromPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->getPosition()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->r(II)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    if-eqz v0, :cond_1

    .line 5
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    invoke-interface {v2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->getPosition()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->r(II)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;->getFromPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->getPosition()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->r(II)V

    return-void
.end method

.method protected n(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    aput-object v1, v0, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g(I)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->j()V

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->y2()V

    return-void
.end method

.method public o(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->f:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    const/4 p4, 0x4

    if-gt p2, p4, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 2
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {p5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v0, p3

    .line 4
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    invoke-virtual {p5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p5

    add-int/2addr v2, p5

    add-int/2addr p3, v2

    .line 6
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p4, v0, v1, p5, v2}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    :goto_1
    const/16 p3, 0xa

    if-ge p2, p3, :cond_1

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    invoke-virtual {p4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p5

    add-int/2addr p5, p1

    .line 10
    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 11
    invoke-virtual {p4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p4

    add-int/2addr v0, p4

    add-int/2addr p1, v0

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p3, p5, v1, p4, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v1, 0x4

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 p2, 0x40800000    # 4.0f

    .line 4
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0xa

    sub-int p2, p1, p2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 6
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    div-int/lit8 v8, p2, 0x5

    .line 9
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v9, v8

    const/high16 v10, 0x42280000    # 42.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x42780000    # 62.0f

    mul-float v9, v9, v10

    float-to-int v9, v9

    .line 10
    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-gt v5, v1, :cond_1

    .line 11
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 12
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    :cond_1
    if-gt v5, v4, :cond_2

    add-int/2addr v2, v9

    .line 13
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v10

    .line 14
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v7

    .line 15
    :cond_2
    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_3

    .line 17
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v5, v0, :cond_7

    .line 18
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 19
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    div-int/lit8 v10, p1, 0x5

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    div-int/lit8 v11, p2, 0x2

    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/view/View;->measure(II)V

    .line 21
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 22
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-gt v5, v1, :cond_5

    add-int/2addr v6, v10

    .line 23
    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v12

    add-int/2addr v6, v12

    .line 24
    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v12

    add-int/2addr v6, v12

    :cond_5
    if-gt v5, v4, :cond_6

    add-int/2addr v7, v11

    .line 25
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v12

    .line 26
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v9

    .line 27
    :cond_6
    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 28
    :cond_7
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_3
    return-void
.end method

.method public p(ILcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    aput-object p2, v0, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g(I)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->l(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;I)V

    return-void
.end method

.method public r(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    aget-object v1, v0, p1

    .line 2
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 3
    aput-object v1, v0, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g(I)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->l(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;I)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g(I)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->l(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;I)V

    return-void
.end method

.method public s(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->k()V

    return-void
.end method

.method public setGamedStarted(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->a:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->a:Z

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->k()V

    :cond_0
    return-void
.end method

.method public setLiveGameHandler(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    return-void
.end method

.method public t(Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getAppNumGameJoin()Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->i(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->i:I

    if-ltz v1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g(I)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getInputNum()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->h(I)V

    .line 5
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->i:I

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g(I)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->d()V

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g(I)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->i(I)V

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->i:I

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->k()V

    return-void
.end method

.method public v(ILcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    aput-object p2, v0, p1

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->k()V

    return-void
.end method
