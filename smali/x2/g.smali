.class public abstract Lx2/g;
.super Lb2/h;
.source "SourceFile"

# interfaces
.implements Lx2/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb2/h<",
        "Lx2/k;",
        "Lx2/l;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lx2/i;"
    }
.end annotation


# instance fields
.field private final n:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lx2/k;

    new-array v0, v0, [Lx2/l;

    .line 1
    invoke-direct {p0, v1, v0}, Lb2/h;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lb2/f;)V

    .line 2
    iput-object p1, p0, Lx2/g;->n:Ljava/lang/String;

    const/16 p1, 0x400

    .line 3
    invoke-virtual {p0, p1}, Lb2/h;->t(I)V

    return-void
.end method

.method static synthetic u(Lx2/g;Lb2/f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb2/h;->q(Lb2/f;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic f()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    invoke-virtual {p0}, Lx2/g;->v()Lx2/k;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic g()Lb2/f;
    .locals 1

    invoke-virtual {p0}, Lx2/g;->w()Lx2/l;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic h(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    invoke-virtual {p0, p1}, Lx2/g;->x(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic i(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lb2/f;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lx2/k;

    check-cast p2, Lx2/l;

    invoke-virtual {p0, p1, p2, p3}, Lx2/g;->y(Lx2/k;Lx2/l;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected final v()Lx2/k;
    .locals 1

    new-instance v0, Lx2/k;

    invoke-direct {v0}, Lx2/k;-><init>()V

    return-object v0
.end method

.method protected final w()Lx2/l;
    .locals 1

    new-instance v0, Lx2/g$a;

    invoke-direct {v0, p0}, Lx2/g$a;-><init>(Lx2/g;)V

    return-object v0
.end method

.method protected final x(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected final y(Lx2/k;Lx2/l;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lx2/g;->z([BIZ)Lx2/h;

    move-result-object v5

    .line 3
    iget-wide v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v6, p1, Lx2/k;->i:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lx2/l;->q(JLx2/h;J)V

    const/high16 p1, -0x80000000

    .line 4
    invoke-virtual {p2, p1}, Lb2/a;->g(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method protected abstract z([BIZ)Lx2/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method
