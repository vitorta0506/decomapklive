.class final Lkg/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg/b0$b;,
        Lkg/b0$c;,
        Lkg/b0$d;
    }
.end annotation


# static fields
.field private static final j:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field final a:Lkg/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/v<",
            "[B>;"
        }
    .end annotation
.end field

.field final b:Lkg/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/v<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lkg/b0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkg/b0$b<",
            "[B>;"
        }
    .end annotation
.end field

.field private final d:[Lkg/b0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkg/b0$b<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[Lkg/b0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkg/b0$b<",
            "[B>;"
        }
    .end annotation
.end field

.field private final f:[Lkg/b0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkg/b0$b<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkg/b0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lkg/b0;->j:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method constructor <init>(Lkg/v;Lkg/v;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "[B>;",
            "Lkg/v<",
            "Ljava/nio/ByteBuffer;",
            ">;IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lkg/b0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "maxCachedBufferCapacity"

    .line 3
    invoke-static {p5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 4
    iput p6, p0, Lkg/b0;->g:I

    .line 5
    iput-object p1, p0, Lkg/b0;->a:Lkg/v;

    .line 6
    iput-object p2, p0, Lkg/b0;->b:Lkg/v;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 7
    iget v1, p2, Lkg/v;->o:I

    invoke-static {p3, v1}, Lkg/b0;->j(II)[Lkg/b0$b;

    move-result-object v1

    iput-object v1, p0, Lkg/b0;->d:[Lkg/b0$b;

    .line 8
    invoke-static {p4, p5, p2}, Lkg/b0;->i(IILkg/v;)[Lkg/b0$b;

    move-result-object v1

    iput-object v1, p0, Lkg/b0;->f:[Lkg/b0$b;

    .line 9
    iget-object p2, p2, Lkg/v;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_0

    .line 10
    :cond_0
    iput-object v0, p0, Lkg/b0;->d:[Lkg/b0$b;

    .line 11
    iput-object v0, p0, Lkg/b0;->f:[Lkg/b0$b;

    :goto_0
    if-eqz p1, :cond_1

    .line 12
    iget p2, p1, Lkg/v;->o:I

    invoke-static {p3, p2}, Lkg/b0;->j(II)[Lkg/b0$b;

    move-result-object p2

    iput-object p2, p0, Lkg/b0;->c:[Lkg/b0$b;

    .line 13
    invoke-static {p4, p5, p1}, Lkg/b0;->i(IILkg/v;)[Lkg/b0$b;

    move-result-object p2

    iput-object p2, p0, Lkg/b0;->e:[Lkg/b0$b;

    .line 14
    iget-object p1, p1, Lkg/v;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_1

    .line 15
    :cond_1
    iput-object v0, p0, Lkg/b0;->c:[Lkg/b0$b;

    .line 16
    iput-object v0, p0, Lkg/b0;->e:[Lkg/b0$b;

    .line 17
    :goto_1
    iget-object p1, p0, Lkg/b0;->d:[Lkg/b0$b;

    if-nez p1, :cond_2

    iget-object p1, p0, Lkg/b0;->f:[Lkg/b0$b;

    if-nez p1, :cond_2

    iget-object p1, p0, Lkg/b0;->c:[Lkg/b0$b;

    if-nez p1, :cond_2

    iget-object p1, p0, Lkg/b0;->e:[Lkg/b0$b;

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    if-lt p6, p1, :cond_4

    :cond_3
    return-void

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "freeSweepAllocationThreshold: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (expected: > 0)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lkg/b0$b;Lkg/c0;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/b0$b<",
            "*>;",
            "Lkg/c0;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1, p2, p3, p0}, Lkg/b0$b;->b(Lkg/c0;ILkg/b0;)Z

    move-result p1

    .line 2
    iget p2, p0, Lkg/b0;->i:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lkg/b0;->i:I

    iget p3, p0, Lkg/b0;->g:I

    if-lt p2, p3, :cond_1

    .line 3
    iput v0, p0, Lkg/b0;->i:I

    .line 4
    invoke-virtual {p0}, Lkg/b0;->o()V

    :cond_1
    return p1
.end method

.method private e(Lkg/v;ILkg/v$d;)Lkg/b0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "*>;I",
            "Lkg/v$d;",
            ")",
            "Lkg/b0$b<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkg/b0$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lkg/b0;->h(Lkg/v;I)Lkg/b0$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lkg/b0;->g(Lkg/v;I)Lkg/b0$b;

    move-result-object p1

    return-object p1
.end method

.method private static f([Lkg/b0$b;I)Lkg/b0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lkg/b0$b<",
            "TT;>;I)",
            "Lkg/b0$b<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private g(Lkg/v;I)Lkg/b0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "*>;I)",
            "Lkg/b0$b<",
            "*>;"
        }
    .end annotation

    .line 1
    iget v0, p1, Lkg/v;->o:I

    sub-int/2addr p2, v0

    .line 2
    invoke-virtual {p1}, Lkg/v;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lkg/b0;->f:[Lkg/b0$b;

    invoke-static {p1, p2}, Lkg/b0;->f([Lkg/b0$b;I)Lkg/b0$b;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lkg/b0;->e:[Lkg/b0$b;

    invoke-static {p1, p2}, Lkg/b0;->f([Lkg/b0$b;I)Lkg/b0$b;

    move-result-object p1

    return-object p1
.end method

.method private h(Lkg/v;I)Lkg/b0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "*>;I)",
            "Lkg/b0$b<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkg/v;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lkg/b0;->d:[Lkg/b0$b;

    invoke-static {p1, p2}, Lkg/b0;->f([Lkg/b0$b;I)Lkg/b0$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lkg/b0;->c:[Lkg/b0$b;

    invoke-static {p1, p2}, Lkg/b0;->f([Lkg/b0$b;I)Lkg/b0$b;

    move-result-object p1

    return-object p1
.end method

.method private static i(IILkg/v;)[Lkg/b0$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lkg/v<",
            "TT;>;)[",
            "Lkg/b0$b<",
            "TT;>;"
        }
    .end annotation

    if-lez p0, :cond_1

    if-lez p1, :cond_1

    .line 1
    iget v0, p2, Lkg/q0;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget v1, p2, Lkg/v;->o:I

    :goto_0
    iget v2, p2, Lkg/q0;->e:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p2, v1}, Lkg/q0;->l(I)I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 4
    new-instance v2, Lkg/b0$c;

    invoke-direct {v2, p0}, Lkg/b0$c;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lkg/b0$b;

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkg/b0$b;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(II)[Lkg/b0$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)[",
            "Lkg/b0$b<",
            "TT;>;"
        }
    .end annotation

    if-lez p0, :cond_1

    if-lez p1, :cond_1

    .line 1
    new-array v0, p1, [Lkg/b0$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2
    new-instance v2, Lkg/b0$d;

    invoke-direct {v2, p0}, Lkg/b0$d;-><init>(I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static k(Lkg/b0$b;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/b0$b<",
            "*>;Z)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lkg/b0$b;->d(Z)I

    move-result p0

    return p0
.end method

.method private static l([Lkg/b0$b;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkg/b0$b<",
            "*>;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 2
    invoke-static {v3, p1}, Lkg/b0;->k(Lkg/b0$b;Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static n(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private static p(Lkg/b0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/b0$b<",
            "*>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lkg/b0$b;->h()V

    return-void
.end method

.method private static q([Lkg/b0$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkg/b0$b<",
            "*>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Lkg/b0;->p(Lkg/b0$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a(Lkg/v;Lkg/w;Ljava/nio/ByteBuffer;JILkg/v$d;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "*>;",
            "Lkg/w;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lkg/v$d;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p6}, Lkg/q0;->h(I)I

    move-result v0

    .line 2
    invoke-direct {p0, p1, v0, p7}, Lkg/b0;->e(Lkg/v;ILkg/v$d;)Lkg/b0$b;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    .line 3
    invoke-virtual/range {v1 .. v6}, Lkg/b0$b;->a(Lkg/w;Ljava/nio/ByteBuffer;JI)Z

    move-result p1

    return p1
.end method

.method c(Lkg/v;Lkg/c0;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "*>;",
            "Lkg/c0<",
            "*>;II)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lkg/b0;->g(Lkg/v;I)Lkg/b0$b;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lkg/b0;->b(Lkg/b0$b;Lkg/c0;I)Z

    move-result p1

    return p1
.end method

.method d(Lkg/v;Lkg/c0;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/v<",
            "*>;",
            "Lkg/c0<",
            "*>;II)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lkg/b0;->h(Lkg/v;I)Lkg/b0$b;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lkg/b0;->b(Lkg/b0$b;Lkg/c0;I)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, v0}, Lkg/b0;->m(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lkg/b0;->m(Z)V

    .line 3
    throw v1
.end method

.method m(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkg/b0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lkg/b0;->d:[Lkg/b0$b;

    invoke-static {v0, p1}, Lkg/b0;->l([Lkg/b0$b;Z)I

    move-result v0

    iget-object v1, p0, Lkg/b0;->f:[Lkg/b0$b;

    .line 3
    invoke-static {v1, p1}, Lkg/b0;->l([Lkg/b0$b;Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lkg/b0;->c:[Lkg/b0$b;

    .line 4
    invoke-static {v1, p1}, Lkg/b0;->l([Lkg/b0$b;Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lkg/b0;->e:[Lkg/b0$b;

    .line 5
    invoke-static {v1, p1}, Lkg/b0;->l([Lkg/b0$b;Z)I

    move-result p1

    add-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 6
    sget-object p1, Lkg/b0;->j:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Freed {} thread-local buffer(s) from thread: {}"

    .line 9
    invoke-interface {p1, v2, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lkg/b0;->b:Lkg/v;

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p1, Lkg/v;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 12
    :cond_1
    iget-object p1, p0, Lkg/b0;->a:Lkg/v;

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p1, Lkg/v;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    :cond_2
    return-void
.end method

.method o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/b0;->d:[Lkg/b0$b;

    invoke-static {v0}, Lkg/b0;->q([Lkg/b0$b;)V

    .line 2
    iget-object v0, p0, Lkg/b0;->f:[Lkg/b0$b;

    invoke-static {v0}, Lkg/b0;->q([Lkg/b0$b;)V

    .line 3
    iget-object v0, p0, Lkg/b0;->c:[Lkg/b0$b;

    invoke-static {v0}, Lkg/b0;->q([Lkg/b0$b;)V

    .line 4
    iget-object v0, p0, Lkg/b0;->e:[Lkg/b0$b;

    invoke-static {v0}, Lkg/b0;->q([Lkg/b0$b;)V

    return-void
.end method
