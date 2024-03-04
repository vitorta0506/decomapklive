.class public final Lcom/tencent/tmediacodec/hook/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/tmediacodec/hook/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/tmediacodec/hook/a;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/tmediacodec/hook/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p0    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "realReleaseSurfaceTexture surfaceTexture:"

    const-string v1, "HookManager"

    .line 9
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmediacodec/hook/a;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ignoreThrowable"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/tencent/tmediacodec/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    sget-object v0, Lcom/tencent/tmediacodec/hook/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/tmediacodec/hook/b;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/tencent/tmediacodec/hook/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/tencent/tmediacodec/hook/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "after hookSurfaceCallback size:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mHoldCallbackMap:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HookManager"

    invoke-static {p1, p0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-boolean p0, Lcom/tencent/tmediacodec/hook/a;->a:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 6
    sput-boolean p0, Lcom/tencent/tmediacodec/hook/a;->a:Z

    .line 7
    new-instance p0, Lcom/tencent/tmediacodec/hook/a$1;

    invoke-direct {p0}, Lcom/tencent/tmediacodec/hook/a$1;-><init>()V

    invoke-static {p0}, Lcom/tencent/tmediacodec/hook/THookTextureView;->setHookCallback(Lcom/tencent/tmediacodec/hook/THookTextureView$a;)V

    :cond_1
    return-void
.end method
