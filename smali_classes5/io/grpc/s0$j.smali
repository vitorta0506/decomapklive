.class final Lio/grpc/s0$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/s0$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile c:[B


# direct methods
.method constructor <init>(Lio/grpc/s0$g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/s0$g<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/s0$j;->a:Lio/grpc/s0$g;

    .line 3
    iput-object p2, p0, Lio/grpc/s0$j;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Lio/grpc/s0$i;Ljava/lang/Object;)Lio/grpc/s0$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/s0$i<",
            "TT;>;TT;)",
            "Lio/grpc/s0$j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/s0$j;

    invoke-static {p0}, Lio/grpc/s0$j;->b(Lio/grpc/s0$i;)Lio/grpc/s0$g;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/s0$g;

    invoke-direct {v0, p0, p1}, Lio/grpc/s0$j;-><init>(Lio/grpc/s0$g;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static b(Lio/grpc/s0$i;)Lio/grpc/s0$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/s0$i<",
            "TT;>;)",
            "Lio/grpc/s0$g<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lio/grpc/s0$g;

    invoke-virtual {p0, v0}, Lio/grpc/s0$i;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/s0$g;

    return-object p0
.end method


# virtual methods
.method c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/s0$j;->c:[B

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/s0$j;->c:[B

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/grpc/s0$j;->e()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/s0;->c(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/s0$j;->c:[B

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/s0$j;->c:[B

    return-object v0
.end method

.method d(Lio/grpc/s0$i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/s0$i<",
            "TT2;>;)TT2;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/s0$i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/grpc/s0$j;->b(Lio/grpc/s0$i;)Lio/grpc/s0$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/s0$j;->e()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/s0$g;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/s0$j;->c()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/s0$i;->i([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method e()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lio/grpc/s0$j;->a:Lio/grpc/s0$g;

    iget-object v1, p0, Lio/grpc/s0$j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/grpc/s0$g;->a(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
