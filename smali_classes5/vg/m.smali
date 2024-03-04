.class public Lvg/m;
.super Lvg/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/q<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lvg/q;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()I
    .locals 1

    invoke-super {p0}, Lvg/h;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lvg/h;->clear()V

    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lvg/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lvg/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v0, p0, Lvg/h;->a:J

    .line 3
    invoke-virtual {p0}, Lvg/t;->m()J

    move-result-wide v2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lvg/s;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v2

    if-ltz v8, :cond_2

    .line 5
    invoke-virtual {p0}, Lvg/n;->f()J

    move-result-wide v2

    add-long/2addr v2, v0

    add-long/2addr v2, v6

    cmp-long v8, v4, v2

    if-ltz v8, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, v2, v3}, Lvg/t;->n(J)V

    :cond_2
    add-long/2addr v6, v4

    .line 7
    invoke-virtual {p0, v4, v5, v6, v7}, Lvg/s;->g(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    invoke-static {v4, v5, v0, v1}, Lwg/d;->b(JJ)J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lvg/h;->b:[Ljava/lang/Object;

    invoke-static {v2, v0, v1, p1}, Lwg/d;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lvg/h;->b:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lvg/n;->u()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lvg/h;->a:J

    invoke-static {v1, v2, v3, v4}, Lwg/d;->b(JJ)J

    move-result-wide v3

    .line 4
    invoke-static {v0, v3, v4}, Lwg/d;->d([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 5
    invoke-virtual {p0}, Lvg/s;->d()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    .line 6
    :cond_0
    invoke-static {v0, v3, v4}, Lwg/d;->d([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    :goto_0
    return-object v5
.end method

.method public poll()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lvg/n;->u()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lvg/h;->a:J

    invoke-static {v0, v1, v2, v3}, Lwg/d;->b(JJ)J

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lvg/h;->b:[Ljava/lang/Object;

    .line 4
    invoke-static {v4, v2, v3}, Lwg/d;->d([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 5
    invoke-virtual {p0}, Lvg/s;->d()J

    move-result-wide v7

    cmp-long v5, v0, v7

    if-eqz v5, :cond_1

    .line 6
    :cond_0
    invoke-static {v4, v2, v3}, Lwg/d;->d([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    return-object v6

    .line 7
    :cond_2
    :goto_0
    invoke-static {v4, v2, v3, v6}, Lwg/d;->f([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 8
    invoke-virtual {p0, v0, v1}, Lvg/n;->x(J)V

    return-object v5
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lvg/h;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lvg/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
