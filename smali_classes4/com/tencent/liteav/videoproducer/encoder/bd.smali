.class public final Lcom/tencent/liteav/videoproducer/encoder/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/base/util/v$a;


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:J

.field f:Lcom/tencent/liteav/base/util/v;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2
    .param p1    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->c:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->d:J

    .line 4
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->e:J

    .line 5
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "VECStatistics_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onTimeout()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/i;->k:Lcom/tencent/liteav/videobase/videobase/i;

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->d:J

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
