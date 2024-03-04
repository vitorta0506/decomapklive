.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightSurfaceRelease(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$lightSurfaceInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->val$lightSurfaceInstanceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->val$lightSurfaceInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/LightSurface;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$1200(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->val$lightSurfaceInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/NativeBuffer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v2

    invoke-static {v2}, Lorg/light/utils/LightGLUtils;->deleteTexture(I)V

    .line 4
    invoke-virtual {v1}, Lorg/light/NativeBuffer;->release()V

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$800(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->val$lightSurfaceInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/NativeBuffer;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v2

    invoke-static {v2}, Lorg/light/utils/LightGLUtils;->deleteTexture(I)V

    .line 7
    invoke-virtual {v1}, Lorg/light/NativeBuffer;->release()V

    .line 8
    :cond_1
    invoke-virtual {v0}, Lorg/light/LightSurface;->release()V

    .line 9
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$1000(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->val$lightSurfaceInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/EGLSurface;

    .line 10
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/light/gles/EglCore;->makeNothingCurrent()V

    .line 12
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/light/gles/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$1000(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->val$lightSurfaceInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;->val$lightSurfaceInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$1300(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    return-void
.end method
