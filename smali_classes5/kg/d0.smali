.class public Lkg/d0;
.super Lkg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg/d0$b;
    }
.end annotation


# static fields
.field public static final A:Lkg/d0;

.field private static final n:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final o:I

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field static final u:I

.field private static final v:I

.field private static final w:J

.field private static final x:Z

.field private static final y:I

.field static final z:I


# instance fields
.field private final d:Ljava/lang/Runnable;

.field private final e:[Lkg/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkg/v<",
            "[B>;"
        }
    .end annotation
.end field

.field private final f:[Lkg/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkg/v<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lkg/d0$b;

.field private final l:I

.field private final m:Lkg/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    const-class v0, Lkg/d0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lkg/d0;->n:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v0, "io.grpc.netty.shaded.io.netty.allocator.directMemoryCacheAlignment"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "io.grpc.netty.shaded.io.netty.allocator.pageSize"

    const/16 v3, 0x2000

    .line 3
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    .line 4
    :try_start_0
    invoke-static {v2, v0}, Lkg/d0;->W(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v0

    const/4 v0, 0x0

    const/16 v2, 0x2000

    .line 5
    :goto_0
    sput v2, Lkg/d0;->q:I

    .line 6
    sput v0, Lkg/d0;->y:I

    const-string v0, "io.grpc.netty.shaded.io.netty.allocator.maxOrder"

    const/16 v6, 0xb

    .line 7
    invoke-static {v0, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    .line 8
    :try_start_1
    invoke-static {v2, v0}, Lkg/d0;->V(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v6, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 9
    :goto_1
    sput v6, Lkg/d0;->r:I

    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 11
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/p;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 12
    sget v7, Lkg/d0;->q:I

    shl-int v8, v7, v6

    int-to-long v9, v2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v11

    int-to-long v13, v8

    div-long/2addr v11, v13

    const-wide/16 v15, 0x2

    div-long/2addr v11, v15

    const-wide/16 v17, 0x3

    div-long v11, v11, v17

    .line 14
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v0, v11

    const-string v2, "io.grpc.netty.shaded.io.netty.allocator.numHeapArenas"

    .line 15
    invoke-static {v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    .line 16
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lkg/d0;->o:I

    .line 17
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->m0()J

    move-result-wide v11

    div-long/2addr v11, v13

    div-long/2addr v11, v15

    div-long v11, v11, v17

    .line 18
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v2, v8

    const-string v8, "io.grpc.netty.shaded.io.netty.allocator.numDirectArenas"

    .line 19
    invoke-static {v8, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v2

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lkg/d0;->p:I

    const/16 v2, 0x100

    const-string v8, "io.grpc.netty.shaded.io.netty.allocator.smallCacheSize"

    .line 21
    invoke-static {v8, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lkg/d0;->s:I

    const/16 v8, 0x40

    const-string v9, "io.grpc.netty.shaded.io.netty.allocator.normalCacheSize"

    .line 22
    invoke-static {v9, v8}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lkg/d0;->t:I

    const v9, 0x8000

    const-string v10, "io.grpc.netty.shaded.io.netty.allocator.maxCachedBufferCapacity"

    .line 23
    invoke-static {v10, v9}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lkg/d0;->u:I

    const-string v10, "io.grpc.netty.shaded.io.netty.allocator.cacheTrimInterval"

    .line 24
    invoke-static {v10, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lkg/d0;->v:I

    const-string v10, "io.grpc.netty.shaded.io.netty.allocation.cacheTrimIntervalMillis"

    .line 25
    invoke-static {v10}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->a(Ljava/lang/String;)Z

    move-result v11

    const-wide/16 v12, 0x0

    const-string v14, "io.grpc.netty.shaded.io.netty.allocator.cacheTrimIntervalMillis"

    if-eqz v11, :cond_1

    .line 26
    sget-object v11, Lkg/d0;->n:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v15, "-Dio.netty.allocation.cacheTrimIntervalMillis is deprecated, use -Dio.netty.allocator.cacheTrimIntervalMillis"

    invoke-interface {v11, v15}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 27
    invoke-static {v14}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 28
    invoke-static {v14, v12, v13}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->f(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lkg/d0;->w:J

    goto :goto_2

    .line 29
    :cond_0
    invoke-static {v10, v12, v13}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->f(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lkg/d0;->w:J

    goto :goto_2

    .line 30
    :cond_1
    invoke-static {v14, v12, v13}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->f(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lkg/d0;->w:J

    :goto_2
    const/4 v10, 0x1

    const-string v11, "io.grpc.netty.shaded.io.netty.allocator.useCacheForAllThreads"

    .line 31
    invoke-static {v11, v10}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lkg/d0;->x:Z

    const/16 v11, 0x3ff

    const-string v12, "io.grpc.netty.shaded.io.netty.allocator.maxCachedByteBuffersPerChunk"

    .line 32
    invoke-static {v12, v11}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v11

    sput v11, Lkg/d0;->z:I

    .line 33
    sget-object v12, Lkg/d0;->n:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v13, "-Dio.netty.allocator.numHeapArenas: {}"

    invoke-interface {v12, v13, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.numDirectArenas: {}"

    invoke-interface {v12, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.pageSize: {}"

    if-nez v5, :cond_2

    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 37
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v0, v1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "-Dio.netty.allocator.maxOrder: {}"

    if-nez v4, :cond_3

    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 39
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v0, v1, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    shl-int v0, v7, v6

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.chunkSize: {}"

    invoke-interface {v12, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.smallCacheSize: {}"

    invoke-interface {v12, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.normalCacheSize: {}"

    invoke-interface {v12, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.maxCachedBufferCapacity: {}"

    invoke-interface {v12, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.cacheTrimInterval: {}"

    invoke-interface {v12, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    sget-wide v0, Lkg/d0;->w:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.cacheTrimIntervalMillis: {}"

    invoke-interface {v12, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.useCacheForAllThreads: {}"

    invoke-interface {v12, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.maxCachedByteBuffersPerChunk: {}"

    .line 48
    invoke-interface {v12, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    :cond_4
    new-instance v0, Lkg/d0;

    .line 50
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->v()Z

    move-result v1

    invoke-direct {v0, v1}, Lkg/d0;-><init>(Z)V

    sput-object v0, Lkg/d0;->A:Lkg/d0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkg/d0;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6

    .line 2
    sget v2, Lkg/d0;->o:I

    sget v3, Lkg/d0;->p:I

    sget v4, Lkg/d0;->q:I

    sget v5, Lkg/d0;->r:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lkg/d0;-><init>(ZIIII)V

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    sget v7, Lkg/d0;->s:I

    sget v8, Lkg/d0;->t:I

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lkg/d0;-><init>(ZIIIIIII)V

    return-void
.end method

.method public constructor <init>(ZIIIIIII)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget-boolean v8, Lkg/d0;->x:Z

    sget v9, Lkg/d0;->y:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v9}, Lkg/d0;-><init>(ZIIIIIIZI)V

    return-void
.end method

.method public constructor <init>(ZIIIIIIZ)V
    .locals 10

    .line 5
    sget v9, Lkg/d0;->y:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lkg/d0;-><init>(ZIIIIIIZI)V

    return-void
.end method

.method public constructor <init>(ZIIIIIIZI)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p2

    move/from16 v7, p3

    move/from16 v8, p9

    .line 6
    invoke-direct/range {p0 .. p1}, Lkg/b;-><init>(Z)V

    .line 7
    new-instance v1, Lkg/d0$a;

    invoke-direct {v1, v6}, Lkg/d0$a;-><init>(Lkg/d0;)V

    iput-object v1, v6, Lkg/d0;->d:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lkg/d0$b;

    move/from16 v2, p8

    invoke-direct {v1, v6, v2}, Lkg/d0$b;-><init>(Lkg/d0;Z)V

    iput-object v1, v6, Lkg/d0;->k:Lkg/d0$b;

    move/from16 v1, p6

    .line 9
    iput v1, v6, Lkg/d0;->g:I

    move/from16 v1, p7

    .line 10
    iput v1, v6, Lkg/d0;->h:I

    if-eqz v8, :cond_1

    .line 11
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, p4

    int-to-long v1, v1

    .line 12
    invoke-static {v1, v2, v8}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->g(JI)J

    move-result-wide v1

    long-to-int v2, v1

    move/from16 v1, p5

    move v9, v2

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Buffer alignment is not supported. Either Unsafe or ByteBuffer.alignSlice() must be available."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move/from16 v1, p4

    move v9, v1

    move/from16 v1, p5

    .line 14
    :goto_0
    invoke-static {v9, v1}, Lkg/d0;->V(II)I

    move-result v1

    iput v1, v6, Lkg/d0;->l:I

    const-string v1, "nHeapArena"

    .line 15
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    const-string v1, "nDirectArena"

    .line 16
    invoke-static {v7, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    const-string v1, "directMemoryCacheAlignment"

    .line 17
    invoke-static {v8, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-lez v8, :cond_3

    .line 18
    invoke-static {}, Lkg/d0;->J()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directMemoryCacheAlignment is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    neg-int v1, v8

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_8

    .line 20
    invoke-static {v9, v8}, Lkg/d0;->W(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-lez v0, :cond_5

    .line 21
    invoke-static/range {p2 .. p2}, Lkg/d0;->K(I)[Lkg/v;

    move-result-object v0

    iput-object v0, v6, Lkg/d0;->e:[Lkg/v;

    .line 22
    new-instance v13, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    .line 23
    :goto_2
    iget-object v0, v6, Lkg/d0;->e:[Lkg/v;

    array-length v0, v0

    if-ge v14, v0, :cond_4

    .line 24
    new-instance v15, Lkg/v$c;

    iget v4, v6, Lkg/d0;->l:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v9

    move v3, v10

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lkg/v$c;-><init>(Lkg/d0;IIII)V

    .line 25
    iget-object v0, v6, Lkg/d0;->e:[Lkg/v;

    aput-object v15, v0, v14

    .line 26
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 27
    :cond_4
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lkg/d0;->i:Ljava/util/List;

    goto :goto_3

    .line 28
    :cond_5
    iput-object v12, v6, Lkg/d0;->e:[Lkg/v;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lkg/d0;->i:Ljava/util/List;

    :goto_3
    if-lez v7, :cond_7

    .line 30
    invoke-static/range {p3 .. p3}, Lkg/d0;->K(I)[Lkg/v;

    move-result-object v0

    iput-object v0, v6, Lkg/d0;->f:[Lkg/v;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    :goto_4
    iget-object v0, v6, Lkg/d0;->f:[Lkg/v;

    array-length v0, v0

    if-ge v11, v0, :cond_6

    .line 33
    new-instance v0, Lkg/v$b;

    iget v2, v6, Lkg/d0;->l:I

    move-object/from16 p1, v0

    move-object/from16 p2, p0

    move/from16 p3, v9

    move/from16 p4, v10

    move/from16 p5, v2

    move/from16 p6, p9

    invoke-direct/range {p1 .. p6}, Lkg/v$b;-><init>(Lkg/d0;IIII)V

    .line 34
    iget-object v2, v6, Lkg/d0;->f:[Lkg/v;

    aput-object v0, v2, v11

    .line 35
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 36
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lkg/d0;->j:Ljava/util/List;

    goto :goto_5

    .line 37
    :cond_7
    iput-object v12, v6, Lkg/d0;->f:[Lkg/v;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lkg/d0;->j:Ljava/util/List;

    .line 39
    :goto_5
    new-instance v0, Lkg/e0;

    invoke-direct {v0, v6}, Lkg/e0;-><init>(Lkg/d0;)V

    iput-object v0, v6, Lkg/d0;->m:Lkg/e0;

    return-void

    .line 40
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directMemoryCacheAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: power of two)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static B()I
    .locals 1

    sget v0, Lkg/d0;->r:I

    return v0
.end method

.method public static C()I
    .locals 1

    sget v0, Lkg/d0;->t:I

    return v0
.end method

.method public static D()I
    .locals 1

    sget v0, Lkg/d0;->p:I

    return v0
.end method

.method public static E()I
    .locals 1

    sget v0, Lkg/d0;->o:I

    return v0
.end method

.method public static F()I
    .locals 1

    sget v0, Lkg/d0;->q:I

    return v0
.end method

.method public static G()Z
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->v()Z

    move-result v0

    return v0
.end method

.method public static H()I
    .locals 1

    sget v0, Lkg/d0;->s:I

    return v0
.end method

.method public static I()Z
    .locals 1

    sget-boolean v0, Lkg/d0;->x:Z

    return v0
.end method

.method public static J()Z
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    return v0
.end method

.method private static K(I)[Lkg/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lkg/v<",
            "TT;>;"
        }
    .end annotation

    new-array p0, p0, [Lkg/v;

    return-object p0
.end method

.method private static U([Lkg/v;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkg/v<",
            "*>;)J"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v6, p0, v1

    .line 2
    invoke-virtual {v6}, Lkg/v;->F()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-wide v4
.end method

.method private static V(II)I
    .locals 3

    const/16 v0, 0xe

    if-gt p1, v0, :cond_2

    move v1, p0

    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    const/high16 v2, 0x20000000

    if-gt v1, v2, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "pageSize (%d) << maxOrder (%d) must not exceed %d"

    .line 3
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxOrder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 0-14)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static W(II)I
    .locals 3

    const-string v0, "pageSize: "

    const/16 v1, 0x1000

    if-lt p0, v1, :cond_2

    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_1

    if-lt p0, p1, :cond_0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alignment cannot be greater than page size. Alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", page size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " (expected: power of 2)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " (expected: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic t(Lkg/d0;)[Lkg/v;
    .locals 0

    iget-object p0, p0, Lkg/d0;->e:[Lkg/v;

    return-object p0
.end method

.method static synthetic u(Lkg/d0;)[Lkg/v;
    .locals 0

    iget-object p0, p0, Lkg/d0;->f:[Lkg/v;

    return-object p0
.end method

.method static synthetic v(Lkg/d0;)I
    .locals 0

    iget p0, p0, Lkg/d0;->g:I

    return p0
.end method

.method static synthetic w(Lkg/d0;)I
    .locals 0

    iget p0, p0, Lkg/d0;->h:I

    return p0
.end method

.method static synthetic x()I
    .locals 1

    sget v0, Lkg/d0;->v:I

    return v0
.end method

.method static synthetic y()J
    .locals 2

    sget-wide v0, Lkg/d0;->w:J

    return-wide v0
.end method

.method static synthetic z(Lkg/d0;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lkg/d0;->d:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final A()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lkg/d0;->l:I

    return v0
.end method

.method public L()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lkg/d0;->h:I

    return v0
.end method

.method public M()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lkg/d0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public N()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lkg/d0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public O()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/d0;->e:[Lkg/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkg/d0;->f:[Lkg/v;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 3
    iget-object v4, v4, Lkg/v;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v3
.end method

.method public P()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lkg/d0;->g:I

    return v0
.end method

.method final Q()Lkg/b0;
    .locals 1

    iget-object v0, p0, Lkg/d0;->k:Lkg/d0$b;

    invoke-virtual {v0}, Lug/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/b0;

    return-object v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/d0;->k:Lkg/d0$b;

    invoke-virtual {v0}, Lug/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/b0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkg/b0;->o()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final S()J
    .locals 2

    iget-object v0, p0, Lkg/d0;->f:[Lkg/v;

    invoke-static {v0}, Lkg/d0;->U([Lkg/v;)J

    move-result-wide v0

    return-wide v0
.end method

.method final T()J
    .locals 2

    iget-object v0, p0, Lkg/d0;->e:[Lkg/v;

    invoke-static {v0}, Lkg/d0;->U([Lkg/v;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lkg/d0;->f:[Lkg/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected o(II)Lkg/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/d0;->k:Lkg/d0$b;

    invoke-virtual {v0}, Lug/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/b0;

    .line 2
    iget-object v1, v0, Lkg/b0;->b:Lkg/v;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0, p1, p2}, Lkg/v;->m(Lkg/b0;II)Lkg/c0;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, p1, p2}, Lkg/c1;->w(Lkg/k;II)Lkg/y0;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Lkg/u0;

    invoke-direct {v0, p0, p1, p2}, Lkg/u0;-><init>(Lkg/k;II)V

    move-object p1, v0

    .line 6
    :goto_0
    invoke-static {p1}, Lkg/b;->q(Lkg/j;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected p(II)Lkg/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/d0;->k:Lkg/d0$b;

    invoke-virtual {v0}, Lug/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/b0;

    .line 2
    iget-object v1, v0, Lkg/b0;->a:Lkg/v;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0, p1, p2}, Lkg/v;->m(Lkg/b0;II)Lkg/c0;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lkg/z0;

    invoke-direct {v0, p0, p1, p2}, Lkg/z0;-><init>(Lkg/k;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lkg/w0;

    invoke-direct {v0, p0, p1, p2}, Lkg/w0;-><init>(Lkg/k;II)V

    :goto_0
    move-object p1, v0

    .line 5
    :goto_1
    invoke-static {p1}, Lkg/b;->q(Lkg/j;)Lkg/j;

    move-result-object p1

    return-object p1
.end method
