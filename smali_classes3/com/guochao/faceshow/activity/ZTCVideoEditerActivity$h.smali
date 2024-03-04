.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$h;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$h;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$h;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$h;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f0609

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$h;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f0608

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$h;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->G0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)V

    return-void
.end method
