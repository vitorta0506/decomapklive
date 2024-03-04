.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightSurfaceMakeFromNativeBuffer(Landroid/hardware/HardwareBuffer;IIZ)Lorg/light/service/InstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$buffer:Landroid/hardware/HardwareBuffer;

.field final synthetic val$flipY:Z

.field final synthetic val$height:I

.field final synthetic val$iid:[Lorg/light/service/InstanceId;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IILandroid/hardware/HardwareBuffer;Z[Lorg/light/service/InstanceId;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$width:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$height:I

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$buffer:Landroid/hardware/HardwareBuffer;

    iput-boolean p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$flipY:Z

    iput-object p6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$iid:[Lorg/light/service/InstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$width:I

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$height:I

    invoke-virtual {v0, v1, v2}, Lorg/light/gles/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 3
    new-instance v1, Lorg/light/NativeBuffer;

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$buffer:Landroid/hardware/HardwareBuffer;

    invoke-direct {v1, v2}, Lorg/light/NativeBuffer;-><init>(Landroid/hardware/HardwareBuffer;)V

    const/16 v2, 0xde1

    .line 4
    invoke-static {v2}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Lorg/light/NativeBuffer;->bindTexture(I)Z

    .line 6
    invoke-virtual {v1}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v2

    iget v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$width:I

    iget v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$height:I

    iget-boolean v5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$flipY:Z

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/light/LightSurface;->makeFromNativeTexture(IIIZZ)Lorg/light/LightSurface;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$iid:[Lorg/light/service/InstanceId;

    if-eqz v2, :cond_0

    new-instance v4, Lorg/light/service/InstanceId;

    iget-object v5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-static {v5, v2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$900(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v4, v2}, Lorg/light/service/InstanceId;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v2, 0x0

    aput-object v4, v3, v2

    .line 8
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$iid:[Lorg/light/service/InstanceId;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v3, v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v3}, Lorg/light/service/LightSDKService;->access$1200(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$iid:[Lorg/light/service/InstanceId;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/light/service/InstanceId;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$1000(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;->val$iid:[Lorg/light/service/InstanceId;

    aget-object v2, v3, v2

    iget v2, v2, Lorg/light/service/InstanceId;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
