.class public final Lv2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/x;


# instance fields
.field private final a:Lc2/r;

.field private b:Lc2/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lc2/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc2/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/b;->a:Lc2/r;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 1

    iget-object v0, p0, Lv2/b;->b:Lc2/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lc2/l;->a(JJ)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/b;->b:Lc2/l;

    instance-of v1, v0, Lj2/f;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lj2/f;

    invoke-virtual {v0}, Lj2/f;->j()V

    :cond_0
    return-void
.end method

.method public c(Lc2/a0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/b;->b:Lc2/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/l;

    iget-object v1, p0, Lv2/b;->c:Lc2/m;

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/m;

    invoke-interface {v0, v1, p1}, Lc2/l;->b(Lc2/m;Lc2/a0;)I

    move-result p1

    return p1
.end method

.method public d(Lj3/f;Landroid/net/Uri;Ljava/util/Map;JJLc2/n;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/f;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lc2/n;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lc2/f;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lc2/f;-><init>(Lj3/f;JJ)V

    .line 2
    iput-object v6, p0, Lv2/b;->c:Lc2/m;

    .line 3
    iget-object p1, p0, Lv2/b;->b:Lc2/l;

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lv2/b;->a:Lc2/r;

    invoke-interface {p1, p2, p3}, Lc2/r;->a(Landroid/net/Uri;Ljava/util/Map;)[Lc2/l;

    move-result-object p1

    .line 5
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 6
    aget-object p1, p1, p6

    iput-object p1, p0, Lv2/b;->b:Lc2/l;

    goto :goto_4

    .line 7
    :cond_1
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_7

    aget-object v1, p1, v0

    .line 8
    :try_start_0
    invoke-interface {v1, v6}, Lc2/l;->h(Lc2/m;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iput-object v1, p0, Lv2/b;->b:Lc2/l;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p7}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 11
    invoke-interface {v6}, Lc2/m;->f()V

    goto :goto_3

    .line 12
    :cond_2
    iget-object v1, p0, Lv2/b;->b:Lc2/l;

    if-nez v1, :cond_6

    invoke-interface {v6}, Lc2/m;->getPosition()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lv2/b;->b:Lc2/l;

    if-nez p2, :cond_3

    invoke-interface {v6}, Lc2/m;->getPosition()J

    move-result-wide p2

    cmp-long p8, p2, p4

    if-nez p8, :cond_4

    :cond_3
    const/4 p6, 0x1

    :cond_4
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 13
    invoke-interface {v6}, Lc2/m;->f()V

    .line 14
    throw p1

    :catch_0
    nop

    .line 15
    iget-object v1, p0, Lv2/b;->b:Lc2/l;

    if-nez v1, :cond_6

    invoke-interface {v6}, Lc2/m;->getPosition()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 16
    invoke-interface {v6}, Lc2/m;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_7
    :goto_3
    iget-object p3, p0, Lv2/b;->b:Lc2/l;

    if-eqz p3, :cond_8

    .line 18
    :goto_4
    iget-object p1, p0, Lv2/b;->b:Lc2/l;

    invoke-interface {p1, p8}, Lc2/l;->f(Lc2/n;)V

    return-void

    .line 19
    :cond_8
    new-instance p3, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "None of the available extractors ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/l0;->G([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p3
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lv2/b;->c:Lc2/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc2/m;->getPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/b;->b:Lc2/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc2/l;->release()V

    .line 3
    iput-object v1, p0, Lv2/b;->b:Lc2/l;

    .line 4
    :cond_0
    iput-object v1, p0, Lv2/b;->c:Lc2/m;

    return-void
.end method
