.class Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$1;->lambda$onGlobalLayout$0()V

    return-void
.end method

.method private synthetic lambda$onGlobalLayout$0()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->mWindowWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->access$000(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;Landroid/view/Window;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->mDelay:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/p;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/p;-><init>(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->mWindowWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->access$000(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;Landroid/view/Window;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->mWindowWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->access$000(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;Landroid/view/Window;)V

    :goto_0
    return-void
.end method
