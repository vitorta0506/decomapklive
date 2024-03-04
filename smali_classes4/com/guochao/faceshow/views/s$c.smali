.class Lcom/guochao/faceshow/views/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/s;->F(Lcom/guochao/faceshow/views/VideoProgressView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/s;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/s;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/s$c;->a:Lcom/guochao/faceshow/views/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$c;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/s;->e(Lcom/guochao/faceshow/views/s;Z)Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$c;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/views/s;->e(Lcom/guochao/faceshow/views/s;Z)Z

    :goto_0
    return p2
.end method
