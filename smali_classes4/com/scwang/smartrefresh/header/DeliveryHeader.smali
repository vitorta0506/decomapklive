.class public Lcom/scwang/smartrefresh/header/DeliveryHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# static fields
.field protected static m:[Ljava/lang/String;

.field protected static n:[I

.field protected static o:[Ljava/lang/String;

.field protected static p:[I

.field protected static q:[Ljava/lang/String;

.field protected static r:[I


# instance fields
.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:F

.field protected i:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected j:Landroid/graphics/drawable/Drawable;

.field protected k:Landroid/graphics/drawable/Drawable;

.field protected l:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "M113.91,328.86 L119.02,331.02 134.86,359.02 133.99,359.02ZM2.18,144.52c-3.67,-76.84 49.96,-122.23 96.3,-134.98 6.03,0.21 7.57,0.59 13.23,3.9 0.19,1.7 0.25,2.17 -0.41,3.98 -47.88,37.64 -55.13,79.65 -68.07,137.22C37.56,194.8 16.18,191.4 2.18,144.52Z"

    const-string v1, "m133.99,359.02 l-0.71,-26.66 2.6,0.26 -1.02,26.4zM119.02,331.02c-3.39,-0.99 -8.53,-3.03 -8.72,-6.61 0,-0.81 -2.02,-3.63 -4.49,-6.27C88.05,299.71 7.29,218.46 2.18,144.52c17.67,43.57 33.35,45.33 41.05,10.12 0.13,-70.78 33.78,-125.48 68.07,-137.22 2.34,3.33 4.11,4.81 8.14,7.8 -22.02,65.69 -23.25,84.11 -24.14,150.23 -8.68,29.57 -37.44,32.81 -52.07,-20.81 14.12,64.06 31.66,101.57 60.64,147.13 6.2,8.38 14.74,18.4 15.15,29.25zM98.48,9.54c4.59,-1.5 17.8,-4.6 33.87,-5.07 0.95,0.95 1.38,1.91 1.14,2.91 -8.81,1.34 -16.36,3.1 -21.78,6.06 -2.53,-1.27 -7.82,-3.26 -13.23,-3.9z"

    const-string v2, "m119.02,331.02c-1.29,-7.57 -4.22,-12.31 -6.54,-15.79 -36.86,-54.89 -63.48,-98.79 -69.25,-160.59 19.89,45.9 41.27,48.65 52.07,20.81 -1.95,-52.55 -8.04,-91.2 24.14,-150.23 10.47,-0.28 16.85,0.17 30.66,-0.34 40.19,60.54 24.92,135.95 22.16,149.57 -13.9,53.18 -66.91,34.12 -76.96,1 11.54,50.55 20.28,89.27 30,135.97 4.12,10.03 5.37,10.37 5.06,21.35 -2.82,-0.22 -8.22,-1.01 -11.35,-1.75z"

    const-string v3, "m172.27,174.45c4.91,-51.6 -1.8,-105.99 -22.16,-149.57 2.51,-3.42 3.25,-4.36 6.59,-6.04 47.91,22.5 77.5,62.66 68.9,139.94 -16.53,49.7 -45.39,52.78 -53.33,15.68zM154.36,13.39c-6.65,-2.73 -11.65,-4.27 -20.87,-6.01 -0.25,-1.02 -0.71,-2.21 -1.14,-2.91 16.31,-0.22 27.58,2.29 37.27,4.82 -5.49,0.42 -11.39,1.87 -15.26,4.11z"

    const-string v4, "m133.99,359.02 l14.98,-28.13 2.24,-0.75 -16.34,28.88zM141.15,332.65c0.01,-11.71 2.3,-14.29 4.13,-21.52 11.82,-46.68 16.09,-77.45 26.98,-136.68 12.18,38.55 37.7,23.31 53.33,-15.68 -4.01,53.72 -43.68,121.28 -68.8,155.25 -6.17,9.5 -8.27,16.22 -5.59,16.12 -3.69,1.47 -6.24,2.05 -10.05,2.51z"

    const-string v5, "m225.59,158.77c1.61,-52.44 -22.26,-117.1 -68.9,-139.94 -1.48,-2.24 -1.63,-2.16 -2.34,-5.44 3.7,-3.42 9.42,-4.82 15.26,-4.11 48.59,9.81 103.07,66.75 96.62,132.26 -9.7,45.68 -35.45,51.78 -40.64,17.24z"

    const-string v6, "m156.48,313.99c32.9,-59.38 53.82,-87.19 69.12,-155.22 12.23,38.4 28.73,22.32 40.64,-17.24 -2.11,50.59 -43.12,112.84 -99.62,171.38 -4.57,4.73 -8.31,9.42 -8.31,10.4 -0,2.28 -3.52,5.43 -7.1,6.82 -4.65,0.73 2.08,-12.86 5.27,-16.15z"

    const-string v7, "M130.37,332.77C129.51,321.51 128.56,320.77 125.3,311.42 113.97,281.37 101.34,222.24 95.3,175.45c16.48,38.98 60.02,33.39 76.96,-1 -5.91,58.92 -10.85,88.45 -27.42,138.74 -1.67,6.75 -2.67,11.63 -3.7,19.46 -2.94,0.45 -6.48,0.45 -10.78,0.12zM119.44,25.22c-3.52,-1.25 -6.98,-3.72 -8.14,-7.8 -0.44,-1.53 -0.24,-2.79 0.41,-3.98 2.48,-4.55 14.53,-6.26 21.78,-6.06 5.29,0.15 14.87,0.72 20.87,6.01 1.82,1.61 2.74,3.95 2.34,5.44 -0.76,2.83 -4.21,5.19 -6.59,6.04 -7.49,2.68 -22.62,3.2 -30.66,0.34z"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->m:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->n:[I

    const-string v0, "M63,0.1A22.6,22.4 0,0 0,42.1 14.2,17.3 17.3,0 0,0 30.9,10.2 17.3,17.3 0,0 0,13.7 25.8,8.8 8.8,0 0,0 8.7,24.2 8.8,8.8 0,0 0,0 32h99a7.9,7.9 0,0 0,0 -0.6,7.9 7.9,0 0,0 -7.9,-7.9 7.9,7.9 0,0 0,-5.8 2.6,22.6 22.4,0 0,0 0.3,-3.6A22.6,22.4 0,0 0,63 0.1Z"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->o:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 4
    sput-object v0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->p:[I

    const-string v0, "M0,17.5 L3.1,29.8 2.9,76.4 47.5,93 92.8,76.2V29.9L94.9,18.1 47.4,0.5Z"

    const-string v1, "M3.1,29.8 L47.8,46.4 47.5,93 2.9,76.4ZM0,17.5 L47.9,35.4 47.8,46.4 0.2,28.8Z"

    const-string v2, "m56.5,17.8c0,2.1 -3.8,3.8 -8.5,3.8 -4.7,0 -8.5,-1.7 -8.5,-3.8 0,-2.1 3.8,-3.8 8.5,-3.8 4.7,0 8.5,1.7 8.5,3.8zM3.1,29.8 L3.1,34.7l44.7,16.9 0,-5.1z"

    const-string v3, "M47.9,35.4 L47.5,93 92.8,76.2V29.9l2.2,-0.8 0,-10.9z"

    const-string v4, "M82.6,80 L92.8,62.4 92.8,76.2ZM47.6,79.8 L59.8,88.4 47.5,93ZM47.8,46.4 L92.8,29.9 92.8,34.2 47.8,51.6Z"

    .line 5
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->q:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_1

    sput-object v0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->r:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x6d2015
        -0x922f17
        -0xb03c19
        -0xd0491a
        -0xda5622
        -0xee541c
        -0xf16428
        -0xbf481f
    .end array-data

    :array_1
    .array-data 4
        -0x74eb9
        -0xd68c4
        -0x127fd0
        -0x13faf
        -0x852b7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/DeliveryHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/header/DeliveryHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/high16 p1, 0x43160000    # 150.0f

    .line 5
    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 6
    new-instance p1, Lsd/b;

    invoke-direct {p1}, Lsd/b;-><init>()V

    .line 7
    sget-object p2, Lcom/scwang/smartrefresh/header/DeliveryHeader;->o:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lsd/b;->g([Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/16 p2, 0x63

    const/16 v0, 0x20

    .line 8
    invoke-virtual {p1, p3, p3, p2, v0}, Lsd/b;->c(IIII)V

    .line 9
    :cond_0
    sget-object p2, Lcom/scwang/smartrefresh/header/DeliveryHeader;->p:[I

    invoke-virtual {p1, p2}, Lsd/b;->f([I)V

    const/high16 p2, 0x41a00000    # 20.0f

    .line 10
    invoke-static {p2}, Lae/b;->b(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lsd/b;->h(I)V

    .line 11
    new-instance p2, Lsd/b;

    invoke-direct {p2}, Lsd/b;-><init>()V

    .line 12
    sget-object v0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->m:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lsd/b;->g([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/16 v2, 0x109

    const/16 v3, 0x163

    .line 13
    invoke-virtual {p2, v0, v1, v2, v3}, Lsd/b;->c(IIII)V

    .line 14
    :cond_1
    sget-object v0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->n:[I

    invoke-virtual {p2, v0}, Lsd/b;->f([I)V

    const/high16 v0, 0x43480000    # 200.0f

    .line 15
    invoke-static {v0}, Lae/b;->b(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lsd/b;->i(I)V

    .line 16
    new-instance v0, Lsd/b;

    invoke-direct {v0}, Lsd/b;-><init>()V

    .line 17
    sget-object v1, Lcom/scwang/smartrefresh/header/DeliveryHeader;->q:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsd/b;->g([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    const/16 v2, 0x5f

    const/16 v3, 0x5c

    .line 18
    invoke-virtual {v0, p3, v1, v2, v3}, Lsd/b;->c(IIII)V

    .line 19
    :cond_2
    sget-object p3, Lcom/scwang/smartrefresh/header/DeliveryHeader;->r:[I

    invoke-virtual {v0, p3}, Lsd/b;->f([I)V

    const/high16 p3, 0x42480000    # 50.0f

    .line 20
    invoke-static {p3}, Lae/b;->b(F)I

    move-result p3

    invoke-virtual {v0, p3}, Lsd/b;->i(I)V

    .line 21
    iput-object v0, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->l:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->k:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 25
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->i:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/high16 p1, 0x42c80000    # 100.0f

    .line 26
    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->h:F

    .line 27
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40600000    # 3.5f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->d:I

    .line 28
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->e:I

    .line 29
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->f:I

    :cond_3
    return-void
.end method

.method private r(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->d:I

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lae/b;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->d:I

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->e:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lae/b;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->e:I

    .line 3
    iget v0, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->f:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lae/b;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->f:I

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 5
    iget v1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->d:I

    add-int/2addr p1, v0

    if-le v1, p1, :cond_0

    neg-int v1, v0

    .line 6
    iput v1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->d:I

    .line 7
    :cond_0
    iget v1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->e:I

    if-le v1, p1, :cond_1

    neg-int v1, v0

    .line 8
    iput v1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->e:I

    .line 9
    :cond_1
    iget v1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->f:I

    if-le v1, p1, :cond_2

    neg-int p1, v0

    .line 10
    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->f:I

    .line 11
    :cond_2
    iget p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->h:F

    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->h:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/DeliveryHeader;->k(Lwd/j;II)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget v3, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->g:I

    div-int/lit8 v3, v3, 0xd

    int-to-double v3, v3

    iget v5, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->h:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-int v3, v3

    .line 6
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->i:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v4, v5, :cond_0

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v6, :cond_1

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v6, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->d:I

    iget v7, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->g:I

    div-int/lit8 v7, v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 8
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v6, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->e:I

    iget v7, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->g:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v6, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->f:I

    iget v7, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->g:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 12
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 13
    iget v6, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->h:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v4

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v7, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->g:I

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v4, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 14
    invoke-direct {p0, v0}, Lcom/scwang/smartrefresh/header/DeliveryHeader;->r(I)V

    .line 15
    :cond_1
    iget v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->g:I

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v1, v6

    add-int/2addr v1, v3

    .line 16
    div-int/lit8 v4, v4, 0x2

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v4, v3

    add-int/2addr v4, v1

    iget v3, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->g:I

    div-int/lit8 v3, v3, 0x2

    iget-object v6, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->l:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->h:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v6, v6, v7

    invoke-static {v6}, Lae/b;->b(F)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v4, v3

    .line 18
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    div-int/lit8 v0, v0, 0x2

    iget-object v6, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget-object v8, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    sub-int/2addr v4, v8

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 19
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 20
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->i:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v3, v5, :cond_2

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v3, v4, :cond_3

    .line 21
    :cond_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 22
    iget v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->g:I

    sub-int/2addr v1, v4

    iget v5, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->h:F

    mul-float v5, v5, v7

    invoke-static {v5}, Lae/b;->b(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v1, v4

    .line 23
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 24
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 26
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->i:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 2
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->h:F

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->f:I

    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->e:I

    iput p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->d:I

    :cond_0
    return-void
.end method

.method public g(Lwd/i;II)V
    .locals 0
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput p2, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->g:I

    return-void
.end method

.method public k(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->i:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->l:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public o(ZFIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->i:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->l:Landroid/graphics/drawable/Drawable;

    const/high16 p3, 0x437f0000    # 255.0f

    const/4 p4, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float/2addr p2, p5

    invoke-static {p4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float/2addr p5, p2

    mul-float p5, p5, p3

    float-to-int p2, p5

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DeliveryHeader;->j:Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Lsd/b;

    if-eqz v3, :cond_0

    .line 4
    check-cast v1, Lsd/b;

    new-array v3, v2, [I

    aget p1, p1, v2

    aput p1, v3, v0

    invoke-virtual {v1, v3}, Lsd/b;->f([I)V

    :cond_0
    return-void
.end method
