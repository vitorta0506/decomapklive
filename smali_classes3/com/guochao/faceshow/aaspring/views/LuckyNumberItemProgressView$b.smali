.class Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$b;->a:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$b;->a:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->a(Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;Z)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$b;->a:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$b;->a:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->a(Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;Z)Z

    return-void
.end method
