.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->f2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->sendTip:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroid/view/View;)V

    return-void
.end method
