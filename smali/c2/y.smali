.class public final Lc2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/b0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/b0;-><init>(I)V

    iput-object v0, p0, Lc2/y;->a:Lcom/google/android/exoplayer2/util/b0;

    return-void
.end method


# virtual methods
.method public a(Lc2/m;Ls2/b$a;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7
    .param p2    # Ls2/b$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v3, p0, Lc2/y;->a:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {p1, v3, v0, v4}, Lc2/m;->m([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v3, p0, Lc2/y;->a:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 3
    iget-object v3, p0, Lc2/y;->a:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/b0;->G()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v3, p0, Lc2/y;->a:Lcom/google/android/exoplayer2/util/b0;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/b0;->Q(I)V

    .line 5
    iget-object v3, p0, Lc2/y;->a:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/b0;->C()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    if-nez v1, :cond_1

    .line 6
    new-array v1, v5, [B

    .line 7
    iget-object v6, p0, Lc2/y;->a:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v6

    invoke-static {v6, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-interface {p1, v1, v4, v3}, Lc2/m;->m([BII)V

    .line 9
    new-instance v3, Ls2/b;

    invoke-direct {v3, p2}, Ls2/b;-><init>(Ls2/b$a;)V

    invoke-virtual {v3, v1, v5}, Ls2/b;->e([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p1, v3}, Lc2/m;->i(I)V

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 11
    :catch_0
    :goto_2
    invoke-interface {p1}, Lc2/m;->f()V

    .line 12
    invoke-interface {p1, v2}, Lc2/m;->i(I)V

    return-object v1
.end method
