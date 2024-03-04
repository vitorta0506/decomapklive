.class Lcom/guochao/faceshow/views/DecorateHeadView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/DecorateHeadView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/DecorateHeadView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/DecorateHeadView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/DecorateHeadView$a;->a:Lcom/guochao/faceshow/views/DecorateHeadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/DecorateHeadView$a;->a:Lcom/guochao/faceshow/views/DecorateHeadView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/DecorateHeadView$a;->a:Lcom/guochao/faceshow/views/DecorateHeadView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/views/DecorateHeadView;->a(Lcom/guochao/faceshow/views/DecorateHeadView;I)V

    return-void
.end method
