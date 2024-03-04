.class public final synthetic Lcom/guochao/faceshow/userhomepage/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/b;->a:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/b;->a:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;->b(Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method
