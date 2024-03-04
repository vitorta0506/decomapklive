.class public Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "sample_KeyboardHeightProvider"


# instance fields
.field private activity:Landroid/app/Activity;

.field private keyboardLandscapeHeight:I

.field private keyboardPortraitHeight:I

.field private observer:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private parentView:Landroid/view/View;

.field private popupView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    .line 4
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    .line 5
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/16 p1, 0x15

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 10
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->parentView:Landroid/view/View;

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 14
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider$1;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->handleOnGlobalLayout()V

    return-void
.end method

.method private getScreenOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private handleOnGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenRealHeight(Landroid/app/Activity;)I

    move-result v3

    .line 4
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->getScreenOrientation()I

    move-result v5

    .line 7
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 8
    invoke-direct {p0, v1, v5, v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->notifyKeyboardHeightChanged(III)V

    goto :goto_2

    :cond_2
    if-ne v5, v2, :cond_3

    .line 9
    iput v3, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->keyboardPortraitHeight:I

    .line 10
    invoke-direct {p0, v3, v5, v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->notifyKeyboardHeightChanged(III)V

    goto :goto_2

    .line 11
    :cond_3
    iput v3, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->keyboardLandscapeHeight:I

    .line 12
    invoke-direct {p0, v3, v5, v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->notifyKeyboardHeightChanged(III)V

    :goto_2
    return-void
.end method

.method private notifyKeyboardHeightChanged(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->observer:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;->onKeyboardHeightChanged(III)V

    :cond_0
    return-void
.end method

.method private setPopupWindowTouchModal(Landroid/widget/PopupWindow;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->observer:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->observer:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->parentView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
