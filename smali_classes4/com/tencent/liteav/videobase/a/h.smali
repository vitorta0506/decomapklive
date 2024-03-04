.class public Lcom/tencent/liteav/videobase/a/h;
.super Lcom/tencent/liteav/videobase/a/b;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TXCGPUImageFilterChain"


# instance fields
.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterceptorsBeforeFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/liteav/videobase/a/b;",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLastInterceptors:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mNormalCubeVerticesBuffer:Ljava/nio/FloatBuffer;

.field private final mNormalTextureCoordsBuffer:Ljava/nio/FloatBuffer;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mFilters:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mInterceptorsBeforeFilter:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/a/h;->mTimestamp:J

    .line 6
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createNormalCubeVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mNormalCubeVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 7
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTextureCoordsBuffer(Lcom/tencent/liteav/videobase/utils/Rotation;ZZ)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mNormalTextureCoordsBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/liteav/videobase/a/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/h;->initFiltersAndInterceptors()V

    return-void
.end method

.method private doIntercept(Ljava/util/List;Lcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/a/a;",
            ">;",
            "Lcom/tencent/liteav/videobase/frame/d;",
            ")",
            "Lcom/tencent/liteav/videobase/frame/d;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/a/a;

    .line 3
    iget-wide v2, p0, Lcom/tencent/liteav/videobase/a/h;->mTimestamp:J

    if-nez v0, :cond_1

    move-object v4, p2

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/liteav/videobase/a/a;->a(JLcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "TXCGPUImageFilterChain"

    const-string p2, "doIntercept return null value"

    .line 4
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    if-eq v1, v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    :goto_3
    return-object p2
.end method

.method private doLastIntercept(Lcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "TXCGPUImageFilterChain"

    const-string v0, "last interceptors intecept on surface."

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/h;->doIntercept(Ljava/util/List;Lcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p1

    return-object p1
.end method

.method private initFiltersAndInterceptors()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/a/b;

    .line 2
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/a/b;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mInterceptorsBeforeFilter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videobase/a/a;

    .line 7
    iget-boolean v3, v2, Lcom/tencent/liteav/videobase/a/a;->a:Z

    if-nez v3, :cond_3

    .line 8
    iget-object v3, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/a/a;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/a/a;

    .line 10
    iget-boolean v2, v1, Lcom/tencent/liteav/videobase/a/a;->a:Z

    if-nez v2, :cond_5

    .line 11
    iget-object v2, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/a/a;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private initFiltersAndInterceptorsOnDraw()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videobase/a/i;->a(Lcom/tencent/liteav/videobase/a/h;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/b;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addFilter(Lcom/tencent/liteav/videobase/a/b;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mFilters:Ljava/util/List;

    new-instance v1, Lcom/tencent/liteav/videobase/a/b;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/a/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TXCGPUImageFilterChain"

    const-string v1, "add COPY filter to filter chain."

    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mInterceptorsBeforeFilter:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/h;->initFiltersAndInterceptorsOnDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addInterceptor(Lcom/tencent/liteav/videobase/a/a;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/h;->initFiltersAndInterceptorsOnDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 3
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->runPendingOnDrawTasks()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mFilters:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_e

    .line 5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/liteav/videobase/a/b;

    .line 6
    invoke-virtual {v5}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v6

    if-eqz v2, :cond_4

    .line 7
    iget-object v7, p0, Lcom/tencent/liteav/videobase/a/h;->mInterceptorsBeforeFilter:Ljava/util/Map;

    .line 8
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v7, v2}, Lcom/tencent/liteav/videobase/a/h;->doIntercept(Ljava/util/List;Lcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eq v7, v2, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    :cond_2
    if-eqz v7, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/d;->d()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/tencent/liteav/videobase/frame/d;->a(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    :cond_3
    move-object v2, v7

    :cond_4
    add-int/lit8 v7, v1, -0x1

    const/4 v8, 0x1

    if-ge v4, v7, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_6

    .line 11
    iget-object v9, p0, Lcom/tencent/liteav/videobase/a/h;->mInterceptorsBeforeFilter:Ljava/util/Map;

    add-int/lit8 v10, v4, 0x1

    .line 12
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-static {v9}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    if-eqz v7, :cond_8

    .line 13
    iget-object v9, p0, Lcom/tencent/liteav/videobase/a/b;->mOutputSize:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v6, v9}, Lcom/tencent/liteav/base/util/q;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v5}, Lcom/tencent/liteav/videobase/a/b;->canBeSkipped()Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v2, :cond_7

    if-nez v8, :cond_8

    .line 14
    :cond_7
    invoke-virtual {v5}, Lcom/tencent/liteav/videobase/a/b;->onFilterBeenSkipped()V

    goto :goto_6

    :cond_8
    if-eqz v7, :cond_9

    .line 15
    iget-object v7, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v8, v6, Lcom/tencent/liteav/base/util/q;->a:I

    iget v9, v6, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v7, v8, v9}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v7

    goto :goto_3

    :cond_9
    move-object v7, p2

    .line 16
    :goto_3
    iget v8, v6, Lcom/tencent/liteav/base/util/q;->a:I

    iget v6, v6, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-static {v3, v3, v8, v6}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    if-nez v2, :cond_a

    move v6, p1

    goto :goto_4

    .line 17
    :cond_a
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v6

    :goto_4
    if-nez v4, :cond_b

    .line 18
    invoke-virtual {v5, v6, v7, p3, p4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_5

    .line 19
    :cond_b
    iget-object v8, p0, Lcom/tencent/liteav/videobase/a/h;->mNormalCubeVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/tencent/liteav/videobase/a/h;->mNormalTextureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :goto_5
    if-eqz v2, :cond_c

    .line 20
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    :cond_c
    if-eqz v7, :cond_d

    .line 21
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/d;->d()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/tencent/liteav/videobase/frame/d;->a(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    :cond_d
    move-object v2, v7

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v2, :cond_f

    if-eq v2, p2, :cond_f

    .line 22
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 23
    :cond_f
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videobase/a/h;->doLastIntercept(Lcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p1

    if-eqz p1, :cond_10

    if-eq p1, p2, :cond_10

    .line 24
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result p3

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result p4

    invoke-static {v3, v3, p3, p4}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 25
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p3

    iget-object p4, p0, Lcom/tencent/liteav/videobase/a/h;->mNormalCubeVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mNormalTextureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-super {p0, p3, p2, p4, v0}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 26
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    :cond_10
    return-void
.end method

.method protected onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/h;->initFiltersAndInterceptors()V

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/a/b;

    .line 3
    invoke-virtual {v1, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUninit()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->onUninit()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/a/b;

    .line 3
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mInterceptorsBeforeFilter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videobase/a/a;

    .line 7
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/a/a;->a()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/a/a;

    .line 9
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/a/a;->a()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public declared-synchronized removeAllFilterAndInterceptor()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mInterceptorsBeforeFilter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/h;->mLastInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/liteav/videobase/a/h;->mTimestamp:J

    return-void
.end method
