.class Lcom/squareup/okhttp/internal/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/b;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/b$a;->a:Lcom/squareup/okhttp/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$a;->a:Lcom/squareup/okhttp/internal/b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$a;->a:Lcom/squareup/okhttp/internal/b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/internal/b;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/b$a;->a:Lcom/squareup/okhttp/internal/b;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/b;->b(Lcom/squareup/okhttp/internal/b;)Z

    move-result v3

    or-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 4
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$a;->a:Lcom/squareup/okhttp/internal/b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b;->c(Lcom/squareup/okhttp/internal/b;)V

    .line 5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$a;->a:Lcom/squareup/okhttp/internal/b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b;->q(Lcom/squareup/okhttp/internal/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$a;->a:Lcom/squareup/okhttp/internal/b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b;->r(Lcom/squareup/okhttp/internal/b;)V

    .line 7
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$a;->a:Lcom/squareup/okhttp/internal/b;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/b;->s(Lcom/squareup/okhttp/internal/b;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_2
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
