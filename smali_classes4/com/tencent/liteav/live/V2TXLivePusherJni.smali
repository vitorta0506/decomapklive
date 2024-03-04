.class public Lcom/tencent/liteav/live/V2TXLivePusherJni;
.super Lcom/tencent/live2/V2TXLivePusher;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "V2TXLivePusherJni"


# instance fields
.field private mAudioEffectManager:Lcom/tencent/liteav/audio/TXAudioEffectManager;

.field private mBeautyManager:Lcom/tencent/liteav/beauty/TXBeautyManager;

.field private mDeviceManager:Lcom/tencent/liteav/device/TXDeviceManager;

.field private mNativeV2TXLivePusherJni:J

.field private mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/live2/V2TXLivePusher;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/liteav/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    const-string p1, "liteav"

    .line 3
    invoke-static {p1}, Lcom/tencent/liteav/base/ContextUtils;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeCreate(Ljava/lang/ref/WeakReference;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    .line 5
    new-instance v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    .line 6
    invoke-static {p1, p2}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeCreateAudioEffectManager(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mAudioEffectManager:Lcom/tencent/liteav/audio/TXAudioEffectManager;

    .line 7
    new-instance p1, Lcom/tencent/liteav/beauty/TXBeautyManagerImpl;

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    .line 8
    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeCreateBeautyManager(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/beauty/TXBeautyManagerImpl;-><init>(J)V

    iput-object p1, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mBeautyManager:Lcom/tencent/liteav/beauty/TXBeautyManager;

    .line 9
    new-instance p1, Lcom/tencent/liteav/device/TXDeviceManagerImpl;

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    .line 10
    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeCreateDeviceManager(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;-><init>(J)V

    iput-object p1, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mDeviceManager:Lcom/tencent/liteav/device/TXDeviceManager;

    return-void
.end method

.method private static native nativeCreate(Ljava/lang/ref/WeakReference;I)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/live/V2TXLivePusherJni;",
            ">;I)J"
        }
    .end annotation
.end method

.method private static native nativeCreateAudioEffectManager(J)J
.end method

.method private static native nativeCreateBeautyManager(J)J
.end method

.method private static native nativeCreateDeviceManager(J)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnableCustomAudioCapture(JZ)I
.end method

.method private static native nativeEnableCustomVideoCapture(JZ)I
.end method

.method private static native nativeEnableCustomVideoProcess(JZII)I
.end method

.method private static native nativeEnableExtensionCallback(JZ)V
.end method

.method private static native nativeEnableVolumeEvaluation(JI)I
.end method

.method private static native nativeIsPushing(J)I
.end method

.method private static native nativePauseAudio(J)I
.end method

.method private static native nativePauseVideo(J)I
.end method

.method private static native nativeResumeAudio(J)I
.end method

.method private static native nativeResumeVideo(J)I
.end method

.method private static native nativeSendCustomAudioFrame(J[BII)I
.end method

.method private static native nativeSendCustomVideoFrame(JLcom/tencent/liteav/videobase/frame/PixelFrame;)I
.end method

.method private static native nativeSendSeiMessage(JI[B)I
.end method

.method private static native nativeSetAudioQuality(JI)I
.end method

.method private static native nativeSetDisplayOrientation(JI)V
.end method

.method private static native nativeSetEncoderMirror(JZ)I
.end method

.method private static native nativeSetMixTranscodingConfig(JLjava/lang/String;)I
.end method

.method private static native nativeSetProperty(JLjava/lang/String;Ljava/lang/Object;)I
.end method

.method private static native nativeSetRenderMirror(JI)I
.end method

.method private static native nativeSetRenderRotation(JI)I
.end method

.method private static native nativeSetRenderView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)I
.end method

.method private static native nativeSetVideoQuality(JIIIII)I
.end method

.method private static native nativeSetVideoQualityEx(JIIIIII)I
.end method

.method private static native nativeSetWatermark(JLandroid/graphics/Bitmap;FFF)I
.end method

.method private static native nativeShowDebugView(JZ)V
.end method

.method private static native nativeSnapshot(J)I
.end method

.method private static native nativeStartCamera(JZ)I
.end method

.method private static native nativeStartMicrophone(J)I
.end method

.method private static native nativeStartPush(JLjava/lang/String;)I
.end method

.method private static native nativeStartScreenCapture(J)I
.end method

.method private static native nativeStartSystemAudioLoopback(J)I
.end method

.method private static native nativeStartVirtualCamera(JLandroid/graphics/Bitmap;)I
.end method

.method private static native nativeStopCamera(J)I
.end method

.method private static native nativeStopMicrophone(J)I
.end method

.method private static native nativeStopPush(J)I
.end method

.method private static native nativeStopScreenCapture(J)I
.end method

.method private static native nativeStopSystemAudioLoopback(J)I
.end method

.method private static native nativeStopVirtualCamera(J)I
.end method

.method private static pixelFrameToV2VideoFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/liteav/live/V2TXLivePusherJni$1;->d:[I

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;->V2TXLivePixelFormatTexture2D:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    iput-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->pixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;->V2TXLivePixelFormatI420:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    iput-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->pixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    .line 4
    :goto_0
    sget-object v0, Lcom/tencent/liteav/live/V2TXLivePusherJni$1;->e:[I

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    return v1

    .line 5
    :cond_2
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeByteBuffer:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    iput-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 6
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 7
    :cond_3
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeByteArray:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    iput-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 8
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->data:[B

    goto :goto_1

    .line 9
    :cond_4
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeTexture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    iput-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 10
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    invoke-direct {v0}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;-><init>()V

    iput-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    .line 11
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v1

    iput v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->textureId:I

    .line 12
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    .line 14
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->eglContext10:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/opengl/EGLContext;

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    .line 17
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/EGLContext;

    iput-object v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->eglContext14:Landroid/opengl/EGLContext;

    .line 18
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->width:I

    .line 19
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    .line 20
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p0

    .line 21
    iget p0, p0, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 22
    iput p0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->rotation:I

    return v3
.end method

.method private static v2VideoFrameToPixelFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/liteav/live/V2TXLivePusherJni$1;->b:[I

    iget-object v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->pixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    return v3

    .line 2
    :cond_0
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    .line 4
    :goto_0
    sget-object v0, Lcom/tencent/liteav/live/V2TXLivePusherJni$1;->c:[I

    iget-object v4, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    return v3

    .line 5
    :cond_2
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 7
    :cond_3
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    .line 8
    iget-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->data:[B

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setData([B)V

    goto :goto_1

    .line 9
    :cond_4
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    .line 10
    iget-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    if-eqz v0, :cond_9

    .line 11
    iget v0, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->textureId:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    .line 12
    iget-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    iget-object v0, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->eglContext10:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    iget-object v0, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->eglContext14:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 17
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_7

    return v3

    .line 18
    :cond_7
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    .line 19
    :cond_8
    :goto_1
    iget v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->width:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 20
    iget v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 21
    iget p0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->rotation:I

    invoke-static {p0}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    return v2

    :cond_9
    return v3
.end method

.method public static weakToStrongReference(Ljava/lang/ref/WeakReference;)Lcom/tencent/liteav/live/V2TXLivePusherJni;
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/live/V2TXLivePusherJni;",
            ">;)",
            "Lcom/tencent/liteav/live/V2TXLivePusherJni;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;

    return-object p0
.end method


# virtual methods
.method public enableCustomAudioCapture(Z)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeEnableCustomAudioCapture(JZ)I

    move-result p1

    return p1
.end method

.method public enableCustomVideoCapture(Z)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeEnableCustomVideoCapture(JZ)I

    move-result p1

    return p1
.end method

.method public enableCustomVideoProcess(ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    .line 2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeEnableCustomVideoProcess(JZII)I

    move-result p1

    return p1
.end method

.method public enableVolumeEvaluation(I)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeEnableVolumeEvaluation(JI)I

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->release()V

    return-void
.end method

.method public getAudioEffectManager()Lcom/tencent/liteav/audio/TXAudioEffectManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mAudioEffectManager:Lcom/tencent/liteav/audio/TXAudioEffectManager;

    return-object v0
.end method

.method public getBeautyManager()Lcom/tencent/liteav/beauty/TXBeautyManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mBeautyManager:Lcom/tencent/liteav/beauty/TXBeautyManager;

    return-object v0
.end method

.method public getDeviceManager()Lcom/tencent/liteav/device/TXDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mDeviceManager:Lcom/tencent/liteav/device/TXDeviceManager;

    return-object v0
.end method

.method public isPushing()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeIsPushing(J)I

    move-result v0

    return v0
.end method

.method public onCaptureFirstAudioFrame()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusherObserver;->onCaptureFirstAudioFrame()V

    :cond_0
    return-void
.end method

.method public onCaptureFirstVideoFrame()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusherObserver;->onCaptureFirstVideoFrame()V

    :cond_0
    return-void
.end method

.method public onCustomPreprocessFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)I
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;

    invoke-direct {v0}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;-><init>()V

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->pixelFrameToV2VideoFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)Z

    move-result p1

    const/4 v1, -0x1

    if-nez p1, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;

    invoke-direct {p1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;-><init>()V

    .line 4
    invoke-static {p2, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->pixelFrameToV2VideoFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2, v0, p1}, Lcom/tencent/live2/V2TXLivePusherObserver;->onProcessVideoFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)I

    move-result v0

    .line 7
    invoke-static {p1, p2}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->v2VideoFrameToPixelFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public onEnterRoom(ILjava/lang/String;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    return-void
.end method

.method public onError(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePusherObserver;->onError(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onExitRoom(ILjava/lang/String;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    return-void
.end method

.method public onGLContextCreated()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusherObserver;->onGLContextCreated()V

    :cond_0
    return-void
.end method

.method public onGLContextDestroyed()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusherObserver;->onGLContextDestroyed()V

    :cond_0
    return-void
.end method

.method public onMicrophoneVolumeUpdate(I)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePusherObserver;->onMicrophoneVolumeUpdate(I)V

    :cond_0
    return-void
.end method

.method public onNetworkQuality(I)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    return-void
.end method

.method public onPushEvent(ILandroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    return-void
.end method

.method public onPushNetStatus(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    return-void
.end method

.method public onPushStatusUpdate(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    .line 2
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusDisconnected:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "disconnected from the server."

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusReconnecting:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    const-string p2, "reconnecting to the server."

    goto :goto_0

    .line 4
    :cond_2
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusConnectSuccess:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    const-string p2, "connected to the server successfully."

    goto :goto_0

    .line 5
    :cond_3
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusConnecting:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    const-string p2, "connecting to the server."

    :goto_0
    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0, v1, p2, p3}, Lcom/tencent/live2/V2TXLivePusherObserver;->onPushStatusUpdate(Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public onScreenCaptureStarted()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePusherObserver;->onScreenCaptureStarted()V

    :cond_0
    return-void
.end method

.method public onScreenCaptureStoped(I)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePusherObserver;->onScreenCaptureStopped(I)V

    :cond_0
    return-void
.end method

.method public onSetMixTranscodingConfig(ILjava/lang/String;)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/tencent/live2/V2TXLivePusherObserver;->onSetMixTranscodingConfig(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSnapshotComplete(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePusherObserver;->onSnapshotComplete(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onStatisticsUpdate(IIIIIII)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;

    invoke-direct {v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;-><init>()V

    .line 3
    iput p1, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;->appCpu:I

    .line 4
    iput p2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;->systemCpu:I

    .line 5
    iput p3, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;->width:I

    .line 6
    iput p4, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;->height:I

    .line 7
    iput p5, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;->fps:I

    .line 8
    iput p6, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;->videoBitrate:I

    .line 9
    iput p7, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;->audioBitrate:I

    .line 10
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePusherObserver;->onStatisticsUpdate(Lcom/tencent/live2/V2TXLiveDef$V2TXLivePusherStatistics;)V

    :cond_0
    return-void
.end method

.method public onUserAudioAvailable(Ljava/lang/String;Z)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    return-void
.end method

.method public onUserOffline(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    return-void
.end method

.method public onUserOnline(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    return-void
.end method

.method public onUserVideoAvailable(Ljava/lang/String;IZ)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    return-void
.end method

.method public onWarning(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePusherObserver;->onWarning(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public pauseAudio()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativePauseAudio(J)I

    move-result v0

    return v0
.end method

.method public pauseVideo()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativePauseVideo(J)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeDestroy(J)V

    .line 3
    iput-wide v2, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    :cond_0
    return-void
.end method

.method public resumeAudio()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeResumeAudio(J)I

    move-result v0

    return v0
.end method

.method public resumeVideo()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeResumeVideo(J)I

    move-result v0

    return v0
.end method

.method public sendCustomAudioFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;)I
    .locals 4

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    iget-object v2, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;->data:[B

    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;->sampleRate:I

    iget p1, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;->channel:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSendCustomAudioFrame(J[BII)I

    move-result p1

    return p1
.end method

.method public sendCustomVideoFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)I
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->v2VideoFrameToPixelFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget-wide v1, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSendCustomVideoFrame(JLcom/tencent/liteav/videobase/frame/PixelFrame;)I

    move-result p1

    return p1
.end method

.method public sendSeiMessage(I[B)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSendSeiMessage(JI[B)I

    move-result p1

    return p1
.end method

.method public setAudioQuality(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetAudioQuality(JI)I

    move-result p1

    return p1
.end method

.method public setDisplayOrientation(I)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetDisplayOrientation(JI)V

    return-void
.end method

.method public setEncoderMirror(Z)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetEncoderMirror(JZ)I

    move-result p1

    return p1
.end method

.method public setMixTranscodingConfig(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;)I
    .locals 8

    const-string v0, ""

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v1, "videoWidth"

    .line 2
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoWidth:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "videoHeight"

    .line 3
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoHeight:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "videoBitrate"

    .line 4
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoBitrate:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "videoFramerate"

    .line 5
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoFramerate:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "videoGOP"

    .line 6
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoGOP:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "backgroundColor"

    .line 7
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundColor:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "backgroundImage"

    .line 8
    iget-object v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundImage:Ljava/lang/String;

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundImage:Ljava/lang/String;

    .line 10
    :goto_0
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "audioSampleRate"

    .line 11
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioSampleRate:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "audioBitrate"

    .line 12
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioBitrate:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "audioChannels"

    .line 13
    iget v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioChannels:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "outputStreamId"

    .line 14
    iget-object v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->outputStreamId:Ljava/lang/String;

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->outputStreamId:Ljava/lang/String;

    .line 16
    :goto_1
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 18
    iget-object p1, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->mixStreams:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    .line 19
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 20
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;

    .line 21
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "userId"

    .line 22
    iget-object v7, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->userId:Ljava/lang/String;

    .line 23
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    goto :goto_3

    :cond_2
    iget-object v7, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->userId:Ljava/lang/String;

    .line 24
    :goto_3
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "streamId"

    .line 25
    iget-object v7, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->streamId:Ljava/lang/String;

    .line 26
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    goto :goto_4

    :cond_3
    iget-object v7, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->streamId:Ljava/lang/String;

    .line 27
    :goto_4
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "x"

    .line 28
    iget v7, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->x:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v6, "y"

    .line 29
    iget v7, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->y:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v6, "width"

    .line 30
    iget v7, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->width:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "height"

    .line 31
    iget v7, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->height:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v6, "zOrder"

    .line 32
    iget v7, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->zOrder:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "inputType"

    .line 33
    iget-object v4, v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->inputType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const-string p1, "mixStreamList"

    .line 35
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception p1

    .line 36
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_5

    .line 37
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_5
    iget-wide v1, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetMixTranscodingConfig(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setObserver(Lcom/tencent/live2/V2TXLivePusherObserver;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mObserver:Lcom/tencent/live2/V2TXLivePusherObserver;

    if-eqz p1, :cond_0

    .line 2
    instance-of p1, p1, Lcom/tencent/live2/impl/a/b;

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeEnableExtensionCallback(JZ)V

    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "setVideoQualityEx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "setFramework"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "enableCameraZoom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_3
    const-string v3, "setMetaData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_4
    const-string v3, "enableRealtimeMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_5
    const-string v3, "setSurface"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_6
    const-string v3, "setSurfaceSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_7
    const-string v3, "enableANS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_8
    const-string v3, "enableAGC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_9
    const-string v3, "enableHevcEncode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/4 v5, 0x0

    :goto_0
    const/4 v3, -0x2

    const-string v6, ", value:"

    const-string v7, "setProperty error, key:"

    const-string v8, "V2TXLivePusherJni"

    packed-switch v5, :pswitch_data_0

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 3
    :pswitch_0
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_a

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 5
    :cond_a
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 6
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "videoWidth"

    .line 7
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v5, "videoHeight"

    .line 8
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v5, "videoFps"

    .line 9
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v5, "videoBitrate"

    .line 10
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const-string v5, "minVideoBitrate"

    .line 11
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v5, "videoGop"

    .line 12
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 13
    iget-wide v10, v0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static/range {v10 .. v17}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetVideoQualityEx(JIIIIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_1
    if-nez v2, :cond_b

    .line 15
    iget-wide v1, v0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetRenderView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)I

    goto :goto_1

    .line 16
    :cond_b
    instance-of v5, v2, Landroid/view/Surface;

    if-eqz v5, :cond_c

    .line 17
    move-object v1, v2

    check-cast v1, Landroid/view/Surface;

    .line 18
    iget-wide v2, v0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    new-instance v5, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {v5, v1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Landroid/view/Surface;)V

    invoke-static {v2, v3, v5}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetRenderView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)I

    goto :goto_1

    .line 19
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :pswitch_2
    const-string v1, "set surface size is unnecessary"

    .line 20
    invoke-static {v8, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v4

    .line 21
    :pswitch_3
    iget-wide v3, v0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v3, v4, v1, v2}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetProperty(JLjava/lang/String;Ljava/lang/Object;)I

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7e5742fd -> :sswitch_9
        -0x25a6bb86 -> :sswitch_8
        -0x25a6ba9d -> :sswitch_7
        0x1c9cdc8c -> :sswitch_6
        0x42c875eb -> :sswitch_5
        0x4e10fad1 -> :sswitch_4
        0x5bb18dd1 -> :sswitch_3
        0x7a187a7b -> :sswitch_2
        0x7c4f23bc -> :sswitch_1
        0x7f14a0d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setRenderMirror(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMirrorType;)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetRenderMirror(JI)I

    move-result p1

    return p1
.end method

.method public setRenderRotation(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/liteav/live/V2TXLivePusherJni$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->c:Lcom/tencent/liteav/videobase/utils/Rotation;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 6
    :goto_0
    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    .line 7
    iget p1, p1, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 8
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetRenderRotation(JI)I

    move-result p1

    return p1
.end method

.method public setRenderView(Landroid/view/SurfaceView;)I
    .locals 3

    .line 3
    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {v2, p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Landroid/view/SurfaceView;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetRenderView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)I

    move-result p1

    return p1
.end method

.method public setRenderView(Landroid/view/TextureView;)I
    .locals 3

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {v2, p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Landroid/view/TextureView;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetRenderView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)I

    move-result p1

    return p1
.end method

.method public setRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {v2, p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetRenderView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)I

    move-result p1

    return p1
.end method

.method public setVideoQuality(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    iget-object v2, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->videoResolution:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v3, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->videoResolutionMode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    .line 2
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget v4, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->videoFps:I

    iget v5, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->videoBitrate:I

    iget v6, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoEncoderParam;->minVideoBitrate:I

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetVideoQuality(JIIIII)I

    move-result p1

    return p1
.end method

.method public setWatermark(Landroid/graphics/Bitmap;FFF)I
    .locals 6

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSetWatermark(JLandroid/graphics/Bitmap;FFF)I

    move-result p1

    return p1
.end method

.method public showDebugView(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeShowDebugView(JZ)V

    return-void
.end method

.method public snapshot()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeSnapshot(J)I

    move-result v0

    return v0
.end method

.method public startCamera(Z)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStartCamera(JZ)I

    move-result p1

    return p1
.end method

.method public startMicrophone()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStartMicrophone(J)I

    move-result v0

    return v0
.end method

.method public startPush(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStartPush(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startScreenCapture()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStartScreenCapture(J)I

    move-result v0

    return v0
.end method

.method public startSystemAudioLoopback()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStartSystemAudioLoopback(J)I

    move-result v0

    return v0
.end method

.method public startVirtualCamera(Landroid/graphics/Bitmap;)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStartVirtualCamera(JLandroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public stopCamera()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStopCamera(J)I

    move-result v0

    return v0
.end method

.method public stopMicrophone()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStopMicrophone(J)I

    move-result v0

    return v0
.end method

.method public stopPush()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStopPush(J)I

    move-result v0

    return v0
.end method

.method public stopScreenCapture()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStopScreenCapture(J)I

    move-result v0

    return v0
.end method

.method public stopSystemAudioLoopback()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStopSystemAudioLoopback(J)I

    move-result v0

    return v0
.end method

.method public stopVirtualCamera()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/live/V2TXLivePusherJni;->mNativeV2TXLivePusherJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/V2TXLivePusherJni;->nativeStopVirtualCamera(J)I

    move-result v0

    return v0
.end method
