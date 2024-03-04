.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->onProcessComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

.field final synthetic b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;->a:Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S1()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;->a:Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    iget v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->k0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->l0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Z)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    const-string v1, "\u9519\u8bef"

    const-string v3, "\u53d6\u6d88"

    invoke-static {v1, v0, v2, v3, v3}, Lcom/guochao/faceshow/views/TCConfirmDialog;->Q1(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/views/TCConfirmDialog;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 8
    new-instance v1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s$a;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/TCConfirmDialog;->S1(Lcom/guochao/faceshow/views/TCConfirmDialog$c;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/views/TCConfirmDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
