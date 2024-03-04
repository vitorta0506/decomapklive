.class public final Lj3/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/i;


# instance fields
.field private final a:Lj3/i;

.field private b:J

.field private c:Landroid/net/Uri;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj3/i;

    iput-object p1, p0, Lj3/a0;->a:Lj3/i;

    .line 3
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lj3/a0;->c:Landroid/net/Uri;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lj3/a0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(Lj3/l;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lj3/l;->a:Landroid/net/Uri;

    iput-object v0, p0, Lj3/a0;->c:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lj3/a0;->d:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Lj3/a0;->a:Lj3/i;

    invoke-interface {v0, p1}, Lj3/i;->b(Lj3/l;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lj3/a0;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lj3/a0;->c:Landroid/net/Uri;

    .line 5
    invoke-virtual {p0}, Lj3/a0;->e()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lj3/a0;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public c(Lj3/b0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lj3/a0;->a:Lj3/i;

    invoke-interface {v0, p1}, Lj3/i;->c(Lj3/b0;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lj3/a0;->a:Lj3/i;

    invoke-interface {v0}, Lj3/i;->close()V

    return-void
.end method

.method public e()Ljava/util/Map;
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

    iget-object v0, p0, Lj3/a0;->a:Lj3/i;

    invoke-interface {v0}, Lj3/i;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj3/a0;->a:Lj3/i;

    invoke-interface {v0}, Lj3/i;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lj3/a0;->b:J

    return-wide v0
.end method

.method public o()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lj3/a0;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public p()Ljava/util/Map;
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

    iget-object v0, p0, Lj3/a0;->d:Ljava/util/Map;

    return-object v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj3/a0;->a:Lj3/i;

    invoke-interface {v0, p1, p2, p3}, Lj3/f;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-wide p2, p0, Lj3/a0;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lj3/a0;->b:J

    :cond_0
    return p1
.end method
