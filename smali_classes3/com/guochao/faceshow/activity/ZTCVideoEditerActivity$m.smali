.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;
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

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$m;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFinishedWrapper()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$m;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d2()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$m;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->X0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$m;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a2(JJ)V

    return-void
.end method

.method public onPreviewProgressWrapper(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$m;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I

    return-void
.end method
