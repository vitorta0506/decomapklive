.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/x;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/v;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final i:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/x$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;->i:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;->i:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;Ljava/lang/Iterable;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;-><init>(ZZLjava/lang/Iterable;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    :goto_0
    if-eqz p2, :cond_1

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    goto :goto_1

    :cond_1
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->h:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->e()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->f()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

    move-result-object v0

    return-object v0
.end method
