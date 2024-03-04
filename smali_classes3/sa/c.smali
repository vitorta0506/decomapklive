.class public Lsa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static u:I = 0x7f0a069e

.field private static final v:[I


# instance fields
.field a:Landroid/view/animation/LinearInterpolator;

.field private b:Ld9/b;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/gift/data/AnimFlag;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/opensource/svgaplayer/SVGAParser;

.field private h:I

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

.field private n:I

.field private o:Z

.field private p:Ljava/lang/Runnable;

.field private q:Landroidx/recyclerview/widget/RecyclerView;

.field r:Landroidx/fragment/app/FragmentManager;

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsa/c;->v:[I

    return-void

    :array_0
    .array-data 4
        0x7f0f00a2
        0x7f0f00a3
        0x7f0f00a4
        0x7f0f00a5
        0x7f0f00a6
        0x7f0f00a7
        0x7f0f00a8
        0x7f0f00a8
        0x7f0f009e
        0x7f0f00a9
        0x7f0f00a0
        0x7f0f009f
        0x7f0f00a1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lsa/c;->a:Landroid/view/animation/LinearInterpolator;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lsa/c;->h:I

    const/16 v1, 0x3e8

    .line 4
    iput v1, p0, Lsa/c;->i:I

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lsa/c;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lsa/c;->o:Z

    .line 7
    new-instance v1, Lsa/c$a;

    invoke-direct {v1, p0}, Lsa/c$a;-><init>(Lsa/c;)V

    iput-object v1, p0, Lsa/c;->p:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lsa/c$g;

    invoke-direct {v1, p0}, Lsa/c$g;-><init>(Lsa/c;)V

    iput-object v1, p0, Lsa/c;->s:Ljava/lang/Runnable;

    .line 9
    iput-object p1, p0, Lsa/c;->d:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lsa/c;->r:Landroidx/fragment/app/FragmentManager;

    .line 11
    iput-object p3, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    .line 12
    iput v0, p0, Lsa/c;->h:I

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsa/c;->f:Ljava/util/List;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsa/c;->e:Ljava/util/List;

    .line 15
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lsa/c;->k:Z

    .line 16
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 18
    :cond_0
    iget-object p1, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    new-instance p2, Lsa/c$e;

    invoke-direct {p2, p0}, Lsa/c$e;-><init>(Lsa/c;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 19
    iget-object p1, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    :cond_1
    return-void
.end method

.method private B(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/gift/data/AnimFlag;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    iput-object v0, p0, Lsa/c;->g:Lcom/opensource/svgaplayer/SVGAParser;

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lsa/c;->k:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarId()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, p2}, Lsa/c;->t(Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    goto :goto_2

    .line 7
    :cond_1
    iget-boolean v1, p2, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "/"

    const-string v3, "Car"

    if-eqz v1, :cond_2

    .line 8
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "V2.svga"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".svga"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_1
    iget-object v0, p0, Lsa/c;->g:Lcom/opensource/svgaplayer/SVGAParser;

    const-string v2, "entrance_car"

    new-instance v3, Lsa/c$d;

    invoke-direct {v3, p0, p2, p1}, Lsa/c$d;-><init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 12
    :cond_3
    invoke-direct {p0, p2}, Lsa/c;->t(Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    :goto_2
    return-void
.end method

.method private C(Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsa/c;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsa/c;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    iget-object v1, p0, Lsa/c;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsa/c;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lsa/c;->d:Landroid/content/Context;

    const v1, 0x7f010047

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    new-instance v1, Lsa/c$c;

    invoke-direct {v1, p0, p1, p2}, Lsa/c$c;-><init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8
    iget-object p2, p0, Lsa/c;->l:Landroid/view/View;

    iget-object p1, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lsa/c;->h:I

    return-void
.end method

.method static synthetic a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lsa/c;->q:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic b(Lsa/c;)Z
    .locals 0

    iget-boolean p0, p0, Lsa/c;->k:Z

    return p0
.end method

.method static synthetic c(Lsa/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lsa/c;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lsa/c;)I
    .locals 0

    iget p0, p0, Lsa/c;->i:I

    return p0
.end method

.method static synthetic e(Lsa/c;I)I
    .locals 0

    iput p1, p0, Lsa/c;->i:I

    return p1
.end method

.method static synthetic f(Lsa/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lsa/c;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsa/c;->C(Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method

.method static synthetic h(Lsa/c;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/gift/data/AnimFlag;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsa/c;->B(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    return-void
.end method

.method static synthetic i(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;)V
    .locals 0

    invoke-direct {p0, p1}, Lsa/c;->t(Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    return-void
.end method

.method static synthetic j(Lsa/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lsa/c;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic k(Lsa/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lsa/c;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic l(Lsa/c;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic m(Lsa/c;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsa/c;->y(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic n(Lsa/c;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lsa/c;->t:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic o()I
    .locals 1

    sget v0, Lsa/c;->u:I

    return v0
.end method

.method static synthetic p(Lsa/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lsa/c;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q(Lsa/c;)V
    .locals 0

    invoke-direct {p0}, Lsa/c;->u()V

    return-void
.end method

.method public static r(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 4
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Lsa/c;->r(Landroid/view/ViewGroup;)V

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private t(Lcom/guochao/faceshow/gift/data/AnimFlag;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->t:I

    .line 3
    :cond_0
    iget-boolean p1, p0, Lsa/c;->k:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lsa/c;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lsa/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lsa/c;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lsa/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lsa/c;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lsa/c;->y(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lsa/c;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lsa/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lsa/c;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object p1, p0, Lsa/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lsa/c;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object p1, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lsa/c;->y(Landroid/view/ViewGroup;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private u()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lsa/c;->t:Ljava/lang/Long;

    .line 2
    iget-object v0, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lsa/c;->f:Ljava/util/List;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    iget-object v0, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lsa/c;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/gift/data/AnimFlag;

    if-nez v0, :cond_3

    .line 6
    invoke-direct {p0}, Lsa/c;->u()V

    return-void

    .line 7
    :cond_3
    iget-object v3, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lsa/c;->l:Landroid/view/View;

    if-nez v3, :cond_5

    .line 8
    iget v3, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->r:I

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    invoke-direct {p0, v3, v4}, Lsa/c;->w(ZZ)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lsa/c;->l:Landroid/view/View;

    .line 9
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_5
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    sget v4, Lsa/c;->u:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/gift/data/AnimFlag;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 11
    iget-object v5, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_6
    move-object v5, v4

    :goto_1
    iput-object v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_7

    .line 12
    iget-object v3, v3, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    goto :goto_2

    :cond_7
    move-object v3, v4

    :goto_2
    iput-object v3, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->j:J

    .line 14
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    iget-object v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->n:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    sget v5, Lsa/c;->u:I

    invoke-virtual {v3, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    const v5, 0x7f0a0934

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lsa/c;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    const v5, 0x7f0a04bf

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v3, p0, Lsa/c;->m:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v3, :cond_9

    .line 18
    iget-object v3, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressHead()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 19
    iget-object v3, p0, Lsa/c;->m:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarStrokeWidth(I)V

    goto :goto_3

    .line 20
    :cond_8
    iget-object v3, p0, Lsa/c;->m:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarStrokeWidth(I)V

    .line 21
    :goto_3
    iget-object v3, p0, Lsa/c;->m:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 22
    iget-object v3, p0, Lsa/c;->m:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    new-instance v5, Lsa/c$j;

    invoke-direct {v5, p0, v0}, Lsa/c$j;-><init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;

    iget-object v6, p0, Lsa/c;->d:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 25
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v7, p0, Lsa/c;->d:Landroid/content/Context;

    invoke-direct {v6, v7, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 26
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v7

    invoke-virtual {v7}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ar"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 27
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 28
    :cond_a
    iget-object v7, p0, Lsa/c;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 29
    iget-object v6, p0, Lsa/c;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    iget-object v5, p0, Lsa/c;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lsa/c$k;

    invoke-direct {v6, p0}, Lsa/c$k;-><init>(Lsa/c;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 31
    iget v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->r:I

    if-eq v5, v1, :cond_e

    .line 32
    iget-boolean v5, p0, Lsa/c;->k:Z

    if-eqz v5, :cond_c

    .line 33
    iget-boolean v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    if-eqz v5, :cond_b

    .line 34
    iget-object v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getArDressCarSourceV2()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 35
    :cond_b
    iget-object v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getArDressCarSource()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 36
    :cond_c
    iget-boolean v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    if-eqz v5, :cond_d

    .line 37
    iget-object v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarSourceV2()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 38
    :cond_d
    iget-object v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarSource()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_e
    move-object v5, v4

    .line 39
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, " "

    if-eqz v5, :cond_13

    .line 40
    new-instance v5, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v5, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;

    iget-object v6, p0, Lsa/c;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120471

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v5

    invoke-virtual {v5}, Lq7/a;->j()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 43
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 44
    :cond_f
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    const v5, 0x7f0a069f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 45
    iget v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->o:I

    invoke-virtual {v3, v5, v1}, Lcom/guochao/faceshow/aaspring/views/LevelView;->c(IZ)V

    .line 46
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    const v5, 0x7f0a0104

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 47
    iget v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->o:I

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_10

    const/4 v5, 0x0

    .line 48
    :cond_10
    sget-object v6, Lsa/c;->v:[I

    array-length v7, v6

    sub-int/2addr v7, v1

    if-le v5, v7, :cond_11

    .line 49
    array-length v5, v6

    sub-int/2addr v5, v1

    .line 50
    :cond_11
    aget v5, v6, v5

    .line 51
    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 52
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v6

    invoke-virtual {v6}, Lq7/a;->j()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 53
    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->mirror(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 54
    :cond_12
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    iput-boolean v2, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    .line 56
    iput v1, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->t:I

    .line 57
    invoke-direct {p0, v0, v4}, Lsa/c;->C(Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V

    goto/16 :goto_7

    .line 58
    :cond_13
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;

    iget-object v4, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;

    invoke-direct {v1, v6, v2}, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lsa/c;->l:Landroid/view/View;

    const v3, 0x7f0a0342

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/SVGAImageView;

    .line 61
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    const v4, 0x7f0a0e14

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 62
    iget-object v4, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->isVip()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_14

    if-eqz v3, :cond_15

    .line 63
    iget-object v4, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 64
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    :cond_14
    if-eqz v3, :cond_15

    .line 65
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    :cond_15
    :goto_5
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    const v4, 0x7f0a07cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_17

    .line 67
    iget-object v4, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->v:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 68
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    invoke-static {v3}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v4

    iget-object v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/g;

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_6

    .line 70
    :cond_16
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :cond_17
    :goto_6
    iget-object v3, p0, Lsa/c;->l:Landroid/view/View;

    const v4, 0x7f0a0cac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    iget-object v4, p0, Lsa/c;->l:Landroid/view/View;

    const v5, 0x7f0a06d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 73
    iget-object v5, p0, Lsa/c;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    iget-object v6, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    invoke-direct {p0, v6}, Lsa/c;->v(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xf

    if-lt v6, v7, :cond_18

    const/high16 v6, 0x42f00000    # 120.0f

    .line 75
    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 76
    :cond_18
    iget-boolean v5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    if-nez v5, :cond_19

    .line 77
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v2, p0, Lsa/c;->d:Landroid/content/Context;

    const v5, 0x7f010038

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    iget-object v2, p0, Lsa/c;->d:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    :cond_19
    iget-boolean v2, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    if-eqz v2, :cond_1a

    .line 82
    invoke-direct {p0, v0, v1}, Lsa/c;->C(Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V

    goto :goto_7

    .line 83
    :cond_1a
    invoke-direct {p0, v1, v0}, Lsa/c;->B(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    .line 84
    iget-object v2, p0, Lsa/c;->j:Landroid/os/Handler;

    new-instance v3, Lsa/c$b;

    invoke-direct {v3, p0, v0, v1}, Lsa/c$b;-><init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    :goto_7
    return-void
.end method

.method private v(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private w(ZZ)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lsa/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsa/c;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lsa/c;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lsa/c;->b:Ld9/b;

    invoke-interface {v0, p1, p2}, Ld9/b;->a(ZZ)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03b8

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f0a06fe

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3ffb333333333333L    # 1.7

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03b9

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03b7

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private y(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v1, Lsa/c;->u:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/gift/data/AnimFlag;

    .line 5
    iget-boolean v2, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    if-eqz v2, :cond_2

    iget v3, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->t:I

    if-nez v3, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v3, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    .line 7
    iget v2, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->r:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 8
    iget-object v2, p0, Lsa/c;->d:Landroid/content/Context;

    const v3, 0x7f01003b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    goto :goto_0

    .line 9
    :cond_3
    iget-object v2, p0, Lsa/c;->d:Landroid/content/Context;

    const v3, 0x7f01003a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 10
    iget-object p2, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 11
    :cond_5
    iget-object p2, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p2, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 12
    iget-object p2, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    new-instance v2, Lsa/c$f;

    invoke-direct {v2, p0, v1, p1}, Lsa/c$f;-><init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 13
    iget p2, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->c:I

    if-nez p2, :cond_6

    .line 14
    iget-object p2, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->b:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 15
    :cond_6
    iput v0, p0, Lsa/c;->h:I

    :goto_1
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lsa/c;->n:I

    if-nez p5, :cond_0

    .line 2
    new-instance p5, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    .line 3
    :cond_0
    iget-boolean v1, p0, Lsa/c;->k:Z

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "ar"

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getArDressCarSourceV2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getArDressCarSourceV2()Ljava/lang/String;

    move-result-object v5

    .line 6
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7
    iput-boolean v0, p0, Lsa/c;->o:Z

    .line 8
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getArDressCarSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getArDressCarSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 9
    :cond_4
    iput-boolean v3, p0, Lsa/c;->o:Z

    goto :goto_5

    .line 10
    :cond_5
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v2

    goto :goto_2

    :cond_6
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarId()Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_2
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipDressCarUrlV2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v5, v2

    goto :goto_3

    :cond_7
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipDressCarUrlV2()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 12
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 13
    iput-boolean v0, p0, Lsa/c;->o:Z

    .line 14
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipDressCarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipDressCarUrl()Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v5, v2

    goto :goto_5

    .line 15
    :cond_9
    iput-boolean v3, p0, Lsa/c;->o:Z

    .line 16
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x14

    if-eqz v0, :cond_a

    if-ge p4, v2, :cond_a

    return-void

    .line 17
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 18
    iget-boolean v0, p0, Lsa/c;->o:Z

    const-string v4, "Car"

    if-eqz v0, :cond_c

    .line 19
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "V2.svga"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 20
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 21
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lsa/c;->o:Z

    new-instance v6, Lsa/c$h;

    invoke-direct {v6, p0, v1}, Lsa/c$h;-><init>(Lsa/c;Ljava/lang/String;)V

    invoke-static {v5, v0, v1, v4, v6}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLr9/a;)V

    .line 22
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput v3, p0, Lsa/c;->n:I

    if-ge p4, v2, :cond_f

    return-void

    .line 24
    :cond_b
    iput v3, p0, Lsa/c;->n:I

    if-ge p4, v2, :cond_f

    return-void

    .line 25
    :cond_c
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".svga"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 26
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 27
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lsa/c;->o:Z

    new-instance v6, Lsa/c$i;

    invoke-direct {v6, p0, v1}, Lsa/c$i;-><init>(Lsa/c;Ljava/lang/String;)V

    invoke-static {v5, v0, v1, v4, v6}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLr9/a;)V

    .line 28
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressCarId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput v3, p0, Lsa/c;->n:I

    if-ge p4, v2, :cond_f

    return-void

    .line 30
    :cond_d
    iput v3, p0, Lsa/c;->n:I

    if-ge p4, v2, :cond_f

    return-void

    .line 31
    :cond_e
    iput v3, p0, Lsa/c;->n:I

    if-ge p4, v2, :cond_f

    return-void

    .line 32
    :cond_f
    new-instance v0, Lcom/guochao/faceshow/gift/data/AnimFlag;

    invoke-direct {v0}, Lcom/guochao/faceshow/gift/data/AnimFlag;-><init>()V

    .line 33
    iget-boolean v1, p0, Lsa/c;->o:Z

    iput-boolean v1, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    .line 34
    iput-object p3, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->i:Ljava/lang/String;

    .line 35
    iput-object p1, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->d:Ljava/lang/String;

    .line 36
    iput-object p2, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->n:Ljava/lang/String;

    .line 37
    iput p4, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->o:I

    .line 38
    iput-object p5, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 39
    iput-object p6, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->v:Ljava/lang/String;

    .line 40
    iget p1, p0, Lsa/c;->n:I

    iput p1, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->r:I

    .line 41
    iget-object p1, p0, Lsa/c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 42
    iget-object p1, p0, Lsa/c;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 43
    :cond_10
    iget-object p1, p0, Lsa/c;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-direct {p0}, Lsa/c;->u()V

    :goto_6
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget v0, p0, Lsa/c;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsa/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsa/c;->y(Landroid/view/ViewGroup;Z)V

    .line 4
    iget-object v0, p0, Lsa/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsa/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lsa/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lsa/c;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lsa/c;->r(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public z(Ld9/b;)V
    .locals 0

    iput-object p1, p0, Lsa/c;->b:Ld9/b;

    return-void
.end method
