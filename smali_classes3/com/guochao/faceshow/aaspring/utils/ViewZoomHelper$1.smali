.class Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startZoom(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->access$002(Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->access$002(Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
