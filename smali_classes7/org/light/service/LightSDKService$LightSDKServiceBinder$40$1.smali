.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/callback/ExternalRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fence:J

.field private inputEGLSurface:Landroid/opengl/EGLSurface;

.field private inputEglCore:Lorg/light/gles/EglCore;

.field private inputRenderer:Lorg/light/utils/SimpleRenderer;

.field private oesTexOutput:I

.field private outputEglCore:Lorg/light/gles/EglCore;

.field private outputEglSurface:Landroid/opengl/EGLSurface;

.field private outputGLHandler:Landroid/os/Handler;

.field private final outputLock:Lorg/light/Lock;

.field private outputReader:Lorg/light/utils/OESTextureConverter;

.field private surfaceOutput:Landroid/view/Surface;

.field private surfaceTextureOutput:Landroid/graphics/SurfaceTexture;

.field private texOutput:I

.field final synthetic this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->texOutput:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->surfaceOutput:Landroid/view/Surface;

    .line 4
    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEglCore:Lorg/light/gles/EglCore;

    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEGLSurface:Landroid/opengl/EGLSurface;

    .line 6
    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputRenderer:Lorg/light/utils/SimpleRenderer;

    .line 7
    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputGLHandler:Landroid/os/Handler;

    .line 8
    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputEglCore:Lorg/light/gles/EglCore;

    .line 9
    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputEglSurface:Landroid/opengl/EGLSurface;

    .line 10
    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputReader:Lorg/light/utils/OESTextureConverter;

    .line 11
    new-instance p1, Lorg/light/Lock;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/light/Lock;-><init>(I)V

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputLock:Lorg/light/Lock;

    return-void
.end method

.method static synthetic access$2700(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Lorg/light/gles/EglCore;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputEglCore:Lorg/light/gles/EglCore;

    return-object p0
.end method

.method static synthetic access$2702(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputEglCore:Lorg/light/gles/EglCore;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Landroid/opengl/EGLSurface;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputEglSurface:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Landroid/opengl/EGLSurface;)Landroid/opengl/EGLSurface;
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputEglSurface:Landroid/opengl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->surfaceTextureOutput:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)I
    .locals 0

    iget p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->oesTexOutput:I

    return p0
.end method

.method static synthetic access$3002(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;I)I
    .locals 0

    iput p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->oesTexOutput:I

    return p1
.end method

.method static synthetic access$3100(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)I
    .locals 0

    iget p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->texOutput:I

    return p0
.end method

.method static synthetic access$3102(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;I)I
    .locals 0

    iput p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->texOutput:I

    return p1
.end method

.method static synthetic access$3200(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Lorg/light/utils/OESTextureConverter;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputReader:Lorg/light/utils/OESTextureConverter;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Lorg/light/utils/OESTextureConverter;)Lorg/light/utils/OESTextureConverter;
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputReader:Lorg/light/utils/OESTextureConverter;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Lorg/light/gles/EglCore;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEglCore:Lorg/light/gles/EglCore;

    return-object p0
.end method

