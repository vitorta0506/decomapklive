.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/view/a;->a:Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/view/a;->a:Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->a(Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
