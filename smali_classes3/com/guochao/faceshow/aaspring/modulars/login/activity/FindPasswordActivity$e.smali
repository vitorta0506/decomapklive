.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;-><init>()V

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->o:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->o:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "RecaptchaDialogFragment"

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;Ljava/lang/String;Z)V

    return-void
.end method
