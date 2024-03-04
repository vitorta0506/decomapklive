.class public Lug/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "F::",
        "Lug/q<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lug/r<",
        "TF;>;"
    }
.end annotation


# static fields
.field private static final c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final a:[Lug/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lug/x<",
            "-TV;>;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lug/z;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lug/z;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method public varargs constructor <init>(Z[Lug/x;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lug/x<",
            "-TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "promises"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    const-string v3, "promise"

    .line 4
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, [Lug/x;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lug/x;

    iput-object p2, p0, Lug/z;->a:[Lug/x;

    .line 6
    iput-boolean p1, p0, Lug/z;->b:Z

    return-void
.end method

.method public static a(Lug/q;Lug/x;)Lug/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "F::",
            "Lug/q<",
            "TV;>;>(TF;",
            "Lug/x<",
            "-TV;>;)TF;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lug/z;->b(ZLug/q;Lug/x;)Lug/q;

    move-result-object p0

    return-object p0
.end method

.method public static b(ZLug/q;Lug/x;)Lug/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "F::",
            "Lug/q<",
            "TV;>;>(ZTF;",
            "Lug/x<",
            "-TV;>;)TF;"
        }
    .end annotation

    .line 1
    new-instance v0, Lug/z$a;

    invoke-direct {v0, p1}, Lug/z$a;-><init>(Lug/q;)V

    invoke-interface {p2, v0}, Lug/x;->c(Lug/r;)Lug/x;

    .line 2
    new-instance v0, Lug/z$b;

    const/4 v1, 0x1

    new-array v1, v1, [Lug/x;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {v0, p0, v1, p2, p1}, Lug/z$b;-><init>(Z[Lug/x;Lug/x;Lug/q;)V

    invoke-interface {p1, v0}, Lug/q;->c(Lug/r;)Lug/q;

    return-object p1
.end method


# virtual methods
.method public e(Lug/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lug/z;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lug/z;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lug/z;->a:[Lug/x;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 5
    invoke-static {v4, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/x;->c(Lug/x;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Lug/z;->a:[Lug/x;

    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 8
    invoke-static {v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/x;->a(Lug/x;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lug/z;->a:[Lug/x;

    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 11
    invoke-static {v4, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/x;->b(Lug/x;Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
