.class public final Lcom/squareup/okhttp/internal/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/b$f;

.field private final b:[Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/squareup/okhttp/internal/b;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/b;Lcom/squareup/okhttp/internal/b$f;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/b$e;->e:Lcom/squareup/okhttp/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/squareup/okhttp/internal/b$e;->a:Lcom/squareup/okhttp/internal/b$f;

    .line 4
    invoke-static {p2}, Lcom/squareup/okhttp/internal/b$f;->h(Lcom/squareup/okhttp/internal/b$f;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->h(Lcom/squareup/okhttp/internal/b;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/b$e;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/b;Lcom/squareup/okhttp/internal/b$f;Lcom/squareup/okhttp/internal/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/b$e;-><init>(Lcom/squareup/okhttp/internal/b;Lcom/squareup/okhttp/internal/b$f;)V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/b$e;)Lcom/squareup/okhttp/internal/b$f;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/b$e;->a:Lcom/squareup/okhttp/internal/b$f;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/b$e;)[Z
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/b$e;->b:[Z

    return-object p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/b$e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/b$e;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$e;->e:Lcom/squareup/okhttp/internal/b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$e;->e:Lcom/squareup/okhttp/internal/b;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/squareup/okhttp/internal/b;->k(Lcom/squareup/okhttp/internal/b;Lcom/squareup/okhttp/internal/b$e;Z)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$e;->e:Lcom/squareup/okhttp/internal/b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/b$e;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$e;->e:Lcom/squareup/okhttp/internal/b;

    const/4 v3, 0x0

    invoke-static {v1, p0, v3}, Lcom/squareup/okhttp/internal/b;->k(Lcom/squareup/okhttp/internal/b;Lcom/squareup/okhttp/internal/b$e;Z)V

    .line 4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$e;->e:Lcom/squareup/okhttp/internal/b;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/b$e;->a:Lcom/squareup/okhttp/internal/b$f;

    invoke-static {v1, v3}, Lcom/squareup/okhttp/internal/b;->o(Lcom/squareup/okhttp/internal/b;Lcom/squareup/okhttp/internal/b$f;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$e;->e:Lcom/squareup/okhttp/internal/b;

    invoke-static {v1, p0, v2}, Lcom/squareup/okhttp/internal/b;->k(Lcom/squareup/okhttp/internal/b;Lcom/squareup/okhttp/internal/b$e;Z)V

    .line 6
    :goto_0
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/b$e;->d:Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f(I)Lokio/Sink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$e;->e:Lcom/squareup/okhttp/internal/b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$e;->a:Lcom/squareup/okhttp/internal/b$f;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b$f;->j(Lcom/squareup/okhttp/internal/b$f;)Lcom/squareup/okhttp/internal/b$e;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$e;->a:Lcom/squareup/okhttp/internal/b$f;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b$f;->h(Lcom/squareup/okhttp/internal/b$f;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$e;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$e;->a:Lcom/squareup/okhttp/internal/b$f;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b$f;->d(Lcom/squareup/okhttp/internal/b$f;)[Ljava/io/File;

    move-result-object v1

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$e;->e:Lcom/squareup/okhttp/internal/b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b;->i(Lcom/squareup/okhttp/internal/b;)Lcom/squareup/okhttp/internal/io/FileSystem;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/squareup/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    new-instance v1, Lcom/squareup/okhttp/internal/b$e$a;

    invoke-direct {v1, p0, p1}, Lcom/squareup/okhttp/internal/b$e$a;-><init>(Lcom/squareup/okhttp/internal/b$e;Lokio/Sink;)V

    monitor-exit v0

    return-object v1

    .line 8
    :catch_0
    invoke-static {}, Lcom/squareup/okhttp/internal/b;->j()Lokio/Sink;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
