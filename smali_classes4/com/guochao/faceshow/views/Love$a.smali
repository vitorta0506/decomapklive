.class Lcom/guochao/faceshow/views/Love$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/Love;->a(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/guochao/faceshow/views/Love;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/Love;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/Love$a;->b:Lcom/guochao/faceshow/views/Love;

    iput-object p2, p0, Lcom/guochao/faceshow/views/Love$a;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/Love$a;->b:Lcom/guochao/faceshow/views/Love;

    iget-object v0, p0, Lcom/guochao/faceshow/views/Love$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method
