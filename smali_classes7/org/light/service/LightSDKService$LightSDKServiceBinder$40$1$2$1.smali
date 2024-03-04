.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

.field final synthetic val$surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 2
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    invoke-static {v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3200(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Lorg/light/utils/OESTextureConverter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    new-instance v1, Lorg/light/utils/OESTextureConverter;

    invoke-direct {v1}, Lorg/light/utils/OESTextureConverter;-><init>()V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3202(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Lorg/light/utils/OESTextureConverter;)Lorg/light/utils/OESTextureConverter;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    invoke-static {v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3100(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    const/16 v1, 0xde1

    invoke-static {v1}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3102(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;I)I

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    invoke-static {v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3200(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Lorg/light/utils/OESTextureConverter;

    move-result-object v0

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    invoke-static {v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3000(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)I

    move-result v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v2, v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    invoke-static {v2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3100(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)I

    move-result v2

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v3, v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->val$output:Lorg/light/bean/Texture;

    iget v4, v3, Lorg/light/bean/Texture;->width:I

    iget v3, v3, Lorg/light/bean/Texture;->height:I

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/light/utils/OESTextureConverter;->draw(IIII)V

    .line 7
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    const v1, 0x9117

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glFenceSync(II)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3602(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;J)J

    .line 8
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 9
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;->this$4:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    invoke-static {v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3700(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Lorg/light/Lock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/Lock;->release()V

    return-void
.end method
