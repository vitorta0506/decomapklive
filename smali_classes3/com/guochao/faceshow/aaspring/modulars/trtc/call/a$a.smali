.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/trtc/TRTCCloudListener$TRTCVideoFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->C(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGLContextCreated()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->d:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->glContextCreated()V

    return-void
.end method

.method public onGLContextDestory()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->d:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->destroyOnGLThread()V

    return-void
.end method

.method public onProcessVideoFrame(Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;)I
    .locals 3

    iget-object p2, p2, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->texture:Lcom/tencent/trtc/TRTCCloudDef$TRTCTexture;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->d:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    iget-object v1, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->texture:Lcom/tencent/trtc/TRTCCloudDef$TRTCTexture;

    iget v1, v1, Lcom/tencent/trtc/TRTCCloudDef$TRTCTexture;->textureId:I

    iget v2, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->width:I

    iget p1, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->height:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->process(III)I

    move-result p1

    iput p1, p2, Lcom/tencent/trtc/TRTCCloudDef$TRTCTexture;->textureId:I

    const/4 p1, 0x0

    return p1
.end method
