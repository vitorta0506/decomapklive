.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$c;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;

.field private b:I

.field private c:Landroid/os/Handler;

.field private d:J

.field private e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

.field private final f:Landroid/widget/TextView;

.field private final g:Lcom/guochao/faceshow/views/NormalCircleImageView;

.field private h:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->b:I

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->c:Landroid/os/Handler;

    const v0, 0x7f0a0a09

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

    const v0, 0x7f0a0bab

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0d86

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/NormalCircleImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->g:Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;->setOnScrollChangeListener(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView$a;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->o()V

    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->n()V

    return-void
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->b:I

    return p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->b:I

    return p1
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->m()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->p()V

    return-void
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->l(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;)V

    return-void
.end method

.method private l(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->c:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic n()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$c;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$c;->a()V

    return-void
.end method

.method private synthetic o()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->l(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;)V

    return-void
.end method

.method private p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->c:Landroid/os/Handler;

    new-instance v1, Lq8/b;

    invoke-direct {v1, p0}, Lq8/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public k(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->b:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;->getType()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const p1, 0x7f1202b1

    goto :goto_0

    :cond_1
    const p1, 0x7f1202b4

    goto :goto_0

    :cond_2
    const p1, 0x7f1202b3

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 8
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#8CFFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v4, 0x21

    invoke-virtual {v1, v2, p1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->g:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;->getUserImg()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0089

    invoke-static {p1, v0, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

    invoke-virtual {p1, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method public q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->c:Landroid/os/Handler;

    new-instance v1, Lq8/a;

    invoke-direct {v1, p0}, Lq8/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->d:J

    return-void
.end method

.method public setOnScrollListener(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->h:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$c;

    return-void
.end method
