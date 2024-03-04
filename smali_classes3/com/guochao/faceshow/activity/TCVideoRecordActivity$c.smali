.class Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/TXUGCRecord$VideoCustomProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectFacePoints([F)V
    .locals 0

    return-void
.end method

.method public onTextureCustomProcess(III)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h5:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->process(III)I

    move-result p1

    return p1
.end method

.method public onTextureDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h5:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->destroyOnGLThread()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setVideoRecordListener(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;Lcom/tencent/ugc/TXUGCRecord;)Lcom/tencent/ugc/TXUGCRecord;

    :cond_1
    return-void
.end method
