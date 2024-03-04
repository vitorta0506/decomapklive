.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->lay_login:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
