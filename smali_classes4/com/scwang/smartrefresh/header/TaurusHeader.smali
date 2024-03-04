.class public Lcom/scwang/smartrefresh/header/TaurusHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;
    }
.end annotation


# static fields
.field protected static t:[Ljava/lang/String;

.field protected static u:[I

.field protected static v:[Ljava/lang/String;

.field protected static w:[I

.field protected static final x:Landroid/view/animation/Interpolator;


# instance fields
.field protected d:Landroid/graphics/drawable/Drawable;

.field protected e:Landroid/graphics/drawable/Drawable;

.field protected f:Landroid/graphics/Matrix;

.field protected g:F

.field protected h:I

.field protected i:Landroid/view/animation/Animation;

.field protected j:Z

.field protected k:F

.field protected l:F

.field protected m:Ljava/util/Random;

.field protected n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Landroid/graphics/Paint;

.field protected p:F

.field protected q:Z

.field protected r:Z

.field protected s:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "m23.01,81.48c-0.21,-0.3 -0.38,-0.83 -0.38,-1.19 0,-0.55 0.24,-0.78 1.5,-1.48 1.78,-0.97 2.62,-1.94 2.24,-2.57 -0.57,-0.93 -1.97,-1.24 -11.64,-2.59 -5.35,-0.74 -10.21,-1.44 -10.82,-1.54l-1.09,-0.18 1.19,-0.91c0.99,-0.76 1.38,-0.91 2.35,-0.91 0.64,0 6.39,0.33 12.79,0.74 6.39,0.41 12.09,0.71 12.65,0.67l1.03,-0.07 -1.24,-2.19C30.18,66.77 15.91,42 15.13,40.68l-0.51,-0.87 4.19,-1.26c2.3,-0.69 4.27,-1.26 4.37,-1.26 0.1,0 5.95,3.85 13,8.55 14.69,9.81 17.1,11.31 19.7,12.31 4.63,1.78 6.45,1.69 12.94,-0.64 13.18,-4.73 25.22,-9.13 25.75,-9.4 0.69,-0.36 3.6,1.33 -24.38,-14.22L50.73,23.07 46.74,16.42 42.75,9.77 43.63,8.89c0.83,-0.83 0.91,-0.86 1.46,-0.52 0.32,0.2 3.72,3.09 7.55,6.44 3.83,3.34 7.21,6.16 7.5,6.27 0.29,0.11 13.6,2.82 29.58,6.03 15.98,3.21 31.86,6.4 35.3,7.1l6.26,1.26 3.22,-1.13c41.63,-14.63 67.88,-23.23 85.38,-28 14.83,-4.04 23.75,-4.75 32.07,-2.57 7.04,1.84 9.87,4.88 7.71,8.27 -1.6,2.5 -4.6,4.63 -10.61,7.54 -5.94,2.88 -10.22,4.46 -25.4,9.41 -8.15,2.66 -16.66,5.72 -39.01,14.02 -66.79,24.82 -88.49,31.25 -121.66,36.07 -14.56,2.11 -24.17,2.95 -34.08,2.95 -5.43,0 -5.52,-0.01 -5.89,-0.54z"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader;->t:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 2
    sput-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader;->u:[I

    const-string v0, "M551.81,1.01A65.42,65.42 0,0 0,504.38 21.5A50.65,50.65 0,0 0,492.4 20A50.65,50.65 0,0 0,441.75 70.65A50.65,50.65 0,0 0,492.4 121.3A50.65,50.65 0,0 0,511.22 117.64A65.42,65.42 0,0 0,517.45 122L586.25,122A65.42,65.42 0,0 0,599.79 110.78A59.79,59.79 0,0 0,607.81 122L696.34,122A59.79,59.79 0,0 0,711.87 81.9A59.79,59.79 0,0 0,652.07 22.11A59.79,59.79 0,0 0,610.93 38.57A65.42,65.42 0,0 0,551.81 1.01zM246.2,1.71A54.87,54.87 0,0 0,195.14 36.64A46.78,46.78 0,0 0,167.77 27.74A46.78,46.78 0,0 0,120.99 74.52A46.78,46.78 0,0 0,167.77 121.3A46.78,46.78 0,0 0,208.92 96.74A54.87,54.87 0,0 0,246.2 111.45A54.87,54.87 0,0 0,268.71 106.54A39.04,39.04 0,0 0,281.09 122L327.6,122A39.04,39.04 0,0 0,343.38 90.7A39.04,39.04 0,0 0,304.34 51.66A39.04,39.04 0,0 0,300.82 51.85A54.87,54.87 0,0 0,246.2 1.71z"

    const-string v1, "m506.71,31.37a53.11,53.11 0,0 0,-53.11 53.11,53.11 53.11,0 0,0 15.55,37.5h75.12a53.11,53.11 0,0 0,1.88 -2.01,28.49 28.49,0 0,0 0.81,2.01h212.96a96.72,96.72 0,0 0,-87.09 -54.85,96.72 96.72,0 0,0 -73.14,33.52 28.49,28.49 0,0 0,-26.74 -18.74,28.49 28.49,0 0,0 -13.16,3.23 53.11,53.11 0,0 0,0.03 -0.66,53.11 53.11,0 0,0 -53.11,-53.11zM206.23,31.81a53.81,53.81 0,0 0,-49.99 34.03,74.91 74.91,0 0,0 -47.45,-17 74.91,74.91 0,0 0,-73.54 60.82,31.3 31.3,0 0,0 -10.17,-1.73 31.3,31.3 0,0 0,-26.09 14.05L300.86,121.98a37.63,37.63 0,0 0,0.2 -3.85,37.63 37.63,0 0,0 -37.63,-37.63 37.63,37.63 0,0 0,-3.65 0.21,53.81 53.81,0 0,0 -53.54,-48.9z"

    const-string v2, "m424.05,36.88a53.46,53.46 0,0 0,-40.89 19.02,53.46 53.46,0 0,0 -1.34,1.76 62.6,62.6 0,0 0,-5.39 -0.27,62.6 62.6,0 0,0 -61.36,50.17 62.6,62.6 0,0 0,-0.53 3.51,15.83 15.83,0 0,0 -10.33,-3.84 15.83,15.83 0,0 0,-8.06 2.23,21.1 21.1,0 0,0 -18.31,-10.67 21.1,21.1 0,0 0,-19.47 12.97,21.81 21.81,0 0,0 -6.56,-1.01 21.81,21.81 0,0 0,-19.09 11.32L522.84,122.07a43.61,43.61 0,0 0,-43.11 -37.35,43.61 43.61,0 0,0 -2.57,0.09 53.46,53.46 0,0 0,-53.11 -47.93zM129.08,38.4a50.29,50.29 0,0 0,-50.29 50.29,50.29 50.29,0 0,0 2.37,15.06 15.48,15.83 0,0 0,-5.87 1.68,15.48 15.83,0 0,0 -0.98,0.58 16.53,16.18 0,0 0,-0.19 -0.21,16.53 16.18,0 0,0 -11.86,-4.91 16.53,16.18 0,0 0,-16.38 14.13,20.05 16.18,0 0,0 -14.97,7.04L223.95,122.07a42.56,42.56 0,0 0,1.14 -9.56,42.56 42.56,0 0,0 -42.56,-42.56 42.56,42.56 0,0 0,-6.58 0.54,50.29 50.29,0 0,0 -0,-0.01 50.29,50.29 0,0 0,-46.88 -32.07zM631.67,82.61a64.01,64.01 0,0 0,-44.9 18.42,26.73 26.73,0 0,0 -10.67,-2.24 26.73,26.73 0,0 0,-22.72 12.71,16.88 16.88,0 0,0 -0.25,-0.12 16.88,16.88 0,0 0,-6.57 -1.33,16.88 16.88,0 0,0 -16.15,12.03h160.36a64.01,64.01 0,0 0,-59.1 -39.46z"

    .line 3
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader;->v:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader;->w:[I

    .line 5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader;->x:Landroid/view/animation/Interpolator;

    return-void

    nop

    :array_0
    .array-data 4
        -0x5538230f    # -3.550281E-13f
        -0x22170c03
        -0x20203
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/TaurusHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/header/TaurusHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->j:Z

    .line 5
    new-instance v0, Lae/b;

    invoke-direct {v0}, Lae/b;-><init>()V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 6
    invoke-virtual {v0, v1}, Lae/b;->a(F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->f:Landroid/graphics/Matrix;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->n:Ljava/util/Map;

    .line 9
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->m:Ljava/util/Random;

    .line 10
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->o:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->o:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v0, v3}, Lae/b;->a(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->o:Landroid/graphics/Paint;

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 15
    new-instance v1, Lcom/scwang/smartrefresh/header/TaurusHeader$a;

    invoke-direct {v1, p0, p0}, Lcom/scwang/smartrefresh/header/TaurusHeader$a;-><init>(Lcom/scwang/smartrefresh/header/TaurusHeader;Landroid/view/View;)V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->i:Landroid/view/animation/Animation;

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 17
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->i:Landroid/view/animation/Animation;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 18
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->i:Landroid/view/animation/Animation;

    sget-object v3, Lcom/scwang/smartrefresh/header/TaurusHeader;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 19
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->i:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 20
    new-instance v1, Lsd/b;

    invoke-direct {v1}, Lsd/b;-><init>()V

    .line 21
    sget-object v3, Lcom/scwang/smartrefresh/header/TaurusHeader;->t:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lsd/b;->g([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x101

    const/16 v4, 0x4f

    const/4 v5, 0x3

    .line 22
    invoke-virtual {v1, v5, v5, v3, v4}, Lsd/b;->c(IIII)V

    .line 23
    :cond_0
    sget-object v3, Lcom/scwang/smartrefresh/header/TaurusHeader;->u:[I

    invoke-virtual {v1, v3}, Lsd/b;->f([I)V

    .line 24
    new-instance v3, Lsd/b;

    invoke-direct {v3}, Lsd/b;-><init>()V

    .line 25
    sget-object v4, Lcom/scwang/smartrefresh/header/TaurusHeader;->v:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lsd/b;->g([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    const/16 v5, 0x2f9

    const/16 v6, 0x79

    .line 26
    invoke-virtual {v3, v2, v4, v5, v6}, Lsd/b;->c(IIII)V

    .line 27
    :cond_1
    sget-object v2, Lcom/scwang/smartrefresh/header/TaurusHeader;->w:[I

    invoke-virtual {v3, v2}, Lsd/b;->f([I)V

    .line 28
    iput-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->d:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x42820000    # 65.0f

    .line 30
    invoke-virtual {v0, v2}, Lae/b;->a(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Lae/b;->a(F)I

    move-result v3

    invoke-virtual {v1, p3, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x43820000    # 260.0f

    invoke-virtual {v0, v2}, Lae/b;->a(F)I

    move-result v2

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {v0, v3}, Lae/b;->a(F)I

    move-result v0

    invoke-virtual {v1, p3, p3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    sget-object v0, Lcom/scwang/smartrefresh/header/R$styleable;->TaurusHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 33
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->TaurusHeader_thPrimaryColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 34
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    const p2, -0xee4401

    .line 35
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    sget-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->THIRD:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v0}, Lcom/scwang/smartrefresh/header/TaurusHeader;->x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3
    :cond_2
    iget v0, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/TaurusHeader;->x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 4
    :cond_4
    iget p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    sget-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FOURTH:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v0}, Lcom/scwang/smartrefresh/header/TaurusHeader;->x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private s(Landroid/graphics/Canvas;II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->f:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->g:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 5
    iput p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    const/high16 p3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    const/high16 v4, 0x41a00000    # 20.0f

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    sub-float/2addr v1, v3

    neg-float v1, v1

    div-float/2addr v1, p3

    float-to-double v9, v1

    .line 6
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double/2addr v5, v7

    double-to-float v1, v5

    mul-float v1, v1, v4

    move v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    int-to-float v5, p2

    mul-float v5, v5, v1

    div-float/2addr v5, p3

    .line 7
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 8
    iget v6, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    int-to-float v6, v6

    div-float/2addr v1, p3

    sub-float/2addr v3, v1

    mul-float v6, v6, v3

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr v6, p3

    .line 9
    iget p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->s:F

    cmpl-float v1, p3, v2

    if-lez v1, :cond_2

    sub-float v1, v2, v6

    mul-float v1, v1, p3

    add-float/2addr v6, v1

    .line 10
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    sub-float/2addr p2, v5

    iget p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->s:F

    mul-float p2, p2, p3

    add-float/2addr v5, p2

    .line 11
    :cond_2
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->j:Z

    if-eqz p2, :cond_6

    .line 12
    sget-object p2, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FIRST:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, p2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 13
    invoke-direct {p0, p2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result p2

    :goto_1
    sub-float/2addr v6, p2

    goto :goto_3

    .line 14
    :cond_3
    sget-object p2, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->SECOND:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, p2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 15
    invoke-direct {p0, p2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result p2

    goto :goto_1

    .line 16
    :cond_4
    sget-object p2, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->THIRD:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, p2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 17
    invoke-direct {p0, p2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result p2

    :goto_2
    add-float/2addr v6, p2

    goto :goto_3

    .line 18
    :cond_5
    sget-object p2, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FOURTH:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, p2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 19
    invoke-direct {p0, p2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result p2

    goto :goto_2

    :cond_6
    :goto_3
    cmpl-float p2, v4, v2

    if-lez p2, :cond_7

    .line 20
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->d:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->d:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    .line 23
    invoke-virtual {v0, v4, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 24
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result p2

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 26
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 28
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private t(Landroid/graphics/Canvas;II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->f:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->g:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iput p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    :cond_0
    iget v3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->g:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpl-float v7, v3, v2

    if-lez v7, :cond_1

    sub-float/2addr v2, v3

    .line 7
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v7, 0x3f000000    # 0.5f

    sub-float v8, v1, v7

    const v9, 0x3f4ccccd    # 0.8f

    cmpl-float v10, v8, v6

    if-lez v10, :cond_2

    div-float/2addr v8, v7

    const v7, 0x3e4ccccc    # 0.19999999f

    mul-float v8, v8, v7

    add-float/2addr v9, v8

    .line 8
    :cond_2
    iget v7, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    int-to-float v8, v7

    mul-float v8, v8, v1

    .line 9
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v7, v1

    int-to-float v1, v7

    cmpl-float v7, v8, v1

    if-lez v7, :cond_3

    sub-float v1, v8, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 10
    :goto_1
    div-int/lit8 p2, p2, 0x2

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr p2, v5

    int-to-float p2, p2

    if-eqz v4, :cond_4

    .line 11
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    :goto_2
    sub-float/2addr v8, v4

    if-eqz v3, :cond_5

    const/high16 v1, 0x40800000    # 4.0f

    div-float v1, v2, v1

    add-float/2addr v1, v9

    goto :goto_3

    :cond_5
    move v1, v9

    :goto_3
    if-eqz v3, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v9

    goto :goto_4

    :cond_6
    move v2, v9

    .line 13
    :goto_4
    iget-boolean v4, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->j:Z

    if-eqz v4, :cond_b

    if-nez v3, :cond_b

    .line 14
    sget-object v2, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FIRST:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x42a00000    # 80.0f

    if-eqz v3, :cond_7

    .line 15
    invoke-direct {p0, v2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v1

    :goto_5
    div-float/2addr v1, v5

    div-float/2addr v1, v4

    sub-float/2addr v9, v1

    :goto_6
    move v1, v9

    goto :goto_8

    .line 16
    :cond_7
    sget-object v2, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->SECOND:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 17
    invoke-direct {p0, v2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v1

    goto :goto_5

    .line 18
    :cond_8
    sget-object v2, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->THIRD:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    if-eqz v3, :cond_9

    .line 19
    invoke-direct {p0, v2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v1

    :goto_7
    div-float/2addr v1, v5

    div-float/2addr v1, v4

    add-float/2addr v9, v1

    goto :goto_6

    .line 20
    :cond_9
    sget-object v2, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FOURTH:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 21
    invoke-direct {p0, v2}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v1

    goto :goto_7

    :cond_a
    :goto_8
    move v2, v1

    .line 22
    :cond_b
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 23
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v1, v8

    add-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    cmpg-float v1, v1, p3

    if-gez v1, :cond_c

    .line 24
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v2, v1

    sub-float v8, p3, v2

    .line 25
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result p3

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    invoke-virtual {p1, p2, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 29
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private u(Landroid/graphics/Canvas;II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->f:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    iget v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->g:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iput p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v5, v2, v4

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-lez v8, :cond_1

    div-float/2addr v5, v4

    const v4, 0x3ecccccc    # 0.39999998f

    mul-float v5, v5, v4

    add-float/2addr v6, v5

    .line 7
    :cond_1
    iget v4, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v2

    mul-float v4, v4, v3

    .line 8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    int-to-float p2, p2

    .line 10
    iget-boolean v3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->j:Z

    if-eqz v3, :cond_5

    .line 11
    sget-object v3, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FIRST:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result v5

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v5, :cond_2

    .line 12
    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v5

    mul-float v5, v5, v9

    div-float/2addr v5, v8

    sub-float/2addr v2, v5

    .line 13
    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v3

    :goto_0
    div-float/2addr v3, v9

    :goto_1
    add-float/2addr p2, v3

    goto :goto_2

    .line 14
    :cond_2
    sget-object v3, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->SECOND:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v5

    mul-float v5, v5, v9

    div-float/2addr v5, v8

    sub-float/2addr v2, v5

    .line 16
    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v3

    goto :goto_0

    .line 17
    :cond_3
    sget-object v3, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->THIRD:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 18
    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v2, v5

    .line 19
    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v3

    mul-float v3, v3, v9

    goto :goto_0

    .line 20
    :cond_4
    sget-object v3, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FOURTH:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->r(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v5

    div-float/2addr v5, v9

    sub-float/2addr v2, v5

    .line 22
    invoke-direct {p0, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F

    move-result v3

    mul-float v3, v3, v9

    div-float/2addr v3, v8

    goto :goto_1

    .line 23
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    add-float/2addr v3, v4

    add-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    cmpg-float v3, v3, p3

    if-gez v3, :cond_6

    .line 24
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    sub-float v3, p3, v3

    goto :goto_3

    :cond_6
    move v3, v4

    .line 25
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    cmpg-float v5, v5, p3

    if-gez v5, :cond_7

    .line 26
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v6

    sub-float v4, p3, v4

    .line 27
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result p3

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/16 v2, 0x64

    .line 32
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 33
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v3, 0xff

    .line 34
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 35
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, v6, v6, v7, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 40
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 41
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 43
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private v(Landroid/graphics/Canvas;FFI)V
    .locals 6

    int-to-float p4, p4

    add-float v0, p4, p3

    const/high16 v1, 0x41500000    # 13.0f

    div-float/2addr v0, v1

    .line 1
    iget v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    .line 2
    iget v3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->l:F

    sub-float/2addr v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 3
    iput-boolean v4, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->r:Z

    sub-float v2, v1, v2

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v4, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->q:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->r:Z

    :goto_0
    mul-float v2, v2, v0

    sub-float/2addr p4, v2

    add-float/2addr p4, p3

    .line 6
    iget p3, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->p:F

    sub-float v1, p4, p3

    add-float v3, v1, p3

    .line 7
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->o:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private w(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)F
    .locals 2

    .line 1
    sget-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    sget-object p1, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->THIRD:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/TaurusHeader;->x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    sget-object v1, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FOURTH:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v1}, Lcom/scwang/smartrefresh/header/TaurusHeader;->x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    sub-float/2addr p1, v0

    return p1

    .line 3
    :cond_1
    iget p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    sget-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->SECOND:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, v0}, Lcom/scwang/smartrefresh/header/TaurusHeader;->x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FOURTH:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/TaurusHeader;->x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/TaurusHeader;->x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0

    .line 5
    :cond_3
    iget p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    return p1
.end method

.method private x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/scwang/smartrefresh/header/TaurusHeader$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x14

    return p1

    .line 2
    :cond_1
    sget-object p1, Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;->FOURTH:Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;

    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/TaurusHeader;->x(Lcom/scwang/smartrefresh/header/TaurusHeader$AnimationPart;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    return p1

    :cond_2
    const/16 p1, 0x28

    return p1
.end method

.method private y(II)F
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->m:Ljava/util/Random;

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    int-to-float p1, p2

    return p1
.end method


# virtual methods
.method public c(Lwd/j;Z)I
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/scwang/smartrefresh/header/TaurusHeader$b;

    invoke-direct {p1, p0, p0}, Lcom/scwang/smartrefresh/header/TaurusHeader$b;-><init>(Lcom/scwang/smartrefresh/header/TaurusHeader;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0xc8

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->j:Z

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->j:Z

    if-eqz v2, :cond_7

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    .line 5
    iget v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double v4, v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/16 v3, 0x3e8

    const/16 v4, 0x7d0

    .line 6
    invoke-direct {p0, v3, v4}, Lcom/scwang/smartrefresh/header/TaurusHeader;->y(II)F

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    const/4 v2, 0x0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    cmpl-float v5, v4, v2

    if-nez v5, :cond_2

    .line 8
    iget v5, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    int-to-double v8, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double v10, v10, v6

    div-double/2addr v8, v10

    double-to-float v5, v8

    .line 9
    iget-object v8, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->n:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v9, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    div-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_2
    move v2, v4

    .line 11
    :cond_3
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->n:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/scwang/smartrefresh/header/TaurusHeader;->v(Landroid/graphics/Canvas;FFI)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lt v2, v3, :cond_5

    .line 14
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, p1, v4, v3, v0}, Lcom/scwang/smartrefresh/header/TaurusHeader;->v(Landroid/graphics/Canvas;FFI)V

    goto :goto_2

    .line 16
    :cond_5
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->r:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->q:Z

    if-eqz v2, :cond_6

    .line 17
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->q:Z

    const/16 v2, 0x32

    const/16 v3, 0x12c

    .line 19
    invoke-direct {p0, v2, v3}, Lcom/scwang/smartrefresh/header/TaurusHeader;->y(II)F

    move-result v2

    iput v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->p:F

    .line 20
    :cond_6
    iget v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->k:F

    iput v2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->l:F

    .line 21
    :cond_7
    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/TaurusHeader;->s(Landroid/graphics/Canvas;II)V

    .line 22
    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/TaurusHeader;->u(Landroid/graphics/Canvas;II)V

    .line 23
    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/TaurusHeader;->t(Landroid/graphics/Canvas;II)V

    .line 24
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public k(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->j:Z

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->s:F

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->i:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public o(ZFIII)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->g:F

    .line 2
    iput p4, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->h:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/header/TaurusHeader;->s:F

    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
