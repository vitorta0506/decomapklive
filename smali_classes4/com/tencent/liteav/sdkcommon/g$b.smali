.class final Lcom/tencent/liteav/sdkcommon/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/sdkcommon/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/sdkcommon/g;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/sdkcommon/g;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/liteav/sdkcommon/g$b;-><init>(Lcom/tencent/liteav/sdkcommon/g;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 4
    iget v2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->b:I

    sub-int v2, v0, v2

    .line 5
    iget v3, p0, Lcom/tencent/liteav/sdkcommon/g$b;->c:I

    sub-int v3, p2, v3

    .line 6
    iget-object v4, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 7
    iget-object v5, v4, Lcom/tencent/liteav/sdkcommon/g;->d:Landroid/view/WindowManager$LayoutParams;

    .line 8
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v6, v2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 9
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v3

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 10
    iput v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->b:I

    .line 11
    iput p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->c:I

    if-gez v6, :cond_1

    .line 12
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    if-gez v2, :cond_2

    .line 13
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 14
    :cond_2
    iget p2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 15
    iget-object v0, v4, Lcom/tencent/liteav/sdkcommon/g;->o:Landroid/graphics/Rect;

    .line 16
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int v2, p2, v0

    .line 17
    iget-object v3, v4, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    .line 18
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v6, :cond_3

    sub-int/2addr v6, p2

    .line 19
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 20
    :cond_3
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 21
    :goto_0
    iget p2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/lit8 v0, p2, 0x64

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_4

    sub-int/2addr v2, p2

    .line 22
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    const/16 p2, 0x64

    .line 23
    iput p2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 24
    :goto_1
    iget-object p2, v4, Lcom/tencent/liteav/sdkcommon/g;->c:Landroid/view/WindowManager;

    .line 25
    invoke-interface {p2, p1, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 27
    iget-object v0, p2, Lcom/tencent/liteav/sdkcommon/g;->e:Landroid/view/WindowManager$LayoutParams;

    .line 28
    iget-object v2, p2, Lcom/tencent/liteav/sdkcommon/g;->d:Landroid/view/WindowManager$LayoutParams;

    .line 29
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 30
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 31
    iget-object v2, p2, Lcom/tencent/liteav/sdkcommon/g;->o:Landroid/graphics/Rect;

    .line 32
    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int v6, v3, v5

    .line 33
    iget-object v7, p2, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    .line 34
    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v6, v8, :cond_5

    sub-int/2addr v8, v3

    .line 35
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    .line 36
    :cond_5
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    :goto_2
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v3, v4, v2

    .line 38
    iget v5, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v5, :cond_6

    sub-int/2addr v5, v4

    .line 39
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3

    .line 40
    :cond_6
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    :goto_3
    iget-object v2, p2, Lcom/tencent/liteav/sdkcommon/g;->c:Landroid/view/WindowManager;

    .line 42
    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->g:Landroid/view/View;

    .line 43
    invoke-interface {v2, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 44
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->b:I

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->c:I

    .line 46
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return v1
.end method
