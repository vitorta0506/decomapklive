.class public Lcom/guochao/faceshow/gift/view/NumCheckSendView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;,
        Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/view/View;

.field public h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Landroid/view/View;

.field private l:Z

.field private m:Z

.field private n:Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;

.field private o:Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "1"

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->j:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->l:Z

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->j:Z

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->o:Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->s()V

    return-void
.end method

.method static synthetic g(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->o()V

    return-void
.end method

.method static synthetic h(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->n:Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->i:I

    return p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/gift/view/NumCheckSendView;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->i:I

    return p1
.end method

.method static synthetic k(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->e:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic l(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->k:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private p()V
    .locals 4

    const v0, 0x7f0a0199

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->d:Landroid/view/ViewGroup;

    const v0, 0x7f0a0a82

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a0184

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->a:Landroid/widget/TextView;

    const v0, 0x7f0a019a

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b:Landroid/widget/TextView;

    .line 5
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08046e

    goto :goto_0

    :cond_0
    const v1, 0x7f08046d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->d:Landroid/view/ViewGroup;

    new-instance v1, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;-><init>(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/gift/view/NumCheckSendView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView$b;-><init>(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 11
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->f:Landroid/widget/LinearLayout;

    const v3, 0x7f080286

    .line 12
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 16
    new-instance v1, Lcom/guochao/faceshow/gift/view/NumCheckSendView$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView$c;-><init>(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 17
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    const/4 v2, -0x2

    .line 18
    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/Tool;->createPopWindowInstance(Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->e:Landroid/widget/PopupWindow;

    .line 19
    new-instance v1, Lcom/guochao/faceshow/gift/view/NumCheckSendView$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView$d;-><init>(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private s()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->g:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const v0, 0x800053

    goto :goto_1

    :cond_2
    const v0, 0x800055

    .line 4
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPPO R11st"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 6
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->e:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->g:Landroid/view/View;

    iget-object v4, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v5, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    const/high16 v6, 0x42080000    # 34.0f

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    .line 8
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public getCurrentData()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOnCountChangedListener()Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->o:Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;

    return-object v0
.end method

.method public getTopSend()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->k:Landroid/view/View;

    return-object v0
.end method

.method public n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->m:Z

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->m()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->p()V

    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "1"

    .line 1
    iput-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public r(Z)V
    .locals 4

    if-eqz p1, :cond_1

    const v0, 0x7f080457

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b:Landroid/widget/TextView;

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v2

    invoke-virtual {v2}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f08046e

    goto :goto_0

    :cond_0
    const v2, 0x7f08046d

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b:Landroid/widget/TextView;

    const v1, 0x7f08046f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :goto_1
    iput-boolean p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->l:Z

    return-void
.end method

.method public setCheckPopAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->g:Landroid/view/View;

    return-void
.end method

.method public setCurrentData(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->a:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurrentHandyGiftDrawCount(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setSendEnable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setSendEnable(Z)V

    :goto_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x41f00000    # 30.0f

    .line 6
    invoke-static {v6}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    .line 8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 9
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v4, 0x41500000    # 13.0f

    .line 10
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v4, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;

    invoke-direct {v4, p0, v2, v1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;-><init>(Lcom/guochao/faceshow/gift/view/NumCheckSendView;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnCountChangedListener(Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->o:Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;

    return-void
.end method

.method public setOnMultiClickListener(Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->n:Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/gift/view/NumCheckSendView$f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView$f;-><init>(Lcom/guochao/faceshow/gift/view/NumCheckSendView;Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSendEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->j:Z

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->m()V

    return-void
.end method

.method public setTopSend(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->k:Landroid/view/View;

    return-void
.end method
