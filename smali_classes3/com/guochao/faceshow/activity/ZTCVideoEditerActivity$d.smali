.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/TCReversalSeekBar$a;


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

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$d;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$d;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;F)F

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$d;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->A0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/tencent/ugc/TXVideoEditer;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$d;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->u0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setVideoVolume(F)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$d;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->A0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/tencent/ugc/TXVideoEditer;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$d;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setBGMVolume(F)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
