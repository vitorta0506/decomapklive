.class Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$c;->a:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$c;->a:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->g(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)V

    return-void
.end method
