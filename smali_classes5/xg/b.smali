.class final Lxg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyg/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxg/b$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lxg/b$a;

.field private final b:Lyg/b;

.field private final c:Lxg/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lxg/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lxg/b;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lxg/b$a;Lyg/b;)V
    .locals 3

    .line 1
    new-instance v0, Lxg/h;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lxg/g;

    invoke-direct {v0, v1, v2}, Lxg/h;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lxg/b;-><init>(Lxg/b$a;Lyg/b;Lxg/h;)V

    return-void
.end method

.method constructor <init>(Lxg/b$a;Lyg/b;Lxg/h;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transportExceptionHandler"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxg/b$a;

    iput-object p1, p0, Lxg/b;->a:Lxg/b$a;

    const-string p1, "frameWriter"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyg/b;

    iput-object p1, p0, Lxg/b;->b:Lyg/b;

    const-string p1, "frameLogger"

    .line 5
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxg/h;

    iput-object p1, p0, Lxg/b;->c:Lxg/h;

    return-void
.end method

.method static a(Ljava/lang/Throwable;)Ljava/util/logging/Level;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/io/IOException;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    return-object p0
.end method


# virtual methods
.method public O1(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lxg/b;->c:Lxg/h;

    sget-object v1, Lxg/h$a;->b:Lxg/h$a;

    .line 2
    invoke-static {p3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, p1, p2, v2}, Lxg/h;->c(Lxg/h$a;ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0, p1, p2, p3}, Lyg/b;->O1(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 5
    iget-object p1, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {p1}, Lyg/b;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {p2, p1}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b0(Lyg/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxg/b;->c:Lxg/h;

    sget-object v1, Lxg/h$a;->b:Lxg/h$a;

    invoke-virtual {v0, v1, p1}, Lxg/h;->i(Lxg/h$a;Lyg/g;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0, p1}, Lyg/b;->b0(Lyg/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {v0, p1}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lxg/b;->d:Ljava/util/logging/Logger;

    invoke-static {v0}, Lxg/b;->a(Ljava/lang/Throwable;)Ljava/util/logging/Level;

    move-result-object v2

    const-string v3, "Failed closing connection"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public connectionPreface()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0}, Lyg/b;->connectionPreface()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {v1, v0}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public data(ZILokio/Buffer;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lxg/b;->c:Lxg/h;

    sget-object v1, Lxg/h$a;->b:Lxg/h$a;

    .line 2
    invoke-virtual {p3}, Lokio/Buffer;->buffer()Lokio/Buffer;

    move-result-object v3

    move v2, p2

    move v4, p4

    move v5, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Lxg/h;->b(Lxg/h$a;ILokio/Buffer;IZ)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lyg/b;->data(ZILokio/Buffer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {p2, p1}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public e0(Lyg/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxg/b;->c:Lxg/h;

    sget-object v1, Lxg/h$a;->b:Lxg/h$a;

    invoke-virtual {v0, v1}, Lxg/h;->j(Lxg/h$a;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0, p1}, Lyg/b;->e0(Lyg/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {v0, p1}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0}, Lyg/b;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {v1, v0}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public g(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxg/b;->c:Lxg/h;

    sget-object v1, Lxg/h$a;->b:Lxg/h$a;

    invoke-virtual {v0, v1, p1, p2}, Lxg/h;->h(Lxg/h$a;ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0, p1, p2}, Lyg/b;->g(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {p2, p1}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public maxDataLength()I
    .locals 1

    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0}, Lyg/b;->maxDataLength()I

    move-result v0

    return v0
.end method

.method public ping(ZII)V
    .locals 9

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-eqz p1, :cond_0

    .line 1
    iget-object v3, p0, Lxg/b;->c:Lxg/h;

    sget-object v4, Lxg/h$a;->b:Lxg/h$a;

    int-to-long v5, p2

    shl-long/2addr v5, v2

    int-to-long v7, p3

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Lxg/h;->f(Lxg/h$a;J)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, Lxg/b;->c:Lxg/h;

    sget-object v4, Lxg/h$a;->b:Lxg/h$a;

    int-to-long v5, p2

    shl-long/2addr v5, v2

    int-to-long v7, p3

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Lxg/h;->e(Lxg/h$a;J)V

    .line 3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0, p1, p2, p3}, Lyg/b;->ping(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {p2, p1}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public synStream(ZZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lyg/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lyg/b;->synStream(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {p2, p1}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxg/b;->c:Lxg/h;

    sget-object v1, Lxg/h$a;->b:Lxg/h$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lxg/h;->k(Lxg/h$a;IJ)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lxg/b;->b:Lyg/b;

    invoke-interface {v0, p1, p2, p3}, Lyg/b;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lxg/b;->a:Lxg/b$a;

    invoke-interface {p2, p1}, Lxg/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
