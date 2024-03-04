.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->H2(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->L:I

    return-void
.end method
