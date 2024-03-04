.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->onGenerateComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;->a:Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;->a:Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    iget v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Y0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iget-object v0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0, v2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I

    return-void
.end method
