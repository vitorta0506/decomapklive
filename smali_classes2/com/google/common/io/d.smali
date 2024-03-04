.class public abstract Lcom/google/common/io/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/d;->b()Ljava/io/Reader;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public abstract b()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/io/g;->a()Lcom/google/common/io/g;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/d;->a()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/g;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    .line 3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/io/g;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/g;->c(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 6
    invoke-virtual {v0}, Lcom/google/common/io/g;->close()V

    .line 7
    throw v1
.end method
