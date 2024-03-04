.class public Lpg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final b:Lio/grpc/netty/shaded/io/netty/util/Signal;

.field protected static final c:Lio/grpc/netty/shaded/io/netty/util/Signal;

.field public static final d:Lpg/e;

.field public static final e:Lpg/e;


# instance fields
.field private final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lpg/e;

    const-string v1, "UNFINISHED"

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/Signal;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/Signal;

    move-result-object v1

    sput-object v1, Lpg/e;->b:Lio/grpc/netty/shaded/io/netty/util/Signal;

    const-string v2, "SUCCESS"

    .line 2
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/Signal;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/Signal;

    move-result-object v0

    sput-object v0, Lpg/e;->c:Lio/grpc/netty/shaded/io/netty/util/Signal;

    .line 3
    new-instance v2, Lpg/e;

    invoke-direct {v2, v1}, Lpg/e;-><init>(Ljava/lang/Throwable;)V

    sput-object v2, Lpg/e;->d:Lpg/e;

    .line 4
    new-instance v1, Lpg/e;

    invoke-direct {v1, v0}, Lpg/e;-><init>(Ljava/lang/Throwable;)V

    sput-object v1, Lpg/e;->e:Lpg/e;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cause"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lpg/e;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)Lpg/e;
    .locals 2

    new-instance v0, Lpg/e;

    const-string v1, "cause"

    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Lpg/e;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpg/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lpg/e;->a:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lpg/e;->a:Ljava/lang/Throwable;

    sget-object v1, Lpg/e;->c:Lio/grpc/netty/shaded/io/netty/util/Signal;

    if-eq v0, v1, :cond_0

    sget-object v1, Lpg/e;->b:Lio/grpc/netty/shaded/io/netty/util/Signal;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lpg/e;->a:Ljava/lang/Throwable;

    sget-object v1, Lpg/e;->b:Lio/grpc/netty/shaded/io/netty/util/Signal;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lpg/e;->a:Ljava/lang/Throwable;

    sget-object v1, Lpg/e;->c:Lio/grpc/netty/shaded/io/netty/util/Signal;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lpg/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lpg/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "success"

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lpg/e;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "failure("

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "unfinished"

    return-object v0
.end method
