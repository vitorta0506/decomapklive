.class public final Lcom/tencent/liteav/txcplayer/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I

.field public o:J

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:I

.field public s:J

.field t:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/tencent/liteav/txcplayer/e;->a:I

    .line 3
    iput v0, p0, Lcom/tencent/liteav/txcplayer/e;->b:I

    const/16 v0, 0x1e

    .line 4
    iput v0, p0, Lcom/tencent/liteav/txcplayer/e;->c:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/e;->d:Z

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lcom/tencent/liteav/txcplayer/e;->g:I

    .line 7
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/e;->i:Z

    .line 8
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/e;->j:Z

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/tencent/liteav/txcplayer/e;->o:J

    .line 10
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/e;->p:Z

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/tencent/liteav/txcplayer/e;->r:I

    const-wide/16 v1, -0x1

    .line 12
    iput-wide v1, p0, Lcom/tencent/liteav/txcplayer/e;->s:J

    .line 13
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/e;->t:Z

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/tencent/liteav/txcplayer/e;->w:Z

    .line 15
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/e;->y:Z

    .line 16
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/e;->z:Z

    .line 17
    iput v1, p0, Lcom/tencent/liteav/txcplayer/e;->A:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/e;->x:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "PARAM_SUBTITLE_RENDER_MODEL"

    .line 2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v2, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;

    return-object v0

    :cond_1
    return-object v1
.end method
