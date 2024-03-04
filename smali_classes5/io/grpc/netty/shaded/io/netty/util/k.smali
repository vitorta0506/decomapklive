.class public Lio/grpc/netty/shaded/io/netty/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/k$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/util/k;",
            "[",
            "Lio/grpc/netty/shaded/io/netty/util/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[Lio/grpc/netty/shaded/io/netty/util/k$a;


# instance fields
.field private volatile a:[Lio/grpc/netty/shaded/io/netty/util/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/k;

    const-class v1, [Lio/grpc/netty/shaded/io/netty/util/k$a;

    const-string v2, "a"

    .line 2
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    new-array v0, v0, [Lio/grpc/netty/shaded/io/netty/util/k$a;

    .line 3
    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/k;->c:[Lio/grpc/netty/shaded/io/netty/util/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/k;->c:[Lio/grpc/netty/shaded/io/netty/util/k$a;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/k;->a:[Lio/grpc/netty/shaded/io/netty/util/k$a;

    return-void
.end method

.method private static a([Lio/grpc/netty/shaded/io/netty/util/k$a;I[Lio/grpc/netty/shaded/io/netty/util/k$a;Lio/grpc/netty/shaded/io/netty/util/k$a;)V
    .locals 3

    .line 1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/k$a;->a(Lio/grpc/netty/shaded/io/netty/util/k$a;)Lio/grpc/netty/shaded/io/netty/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/a;->b()I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 2
    aget-object v1, p0, p1

    .line 3
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/k$a;->a(Lio/grpc/netty/shaded/io/netty/util/k$a;)Lio/grpc/netty/shaded/io/netty/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/util/a;->b()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 4
    aget-object v2, p0, p1

    aput-object v2, p2, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 5
    aput-object p3, p2, p1

    if-lez p1, :cond_2

    const/4 p3, 0x0

    .line 6
    invoke-static {p0, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static b([Lio/grpc/netty/shaded/io/netty/util/k$a;Lio/grpc/netty/shaded/io/netty/util/e;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/netty/shaded/io/netty/util/k$a;",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;)I"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    .line 2
    aget-object v5, p0, v4

    .line 3
    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/util/k$a;->a(Lio/grpc/netty/shaded/io/netty/util/k$a;)Lio/grpc/netty/shaded/io/netty/util/e;

    move-result-object v5

    if-ne v5, p1, :cond_0

    return v4

    .line 4
    :cond_0
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/util/a;->b()I

    move-result v5

    .line 5
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/a;->b()I

    move-result v6

    if-ge v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, -0x1

    move v0, v4

    goto :goto_0

    :cond_3
    add-int/2addr v3, v1

    neg-int p0, v3

    return p0
.end method


# virtual methods
.method public T(Lio/grpc/netty/shaded/io/netty/util/e;)Lio/grpc/netty/shaded/io/netty/util/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "TT;>;)",
            "Lio/grpc/netty/shaded/io/netty/util/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/k;->a:[Lio/grpc/netty/shaded/io/netty/util/k$a;

    .line 3
    invoke-static {v1, p1}, Lio/grpc/netty/shaded/io/netty/util/k;->b([Lio/grpc/netty/shaded/io/netty/util/k$a;Lio/grpc/netty/shaded/io/netty/util/e;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 4
    aget-object v3, v1, v2

    .line 5
    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/k$a;->b(Lio/grpc/netty/shaded/io/netty/util/k$a;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/k$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/k$a;-><init>(Lio/grpc/netty/shaded/io/netty/util/k;Lio/grpc/netty/shaded/io/netty/util/e;)V

    .line 7
    :cond_2
    array-length v3, v1

    .line 8
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/grpc/netty/shaded/io/netty/util/k$a;

    .line 9
    aput-object v0, v3, v2

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 10
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/k$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/k$a;-><init>(Lio/grpc/netty/shaded/io/netty/util/k;Lio/grpc/netty/shaded/io/netty/util/e;)V

    .line 11
    :cond_4
    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    .line 12
    new-array v3, v3, [Lio/grpc/netty/shaded/io/netty/util/k$a;

    .line 13
    invoke-static {v1, v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/k;->a([Lio/grpc/netty/shaded/io/netty/util/k$a;I[Lio/grpc/netty/shaded/io/netty/util/k$a;Lio/grpc/netty/shaded/io/netty/util/k$a;)V

    .line 14
    :goto_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method
