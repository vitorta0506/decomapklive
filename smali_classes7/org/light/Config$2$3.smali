.class Lorg/light/Config$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config$2;->onRender(Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)Lorg/light/bean/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/Config$2;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$input:Lorg/light/bean/Texture;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$output:Lorg/light/bean/Texture;


# direct methods
.method constructor <init>(Lorg/light/Config$2;Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    iput-object p2, p0, Lorg/light/Config$2$3;->val$input:Lorg/light/bean/Texture;

    iput-object p3, p0, Lorg/light/Config$2$3;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lorg/light/Config$2$3;->val$data:Ljava/lang/String;

    iput-object p5, p0, Lorg/light/Config$2$3;->val$output:Lorg/light/bean/Texture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1300(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v1, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    invoke-static {v1}, Lorg/light/Config$2;->access$1400(Lorg/light/Config$2;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 2
    iget-object v0, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1600(Lorg/light/Config$2;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    const/16 v1, 0xde1

    invoke-static {v1}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/light/Config$2;->access$1602(Lorg/light/Config$2;I)I

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/Config$2$3;->val$input:Lorg/light/bean/Texture;

    iget-object v1, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    invoke-static {v1}, Lorg/light/Config$2;->access$1600(Lorg/light/Config$2;)I

    move-result v1

    iput v1, v0, Lorg/light/bean/Texture;->id:I

    .line 5
    iget-object v0, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1800(Lorg/light/Config$2;)Lorg/light/utils/OESTextureConverter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    new-instance v1, Lorg/light/utils/OESTextureConverter;

    invoke-direct {v1}, Lorg/light/utils/OESTextureConverter;-><init>()V

    invoke-static {v0, v1}, Lorg/light/Config$2;->access$1802(Lorg/light/Config$2;Lorg/light/utils/OESTextureConverter;)Lorg/light/utils/OESTextureConverter;

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1800(Lorg/light/Config$2;)Lorg/light/utils/OESTextureConverter;

    move-result-object v0

    iget-object v1, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    invoke-static {v1}, Lorg/light/Config$2;->access$1700(Lorg/light/Config$2;)I

    move-result v1

    iget-object v2, p0, Lorg/light/Config$2$3;->val$input:Lorg/light/bean/Texture;

    iget v3, v2, Lorg/light/bean/Texture;->id:I

    iget v4, v2, Lorg/light/bean/Texture;->width:I

    iget v2, v2, Lorg/light/bean/Texture;->height:I

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/light/utils/OESTextureConverter;->draw(IIII)V

    .line 8
    iget-object v0, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    iget-object v0, v0, Lorg/light/Config$2;->val$externalRenderCallback:Lorg/light/callback/ExternalRenderCallback;

    iget-object v1, p0, Lorg/light/Config$2$3;->val$input:Lorg/light/bean/Texture;

    iget-object v2, p0, Lorg/light/Config$2$3;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lorg/light/Config$2$3;->val$data:Ljava/lang/String;

    iget-object v4, p0, Lorg/light/Config$2$3;->val$output:Lorg/light/bean/Texture;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/light/callback/ExternalRenderCallback;->onRender(Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)V

    .line 9
    iget-object v0, p0, Lorg/light/Config$2$3;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$2500(Lorg/light/Config$2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
