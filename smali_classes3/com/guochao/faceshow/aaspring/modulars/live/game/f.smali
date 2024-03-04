.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/f;
.super Lcom/guochao/faceshow/aaspring/modulars/live/game/g;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private E:F

.field private F:Z

.field public G:Landroid/view/View;

.field private H:Landroid/view/View$OnClickListener;

.field public I:Landroid/view/View;

.field private v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

.field public w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;-><init>(Landroid/view/ViewStub;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->F:Z

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->H:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic F(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->j0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->h0()V

    return-void
.end method

.method public static synthetic H(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->i0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->g0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic J(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->F:Z

    return p0
.end method

.method static synthetic K(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->F:Z

    return p1
.end method

.method static synthetic L(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->E:F

    return p0
.end method

.method static synthetic M(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->t0()V

    return-void
.end method

.method static synthetic N(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->E:F

    return p1
.end method

.method static synthetic O(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->o0(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;I)V

    return-void
.end method

.method static synthetic P(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->c0(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic Q(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    return-object p0
.end method

.method static synthetic R(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->A:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic S(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic T(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->z:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic U(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->D:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic V(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->a0()V

    return-void
.end method

.method static synthetic W(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->s0()V

    return-void
.end method

.method private a0()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c0(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 5
    iget p1, v0, Landroid/graphics/Point;->y:I

    return p1
.end method

.method private f0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    const v1, 0x7f0a045f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->G:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x42fe0000    # 127.0f

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->i:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 8
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    const v1, 0x7f0a0458

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->C:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    const v1, 0x7f0a0628

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->z:Landroid/widget/FrameLayout;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    const v1, 0x7f0a0720

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->A:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    const v1, 0x7f0a0721

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->B:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->C:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    const v1, 0x7f0a0ad4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->y:Landroid/widget/ImageView;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->A:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->y(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->y:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->y(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->G:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    const v1, 0x7f0a087d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    const v1, 0x7f0a02c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->x:Landroid/widget/TextView;

    return-void
.end method

.method private synthetic g0(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    new-instance p1, Lcom/guochao/faceshow/views/e;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f1205ad

    goto :goto_0

    :cond_1
    const v1, 0x7f1205ac

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->r:Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic h0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->z:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->t0()V

    return-void
.end method

.method private synthetic i0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->k0(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->r0(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->k0(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->r0(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private k0(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp7/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 3
    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ld9/g;)V

    :cond_0
    return-void
.end method

.method private o0(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-gtz p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v0

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v0

    :cond_3
    move v6, v0

    if-nez v6, :cond_4

    const-string v0, "LIVE_LUCKY_REMOTE_WIN"

    goto :goto_0

    :cond_4
    const-string v0, "LIVE_LUCKY_REMOTE_WIN_V_COIN"

    :goto_0
    move-object v1, v0

    .line 6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getUserName()Ljava/lang/String;

    move-result-object v5

    move v3, p2

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyWinMessage(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;ILjava/lang/String;Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {p2, p1}, Ld9/e;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private r0(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-lez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205b7

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-lez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 8
    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->B()V

    goto :goto_1

    .line 10
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205c6

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :goto_1
    return-void
.end method

.method private s0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->A(Z)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->u0()V

    return-void
.end method

.method private t0()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LIVE_LUCKY_REMOTE_REMOVE"

    goto :goto_0

    :cond_1
    const-string v1, "LIVE_LUCKY_REMOTE_REMOVE_V_COIN"

    :goto_0
    move-object v2, v1

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->i()I

    move-result v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h()I

    move-result v1

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int v6, v6, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getGameInfoId()J

    move-result-wide v7

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v10, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->i:I

    sub-int v10, v1, v10

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h()I

    move-result v11

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h()I

    move-result v1

    iget-object v12, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    mul-int v1, v1, v12

    int-to-float v1, v1

    const v12, 0x3f733333    # 0.95f

    mul-float v1, v1, v12

    float-to-int v12, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v13

    .line 9
    invoke-static/range {v2 .. v13}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyUserRemoveMessage(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;IIII)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_2
    return-void
.end method

.method private u0()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    const v1, 0x7f0f026f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->y:Landroid/widget/ImageView;

    const v1, 0x7f0f026e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->y:Landroid/widget/ImageView;

    const v1, 0x7f0f0270

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->p0(ZLjava/util/List;)V

    return-void
.end method

.method public D()V
    .locals 11

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->y:Landroid/widget/ImageView;

    const v2, 0x7f0f026f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->C:Landroid/widget/ImageView;

    const v2, 0x7f0f026d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 6
    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iget v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->l(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "%s/%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->D:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->x:Landroid/widget/TextView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n()V

    return-void
.end method

.method public X(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;Z)V
    .locals 6

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string p2, "\u5df2\u52a0\u5165\u7684\u4eba\u91cc\u9762\u5305\u542b\u8fd9\u4e2a\u4e86, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 3
    :cond_1
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->f:Z

    if-eqz p2, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string p2, "\u4eba\u6ee1\u4e86, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    if-nez p2, :cond_3

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string p2, "dishWheelView == null, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 7
    :cond_3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    move-object v1, v2

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->l(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp7/h;

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-nez p2, :cond_7

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, p1, v1

    const-string p2, "%s/%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->D:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    .line 14
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->x:Landroid/widget/TextView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    mul-int p2, p2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->u0()V

    return-void
.end method

.method public Y(Landroid/view/View;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    const v0, 0x7f0a045e

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->D:Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a045d

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0aa2

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getLiveGameData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v2

    invoke-virtual {v2}, Lc9/a;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 v2, 0x0

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const v5, 0x7f0f02c9

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 11
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v6

    if-eq v6, v4, :cond_2

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 12
    :cond_2
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 13
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    :cond_4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0f03ec

    goto :goto_1

    :cond_5
    const v0, 0x7f0f0271

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->A(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->t:Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;->a(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->X(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;Z)V

    return-void
.end method

.method public b0()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->H:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public d0()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 2
    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->D:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->x:Landroid/widget/TextView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    mul-int v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->C:Landroid/widget/ImageView;

    const v1, 0x7f0f026d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    const v1, 0x7f0a045c

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v0

    if-eq v0, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f04b7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f04b8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->f()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public l0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->s:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public m0()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->s:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public n0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->A(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public p0(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->q0(ZLjava/util/List;I)V

    return-void
.end method

.method public q0(ZLjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v1

    const/16 v4, 0x8

    if-nez v1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    return-void

    :cond_3
    if-eqz p1, :cond_2a

    .line 6
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    .line 7
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_7

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_6

    .line 10
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v5}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v6}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v1, p1, :cond_7

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-ne p1, v3, :cond_7

    return-void

    .line 12
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_f

    .line 13
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-nez p1, :cond_9

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->f0()V

    .line 16
    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->e0()V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->t:Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;

    if-eqz p1, :cond_a

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    invoke-interface {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;->b(Landroid/view/View;)V

    .line 19
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v4, :cond_e

    .line 20
    :cond_b
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->i:I

    if-gt p1, v3, :cond_c

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-ne p1, v3, :cond_c

    goto :goto_3

    .line 21
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_4

    .line 22
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 23
    :cond_e
    :goto_4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    if-ne p1, v3, :cond_f

    return-void

    .line 24
    :cond_f
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-eqz p1, :cond_11

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    if-nez v1, :cond_11

    const v1, 0x7f0a02d1

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_10

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 28
    :cond_10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->setLiveRoomManager(Ld9/g;)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->setDishWheel(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->u:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->setListenerInfo(Ljava/util/List;)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->setOnLoseListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;)V

    :cond_11
    const-string p1, "0"

    if-eqz p2, :cond_24

    .line 33
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x2

    const-string v4, "%s/%s"

    if-gez p3, :cond_1a

    .line 34
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    .line 35
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    :goto_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_13

    .line 37
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    int-to-double v7, v7

    mul-double v5, v5, v7

    double-to-int v5, v5

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_5

    .line 39
    :cond_12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 40
    :cond_13
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 41
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v5, 0x0

    :cond_14
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 42
    invoke-virtual {p0, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 43
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_15
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v7

    invoke-interface {v7}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 45
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->y:Landroid/widget/ImageView;

    const v8, 0x7f0f026f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    :cond_16
    invoke-interface {v6}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 47
    :cond_17
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k:Z

    if-nez p2, :cond_18

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 48
    new-instance p2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {p2}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 49
    iput-object p1, p2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 50
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 52
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array p2, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 54
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->D:Landroid/widget/TextView;

    if-eqz p3, :cond_19

    .line 55
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_19
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->x:Landroid/widget/TextView;

    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int p3, p3, v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iget v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    move-object v2, v3

    invoke-virtual/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->l(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    goto/16 :goto_d

    .line 59
    :cond_1a
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    .line 60
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 61
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 62
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 63
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 64
    :cond_1c
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k:Z

    if-nez p2, :cond_1d

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 65
    new-instance p2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {p2}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 66
    iput-object p1, p2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 67
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 69
    :goto_8
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_20

    const/4 v6, 0x0

    .line 70
    :goto_9
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1f

    .line 71
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v7}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getRemovePosition()I

    move-result v7

    if-ne v5, v7, :cond_1e

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_1f
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 73
    :cond_20
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array p2, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 75
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->D:Landroid/widget/TextView;

    if-eqz v1, :cond_21

    .line 76
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->x:Landroid/widget/TextView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 80
    :goto_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_23

    .line 81
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 82
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getRemovePosition()I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p3

    if-ge v3, v4, :cond_22

    goto :goto_c

    .line 83
    :cond_22
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 84
    :cond_23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removePositions = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", currentUser = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", mConfDiamondNum = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mUserAvatars = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-virtual {p3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "zune: "

    .line 86
    invoke-static {p3, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iget v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    invoke-virtual/range {v3 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->l(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    .line 88
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    iput-boolean v2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->a:Z

    .line 89
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n()V

    .line 90
    :cond_24
    :goto_d
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k:Z

    if-eqz p2, :cond_25

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->c()Lb8/a;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)Z

    move-result p2

    if-nez p2, :cond_25

    .line 91
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->c()Lb8/a;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/UserBean;

    .line 92
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->b(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    .line 93
    :cond_25
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k:Z

    if-nez p2, :cond_29

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 94
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lp7/h;

    .line 95
    invoke-interface {p3}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_26

    :cond_27
    return-void

    .line 96
    :cond_28
    new-instance p2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {p2}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 97
    iput-object p1, p2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->b(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    .line 99
    :cond_29
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->u0()V

    if-eqz v0, :cond_2b

    .line 100
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->l0()V

    goto :goto_e

    .line 101
    :cond_2a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 102
    :cond_2b
    :goto_e
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p2, :cond_2c

    .line 103
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d4()Landroid/widget/ImageView;

    :cond_2c
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->s()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->t:Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;->c(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->D:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->v:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->y:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const v2, 0x7f0f026f

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->z:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->G:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->G:Landroid/view/View;

    const/high16 v1, 0x42fe0000    # 127.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 18
    :cond_6
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->d()V

    return-void
.end method
