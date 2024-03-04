.class Lorg/light/Config$1;
.super Lorg/light/callback/AIDLExternalRenderCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config;->setExternalRenderCallback(Lorg/light/callback/ExternalRenderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inputEglCore:Lorg/light/gles/EglCore;

.field private inputEglSurface:Landroid/opengl/EGLSurface;

.field private inputGLHandler:Landroid/os/Handler;

.field private final inputLock:Ljava/util/concurrent/Semaphore;

.field private inputReader:Lorg/light/utils/OESTextureConverter;

.field private oesTexInput:I

.field private outputEGLSurface:Landroid/opengl/EGLSurface;

.field private outputEglCore:Lorg/light/gles/EglCore;

.field private outputRenderer:Lorg/light/utils/SimpleRenderer;

.field private final released:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private surfaceInput:Landroid/view/Surface;

.field private surfaceTextureInput:Landroid/graphics/SurfaceTexture;

.field private texInput:I

.field final synthetic this$0:Lorg/light/Config;

.field private final threadLock:Ljava/util/concurrent/Semaphore;

.field final synthetic val$externalRenderCallback:Lorg/light/callback/ExternalRenderCallback;


# direct methods
.method constructor <init>(Lorg/light/Config;Lorg/light/callback/ExternalRenderCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/light/Config$1;->this$0:Lorg/light/Config;

    iput-object p2, p0, Lorg/light/Config$1;->val$externalRenderCallback:Lorg/light/callback/ExternalRenderCallback;

    invoke-direct {p0}, Lorg/light/callback/AIDLExternalRenderCallback$Stub;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/light/Config$1;->texInput:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/light/Config$1;->surfaceInput:Landroid/view/Surface;

    .line 4
    iput-object p1, p0, Lorg/light/Config$1;->outputEglCore:Lorg/light/gles/EglCore;

    .line 5
    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p2, p0, Lorg/light/Config$1;->outputEGLSurface:Landroid/opengl/EGLSurface;

    .line 6
    iput-object p1, p0, Lorg/light/Config$1;->outputRenderer:Lorg/light/utils/SimpleRenderer;

    .line 7
    iput-object p1, p0, Lorg/light/Config$1;->inputReader:Lorg/light/utils/OESTextureConverter;

    .line 8
    iput-object p1, p0, Lorg/light/Config$1;->inputGLHandler:Landroid/os/Handler;

    .line 9
    iput-object p1, p0, Lorg/light/Config$1;->inputEglCore:Lorg/light/gles/EglCore;

    .line 10
    iput-object p1, p0, Lorg/light/Config$1;->inputEglSurface:Landroid/opengl/EGLSurface;

    .line 11
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lorg/light/Config$1;->threadLock:Ljava/util/concurrent/Semaphore;

    .line 12
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lorg/light/Config$1;->inputLock:Ljava/util/concurrent/Semaphore;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/light/Config$1;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lorg/light/Config$1;)Lorg/light/gles/EglCore;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->inputEglCore:Lorg/light/gles/EglCore;

    return-object p0
.end method

.method static synthetic access$002(Lorg/light/Config$1;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1;->inputEglCore:Lorg/light/gles/EglCore;

    return-object p1
.end method

.method static synthetic access$100(Lorg/light/Config$1;)Landroid/opengl/EGLSurface;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->inputEglSurface:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/light/Config$1;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->inputLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$102(Lorg/light/Config$1;Landroid/opengl/EGLSurface;)Landroid/opengl/EGLSurface;
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1;->inputEglSurface:Landroid/opengl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/light/Config$1;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->inputGLHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/light/Config$1;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->threadLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$200(Lorg/light/Config$1;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->surfaceTextureInput:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$202(Lorg/light/Config$1;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1;->surfaceTextureInput:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$300(Lorg/light/Config$1;)I
    .locals 0

    iget p0, p0, Lorg/light/Config$1;->texInput:I

    return p0
.end method

.method static synthetic access$302(Lorg/light/Config$1;I)I
    .locals 0

    iput p1, p0, Lorg/light/Config$1;->texInput:I

    return p1
.end method

.method static synthetic access$400(Lorg/light/Config$1;)I
    .locals 0

    iget p0, p0, Lorg/light/Config$1;->oesTexInput:I

    return p0
.end method

.method static synthetic access$402(Lorg/light/Config$1;I)I
    .locals 0

    iput p1, p0, Lorg/light/Config$1;->oesTexInput:I

    return p1
.end method

.method static synthetic access$500(Lorg/light/Config$1;)Lorg/light/utils/OESTextureConverter;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->inputReader:Lorg/light/utils/OESTextureConverter;

    return-object p0
.end method

.method static synthetic access$502(Lorg/light/Config$1;Lorg/light/utils/OESTextureConverter;)Lorg/light/utils/OESTextureConverter;
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1;->inputReader:Lorg/light/utils/OESTextureConverter;

    return-object p1
.end method

.method static synthetic access$600(Lorg/light/Config$1;)Lorg/light/gles/EglCore;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->outputEglCore:Lorg/light/gles/EglCore;

    return-object p0
.end method

.method static synthetic access$602(Lorg/light/Config$1;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1;->outputEglCore:Lorg/light/gles/EglCore;

    return-object p1
.end method

.method static synthetic access$700(Lorg/light/Config$1;)Landroid/opengl/EGLSurface;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->outputEGLSurface:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$702(Lorg/light/Config$1;Landroid/opengl/EGLSurface;)Landroid/opengl/EGLSurface;
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1;->outputEGLSurface:Landroid/opengl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$800(Lorg/light/Config$1;)Lorg/light/utils/SimpleRenderer;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->outputRenderer:Lorg/light/utils/SimpleRenderer;

    return-object p0
.end method

.method static synthetic access$802(Lorg/light/Config$1;Lorg/light/utils/SimpleRenderer;)Lorg/light/utils/SimpleRenderer;
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1;->outputRenderer:Lorg/light/utils/SimpleRenderer;

    return-object p1
.end method

.method static synthetic access$900(Lorg/light/Config$1;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lorg/light/Config$1;->surfaceInput:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$902(Lorg/light/Config$1;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1;->surfaceInput:Landroid/view/Surface;

    return-object p1
.end method


# virtual methods
.method public afterRender(Lorg/light/bean/Texture;Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/light/Config$1;->inputGLHandler:Landroid/os/Handler;

    new-instance v1, Lorg/light/Config$1$4;

    invoke-direct {v1, p0, p2, p1}, Lorg/light/Config$1$4;-><init>(Lorg/light/Config$1;Landroid/view/Surface;Lorg/light/bean/Texture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    :try_start_0
    iget-object p1, p0, Lorg/light/Config$1;->threadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
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
    invoke-virtual {p0}, Lorg/light/Config$1;->release()V

    return-void
.end method

.method public getInputSurface(II)Landroid/view/Surface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/light/Config$1;->inputGLHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExternalRenderInputGLThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/light/Config$1;->inputGLHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Lorg/light/Config$1$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/light/Config$1$2;-><init>(Lorg/light/Config$1;II)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :try_start_0
    iget-object p1, p0, Lorg/light/Config$1;->threadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/light/Config$1;->surfaceInput:Landroid/view/Surface;

    return-object p1
.end method

.method public onRender(Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)Lorg/light/bean/Texture;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/Config$1;->inputLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/light/Config$1;->inputGLHandler:Landroid/os/Handler;

    new-instance v7, Lorg/light/Config$1$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/light/Config$1$3;-><init>(Lorg/light/Config$1;Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :try_start_1
    iget-object p1, p0, Lorg/light/Config$1;->threadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-object p4
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/Config$1;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/light/Config$1;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lorg/light/Config$1;->inputGLHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 5
    iget-object v1, p0, Lorg/light/Config$1;->inputGLHandler:Landroid/os/Handler;

    new-instance v2, Lorg/light/Config$1$1;

    invoke-direct {v2, p0, v0}, Lorg/light/Config$1$1;-><init>(Lorg/light/Config$1;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8
    :goto_0
    iget-object v0, p0, Lorg/light/Config$1;->inputGLHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    return-void
.end method
