.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightSurfaceMakeFromSurface(Landroid/view/Surface;Z)Lorg/light/service/InstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$flipY:Z

.field final synthetic val$iid:[Lorg/light/service/InstanceId;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Landroid/view/Surface;Z[Lorg/light/service/InstanceId;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->val$surface:Landroid/view/Surface;

    iput-boolean p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->val$flipY:Z

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->val$iid:[Lorg/light/service/InstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/light/gles/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 3
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->val$surface:Landroid/view/Surface;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    iget-boolean v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->val$flipY:Z

    invoke-static {v1, v2, v3}, Lorg/light/LightSurface;->makeFromSurface(Landroid/view/Surface;Landroid/opengl/EGLContext;Z)Lorg/light/LightSurface;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->val$iid:[Lorg/light/service/InstanceId;

    if-eqz v1, :cond_0

    new-instance v3, Lorg/light/service/InstanceId;

    iget-object v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-static {v4, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$900(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v3, v1}, Lorg/light/service/InstanceId;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v1, 0x0

    aput-object v3, v2, v1

    .line 5
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->val$iid:[Lorg/light/service/InstanceId;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v2, v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v2}, Lorg/light/service/LightSDKService;->access$1000(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;->val$iid:[Lorg/light/service/InstanceId;

    aget-object v1, v3, v1

    iget v1, v1, Lorg/light/service/InstanceId;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
