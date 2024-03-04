.class public abstract Lio/grpc/netty/shaded/io/netty/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/netty/shaded/io/netty/util/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lio/grpc/netty/shaded/io/netty/util/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/a;->a:I

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/util/a;->b:Ljava/lang/String;

    .line 4
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/util/a;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/netty/shaded/io/netty/util/a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/a;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/a;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    .line 2
    :cond_1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/a;->c:J

    iget-wide v2, p1, Lio/grpc/netty/shaded/io/netty/util/a;->c:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/Error;

    const-string v0, "failed to compare two different constants"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/a;->a:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/a;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/a;->a(Lio/grpc/netty/shaded/io/netty/util/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
