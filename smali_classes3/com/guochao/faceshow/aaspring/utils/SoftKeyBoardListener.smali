.class public Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    }
.end annotation


# instance fields
.field public mDelay:Z

.field mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mWindowWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private onSoftKeyBoardChangeListener:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

.field private rootView:Landroid/view/View;

.field rootViewVisibleHeight:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;-><init>(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->mDelay:Z

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->mWindowWeakReference:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->viewHeightChange(Landroid/view/Window;)V

    return-void
.end method

.method public static setListener(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->setOnSoftKeyBoardChangeListener(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    return-object v0
.end method

.method public static setListener(Landroid/view/Window;Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;-><init>(Landroid/view/Window;)V

    .line 4
    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->setOnSoftKeyBoardChangeListener(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    return-void
.end method

.method private setOnSoftKeyBoardChangeListener(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    return-void
.end method

.method private viewHeightChange(Landroid/view/Window;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    if-nez v0, :cond_1

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    sub-int v1, v0, p1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_4

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    if-eqz v1, :cond_3

    sub-int/2addr v0, p1

    .line 7
    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardShow(I)V

    .line 8
    :cond_3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    return-void

    :cond_4
    sub-int v1, p1, v0

    if-le v1, v2, :cond_6

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    if-eqz v1, :cond_5

    sub-int v0, p1, v0

    .line 10
    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide(I)V

    .line 11
    :cond_5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    :cond_6
    return-void
.end method
