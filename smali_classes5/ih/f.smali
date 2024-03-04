.class public final Lih/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih/b;


# instance fields
.field private final a:Leh/b1;

.field private final b:Leh/k2;

.field private c:Lih/e;

.field private d:Z


# direct methods
.method public constructor <init>(Leh/b1;Leh/k2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tlsContext"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/b1;

    iput-object p1, p0, Lih/f;->a:Leh/b1;

    const-string p1, "tlsContextManager"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/k2;

    iput-object p1, p0, Lih/f;->b:Leh/k2;

    return-void
.end method


# virtual methods
.method public a()Leh/b1;
    .locals 1

    iget-object v0, p0, Lih/f;->a:Leh/b1;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lih/f;->c:Lih/e;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lih/f;->a:Leh/b1;

    instance-of v1, v1, Leh/i1;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lih/f;->b:Leh/k2;

    invoke-interface {v1, v0}, Leh/k2;->b(Lih/e;)Lih/e;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lih/f;->b:Leh/k2;

    invoke-interface {v1, v0}, Leh/k2;->a(Lih/e;)Lih/e;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lih/f;->c:Lih/e;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lih/f;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lih/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lih/f;

    .line 3
    iget-object v2, p0, Lih/f;->a:Leh/b1;

    iget-object v3, p1, Lih/f;->a:Leh/b1;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lih/f;->b:Leh/k2;

    iget-object p1, p1, Lih/f;->b:Leh/k2;

    .line 4
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lih/f;->a:Leh/b1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lih/f;->b:Leh/k2;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lih/f;->a:Leh/b1;

    const-string v2, "tlsContext"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lih/f;->b:Leh/k2;

    const-string v2, "tlsContextManager"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lih/f;->c:Lih/e;

    const-string v2, "sslContextProvider"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lih/f;->d:Z

    const-string v2, "shutdown"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
