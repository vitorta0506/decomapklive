.class public Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_COUNT:I = 0x2

.field private static count:I

.field static last:I

.field static lastDown:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->startAnimation(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$108()I
    .locals 2

    sget v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->count:I

    return v0
.end method

.method public static start(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 7

    const-string v6, "first_Main_v2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->start(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;Ljava/lang/String;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    .line 2
    invoke-static {p6, v0}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getSetting(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p6, v0}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->setSetting(Ljava/lang/String;Z)V

    .line 4
    sput v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->count:I

    .line 5
    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 6
    new-instance p6, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;

    move-object v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;-><init>(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p3, p6, p0, p1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static startAnimation(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 16

    move-object/from16 v9, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 1
    sget v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    move-object/from16 v10, p5

    .line 2
    invoke-interface {v10, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v11, p2

    .line 4
    invoke-virtual {v11, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    const-string v0, "first_Main_v2"

    .line 5
    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->setSetting(Ljava/lang/String;Z)V

    return-void

    :cond_0
    move-object/from16 v11, p2

    move-object/from16 v10, p5

    .line 6
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v0

    const-wide v12, 0x3fd999999999999aL    # 0.4

    mul-double v4, v4, v12

    double-to-int v0, v4

    new-array v4, v2, [I

    aput v0, v4, v3

    .line 10
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v12

    new-array v1, v1, [I

    aput v0, v1, v3

    aput v3, v1, v2

    .line 11
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v13

    const-wide/16 v0, 0x320

    .line 12
    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 13
    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x4b0

    .line 14
    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$2;

    invoke-direct {v0, v7, v8}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$2;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$3;

    invoke-direct {v0, v7, v8}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$3;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    new-instance v14, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$4;

    invoke-direct {v14, v8}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$4;-><init>(Landroid/view/View;)V

    .line 20
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;

    invoke-direct {v0, v8, v14, v13}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;-><init>(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V

    .line 21
    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    new-instance v15, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;

    move-object v0, v15

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 24
    new-instance v15, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;

    move-object v0, v15

    move-object v1, v12

    move-object v2, v13

    move-object/from16 v3, p4

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;-><init>(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Ljava/lang/Runnable;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
