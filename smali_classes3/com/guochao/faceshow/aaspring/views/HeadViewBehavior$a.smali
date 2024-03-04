.class Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final b:Landroid/widget/LinearLayout;

.field c:Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->d:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->b:Landroid/widget/LinearLayout;

    .line 4
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->d:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->a(Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;)Landroid/widget/OverScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->d:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->a(Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->d:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->a(Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->d:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->b:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->b(Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