.method static synthetic access$3302(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEglCore:Lorg/light/gles/EglCore;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Landroid/opengl/EGLSurface;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEGLSurface:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Lorg/light/utils/SimpleRenderer;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputRenderer:Lorg/light/utils/SimpleRenderer;

    return-object p0
.end method

.method static synthetic access$3502(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Lorg/light/utils/SimpleRenderer;)Lorg/light/utils/SimpleRenderer;
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputRenderer:Lorg/light/utils/SimpleRenderer;

    return-object p1
.end method

.method static synthetic access$3602(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;J)J
    .locals 0

    iput-wide p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->fence:J

    return-wide p1
.end method

.method static synthetic access$3700(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Lorg/light/Lock;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputLock:Lorg/light/Lock;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputGLHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Lorg/light/bean/Texture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->createOutputSurface(Lorg/light/bean/Texture;)V

    return-void
.end method

.method private createOutputSurface(Lorg/light/bean/Texture;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->surfaceOutput:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->oesTexOutput:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->surfaceTextureOutput:Landroid/graphics/SurfaceTexture;

    .line 3
    iget v1, p1, Lorg/light/bean/Texture;->width:I

    iget v2, p1, Lorg/light/bean/Texture;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 4
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->surfaceTextureOutput:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Lorg/light/bean/Texture;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 5
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->surfaceTextureOutput:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->surfaceOutput:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method private release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputGLHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/light/Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/light/Lock;-><init>(I)V

    .line 3
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputGLHandler:Landroid/os/Handler;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$1;

    invoke-direct {v2, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$1;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Lorg/light/Lock;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {v0}, Lorg/light/Lock;->acquire()V

    .line 5
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputGLHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private writeToInputSurface(Lorg/light/bean/Texture;Landroid/view/Surface;Landroid/opengl/EGLContext;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    const/16 v1, 0x305a

    .line 2
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    const/16 v2, 0x3059

    .line 3
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEglCore:Lorg/light/gles/EglCore;

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Lorg/light/gles/EglCore;

    const/4 v4, 0x2

    invoke-direct {v3, p3, v4}, Lorg/light/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEglCore:Lorg/light/gles/EglCore;

    .line 6
    :cond_0
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v3, v4, :cond_1

    .line 7
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEglCore:Lorg/light/gles/EglCore;

    invoke-virtual {v3, p2}, Lorg/light/gles/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p2

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEGLSurface:Landroid/opengl/EGLSurface;

    :cond_1
    const p2, 0x9117

    const/4 v3, 0x0

    .line 8
    invoke-static {p2, v3}, Landroid/opengl/GLES30;->glFenceSync(II)J

    move-result-wide v4

    .line 9
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 10
    iget-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEglCore:Lorg/light/gles/EglCore;

    iget-object v6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {p2, v6}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 11
    iget-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputRenderer:Lorg/light/utils/SimpleRenderer;

    if-nez p2, :cond_2

    .line 12
    new-instance p2, Lorg/light/utils/SimpleRenderer;

    invoke-direct {p2}, Lorg/light/utils/SimpleRenderer;-><init>()V

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputRenderer:Lorg/light/utils/SimpleRenderer;

    :cond_2
    const-wide/16 v6, -0x1

    .line 13
    invoke-static {v4, v5, v3, v6, v7}, Landroid/opengl/GLES30;->glWaitSync(JIJ)V

    .line 14
    invoke-static {v4, v5}, Landroid/opengl/GLES30;->glDeleteSync(J)V

    const/4 p2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    invoke-static {p2, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    .line 16
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 17
    iget-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputRenderer:Lorg/light/utils/SimpleRenderer;

    iget v4, p1, Lorg/light/bean/Texture;->id:I

    iget v5, p1, Lorg/light/bean/Texture;->width:I

    iget p1, p1, Lorg/light/bean/Texture;->height:I

    invoke-virtual {p2, v4, v3, v5, p1}, Lorg/light/utils/SimpleRenderer;->draw(IIII)V

    .line 18
    iget-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEglCore:Lorg/light/gles/EglCore;

    iget-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->inputEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {p1, p2}, Lorg/light/gles/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    .line 19
    invoke-static {v0, v2, v1, p3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method


# virtual methods
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
    invoke-direct {p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->release()V

    return-void
.end method

.method public onRender(Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)V
    .locals 5

    const-string v0, "RemoteException:\n"

    const-string v1, "LightSDKService"

    .line 1
    :try_start_0
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;

    iget-object v2, v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;->val$aidlExternalRenderCallback:Lorg/light/callback/AIDLExternalRenderCallback;

    iget v3, p1, Lorg/light/bean/Texture;->width:I

    iget v4, p1, Lorg/light/bean/Texture;->height:I

    invoke-interface {v2, v3, v4}, Lorg/light/callback/AIDLExternalRenderCallback;->getInputSurface(II)Landroid/view/Surface;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    const-string p1, "aidlExternalRenderCallback.getInputSurface null"

    .line 3
    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v3

    .line 5
    invoke-direct {p0, p1, v2, v3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->writeToInputSurface(Lorg/light/bean/Texture;Landroid/view/Surface;Landroid/opengl/EGLContext;)V

    .line 6
    :try_start_1
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;

    iget-object v2, v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;->val$aidlExternalRenderCallback:Lorg/light/callback/AIDLExternalRenderCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/light/callback/AIDLExternalRenderCallback;->onRender(Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)Lorg/light/bean/Texture;

    move-result-object p1

    .line 7
    iget p2, p1, Lorg/light/bean/Texture;->id:I

    iput p2, p4, Lorg/light/bean/Texture;->id:I

    .line 8
    iget p2, p1, Lorg/light/bean/Texture;->width:I

    iput p2, p4, Lorg/light/bean/Texture;->width:I

    .line 9
    iget p1, p1, Lorg/light/bean/Texture;->height:I

    iput p1, p4, Lorg/light/bean/Texture;->height:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 10
    iget-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputGLHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 11
    new-instance p1, Landroid/os/HandlerThread;

    const-string p3, "ExternalRenderOutputGLThread"

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputGLHandler:Landroid/os/Handler;

    .line 14
    new-instance p1, Lorg/light/Lock;

    invoke-direct {p1, p2}, Lorg/light/Lock;-><init>(I)V

    .line 15
    iget-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputGLHandler:Landroid/os/Handler;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$3;

    invoke-direct {v2, p0, v3, p4, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$3;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Landroid/opengl/EGLContext;Lorg/light/bean/Texture;Lorg/light/Lock;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    invoke-virtual {p1}, Lorg/light/Lock;->acquire()V

    .line 17
    :cond_1
    :try_start_2
    iget-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;

    iget-object p1, p1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;->val$aidlExternalRenderCallback:Lorg/light/callback/AIDLExternalRenderCallback;

    iget-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->surfaceOutput:Landroid/view/Surface;

    invoke-interface {p1, p4, p3}, Lorg/light/callback/AIDLExternalRenderCallback;->afterRender(Lorg/light/bean/Texture;Landroid/view/Surface;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_1
    iget-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->outputLock:Lorg/light/Lock;

    invoke-virtual {p1}, Lorg/light/Lock;->acquire()V

    .line 20
    iget-wide v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->fence:J

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p2, v2, v3}, Landroid/opengl/GLES30;->glWaitSync(JIJ)V

    .line 21
    iget-wide p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->fence:J

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteSync(J)V

    .line 22
    iget p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->texOutput:I

    iput p1, p4, Lorg/light/bean/Texture;->id:I

    return-void

    :catch_2
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
