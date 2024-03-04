.class final Lcom/guochao/faceshow/aaspring/views/loopView/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/b;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/b;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {p1, p4}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->k(F)V

    const/4 p1, 0x1

    return p1
.end method
