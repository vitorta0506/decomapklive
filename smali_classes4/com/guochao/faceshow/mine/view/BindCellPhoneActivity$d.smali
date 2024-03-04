.class Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$d;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$d;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;-><init>()V

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->k:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$d;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->k:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "RecaptchaDialogFragment"

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$d;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->k0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->l0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method
