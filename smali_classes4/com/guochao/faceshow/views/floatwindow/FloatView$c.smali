.class Lcom/guochao/faceshow/views/floatwindow/FloatView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/floatwindow/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/floatwindow/FloatView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$c;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$c;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->s(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
