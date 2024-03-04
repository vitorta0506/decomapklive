.class Lorg/light/Config$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config$1;->getInputSurface(II)Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/Config$1;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/light/Config$1;II)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    iput p2, p0, Lorg/light/Config$1$2;->val$width:I

    iput p3, p0, Lorg/light/Config$1$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    new-instance v1, Lorg/light/gles/EglCore;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/light/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v0, v1}, Lorg/light/Config$1;->access$002(Lorg/light/Config$1;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;

    .line 2
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$000(Lorg/light/Config$1;)Lorg/light/gles/EglCore;

    move-result-object v1

    iget v2, p0, Lorg/light/Config$1$2;->val$width:I

    iget v3, p0, Lorg/light/Config$1$2;->val$height:I

    invoke-virtual {v1, v2, v3}, Lorg/light/gles/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/Config$1;->access$102(Lorg/light/Config$1;Landroid/opengl/EGLSurface;)Landroid/opengl/EGLSurface;

    .line 3
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$000(Lorg/light/Config$1;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v1, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    invoke-static {v1}, Lorg/light/Config$1;->access$100(Lorg/light/Config$1;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 4
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    const v1, 0x8d65

    invoke-static {v1}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/light/Config$1;->access$402(Lorg/light/Config$1;I)I

    .line 5
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$900(Lorg/light/Config$1;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    invoke-static {v2}, Lorg/light/Config$1;->access$400(Lorg/light/Config$1;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lorg/light/Config$1;->access$202(Lorg/light/Config$1;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 7
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$200(Lorg/light/Config$1;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v1, p0, Lorg/light/Config$1$2;->val$width:I

    iget v2, p0, Lorg/light/Config$1$2;->val$height:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 8
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$200(Lorg/light/Config$1;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    new-instance v1, Lorg/light/Config$1$2$1;

    invoke-direct {v1, p0}, Lorg/light/Config$1$2$1;-><init>(Lorg/light/Config$1$2;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 9
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    invoke-static {v2}, Lorg/light/Config$1;->access$200(Lorg/light/Config$1;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lorg/light/Config$1;->access$902(Lorg/light/Config$1;Landroid/view/Surface;)Landroid/view/Surface;

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/light/Config$1$2;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$1200(Lorg/light/Config$1;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
