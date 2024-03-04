.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/r;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/r$b;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/r$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final i:Z

.field private static final j:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r$b;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/r$a;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r$c;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/r$a;)V

    :goto_2
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;->j:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

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
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;->j:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

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
    invoke-direct {p0, p1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;-><init>(ZZLjava/lang/Iterable;)V

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

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    goto :goto_1

    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v;->h:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    :goto_1
    invoke-direct {p0, p2, p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;Ljava/lang/Iterable;)V

    return-void
.end method

.method static g()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;->i:Z

    return v0
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
