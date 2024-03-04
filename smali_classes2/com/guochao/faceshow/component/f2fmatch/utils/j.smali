.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/j;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/j;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/j;->c:Landroid/view/View;

    iput p4, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/j;->d:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/j;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/j;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/j;->c:Landroid/view/View;

    iget v3, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/j;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
