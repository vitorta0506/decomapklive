.class public abstract Lio/grpc/netty/shaded/io/netty/util/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/q$e;,
        Lio/grpc/netty/shaded/io/netty/util/q$c;,
        Lio/grpc/netty/shaded/io/netty/util/q$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final e:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final f:Lio/grpc/netty/shaded/io/netty/util/q$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/q$d<",
            "*>;"
        }
    .end annotation
.end field

.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lug/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/n<",
            "Lio/grpc/netty/shaded/io/netty/util/q$e<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/q;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/q;->e:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/util/q$a;

    invoke-direct {v1}, Lio/grpc/netty/shaded/io/netty/util/q$a;-><init>()V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/q;->f:Lio/grpc/netty/shaded/io/netty/util/q$d;

    const-string v1, "io.grpc.netty.shaded.io.netty.recycler.maxCapacity"

    const/16 v2, 0x1000

    .line 3
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "io.grpc.netty.shaded.io.netty.recycler.maxCapacityPerThread"

    .line 4
    invoke-static {v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 5
    :goto_0
    sput v2, Lio/grpc/netty/shaded/io/netty/util/q;->g:I

    const/16 v1, 0x20

    const-string v3, "io.grpc.netty.shaded.io.netty.recycler.chunkSize"

    .line 6
    invoke-static {v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/grpc/netty/shaded/io/netty/util/q;->i:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    const-string v5, "io.grpc.netty.shaded.io.netty.recycler.ratio"

    .line 7
    invoke-static {v5, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lio/grpc/netty/shaded/io/netty/util/q;->h:I

    .line 8
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    const-string v1, "-Dio.netty.recycler.maxCapacityPerThread: disabled"

    .line 9
    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    const-string v1, "-Dio.netty.recycler.ratio: disabled"

    .line 10
    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    const-string v1, "-Dio.netty.recycler.chunkSize: disabled"

    .line 11
    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "-Dio.netty.recycler.maxCapacityPerThread: {}"

    invoke-interface {v0, v4, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.recycler.ratio: {}"

    invoke-interface {v0, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.recycler.chunkSize: {}"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lio/grpc/netty/shaded/io/netty/util/q;->g:I

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/q;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    .line 2
    sget v0, Lio/grpc/netty/shaded/io/netty/util/q;->h:I

    sget v1, Lio/grpc/netty/shaded/io/netty/util/q;->i:I

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/q;-><init>(III)V

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/q$b;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/q$b;-><init>(Lio/grpc/netty/shaded/io/netty/util/q;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/q;->d:Lug/n;

    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/util/q;->b:I

    if-gtz p1, :cond_0

    .line 6
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/q;->a:I

    .line 7
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/q;->c:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 8
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/q;->a:I

    const/4 p2, 0x2

    shr-int/lit8 p1, p1, 0x1

    .line 9
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/q;->c:I

    :goto_0
    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/util/q;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/util/q;->a:I

    return p0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/util/q;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/util/q;->b:I

    return p0
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/util/q;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/util/q;->c:I

    return p0
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/q;->a:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/q;->f:Lio/grpc/netty/shaded/io/netty/util/q$d;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/q;->e(Lio/grpc/netty/shaded/io/netty/util/q$d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/q;->d:Lug/n;

    invoke-virtual {v0}, Lug/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/q$e;

    .line 4
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/q$e;->b()Lio/grpc/netty/shaded/io/netty/util/q$c;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/q$e;->c()Lio/grpc/netty/shaded/io/netty/util/q$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/q;->e(Lio/grpc/netty/shaded/io/netty/util/q$d;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/q$c;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/q;->f:Lio/grpc/netty/shaded/io/netty/util/q$d;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/q;->e(Lio/grpc/netty/shaded/io/netty/util/q$d;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/util/q$c;->c()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected abstract e(Lio/grpc/netty/shaded/io/netty/util/q$d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/q$d<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
