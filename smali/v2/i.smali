.class final Lv2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/i$a;
    }
.end annotation


# instance fields
.field private final a:Lj3/i;

.field private final b:I

.field private final c:Lv2/i$a;

.field private final d:[B

.field private e:I


# direct methods
.method public constructor <init>(Lj3/i;ILv2/i$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3
    iput-object p1, p0, Lv2/i;->a:Lj3/i;

    .line 4
    iput p2, p0, Lv2/i;->b:I

    .line 5
    iput-object p3, p0, Lv2/i;->c:Lv2/i$a;

    new-array p1, v0, [B

    .line 6
    iput-object p1, p0, Lv2/i;->d:[B

    .line 7
    iput p2, p0, Lv2/i;->e:I

    return-void
.end method

.method private n()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/i;->a:Lj3/i;

    iget-object v1, p0, Lv2/i;->d:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lj3/f;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lv2/i;->d:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    return v3

    .line 3
    :cond_1
    new-array v4, v0, [B

    move v5, v0

    const/4 v6, 0x0

    :goto_0
    if-lez v5, :cond_3

    .line 4
    iget-object v7, p0, Lv2/i;->a:Lj3/i;

    invoke-interface {v7, v4, v6, v5}, Lj3/f;->read([BII)I

    move-result v7

    if-ne v7, v1, :cond_2

    return v2

    :cond_2
    add-int/2addr v6, v7

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    .line 5
    aget-byte v1, v4, v1

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    if-lez v0, :cond_5

    .line 6
    iget-object v1, p0, Lv2/i;->c:Lv2/i$a;

    new-instance v2, Lcom/google/android/exoplayer2/util/b0;

    invoke-direct {v2, v4, v0}, Lcom/google/android/exoplayer2/util/b0;-><init>([BI)V

    invoke-interface {v1, v2}, Lv2/i$a;->b(Lcom/google/android/exoplayer2/util/b0;)V

    :cond_5
    return v3
.end method


# virtual methods
.method public b(Lj3/l;)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(Lj3/b0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lv2/i;->a:Lj3/i;

    invoke-interface {v0, p1}, Lj3/i;->c(Lj3/b0;)V

    return-void
.end method

.method public close()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    iget-object v0, p0, Lv2/i;->a:Lj3/i;

    invoke-interface {v0}, Lj3/i;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lv2/i;->a:Lj3/i;

    invoke-interface {v0}, Lj3/i;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lv2/i;->e:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lv2/i;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lv2/i;->b:I

    iput v0, p0, Lv2/i;->e:I

    goto :goto_0

    :cond_0
    return v1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lv2/i;->a:Lj3/i;

    iget v2, p0, Lv2/i;->e:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lj3/f;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 5
    iget p2, p0, Lv2/i;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lv2/i;->e:I

    :cond_2
    return p1
.end method
