.class public abstract Lcom/google/auth/Credentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xb38a2d78c3d9081L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final blockingGetToCallback(Ljava/net/URI;Lcom/google/auth/a;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/auth/Credentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p2, p1}, Lcom/google/auth/a;->a(Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-interface {p2, p1}, Lcom/google/auth/a;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract getAuthenticationType()Ljava/lang/String;
.end method

.method public getRequestMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/auth/Credentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/auth/Credentials$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/auth/Credentials$a;-><init>(Lcom/google/auth/Credentials;Ljava/net/URI;Lcom/google/auth/a;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract hasRequestMetadata()Z
.end method

.method public abstract hasRequestMetadataOnly()Z
.end method

.method public abstract refresh()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
