.class final Lcom/tencent/liteav/videoproducer/preprocessor/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/preprocessor/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/tencent/liteav/videobase/videobase/a;

.field public c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field public d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public e:Lcom/tencent/liteav/videoproducer/preprocessor/ah;

.field final synthetic f:Lcom/tencent/liteav/videoproducer/preprocessor/h;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoproducer/preprocessor/h;ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videoproducer/preprocessor/ah;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->f:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->a:I

    .line 3
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->b:Lcom/tencent/liteav/videobase/videobase/a;

    .line 4
    iput-object p5, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 5
    iput-object p4, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 6
    iput-object p6, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->e:Lcom/tencent/liteav/videoproducer/preprocessor/ah;

    return-void
.end method


# virtual methods
.method public final onFrameConverted(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->e:Lcom/tencent/liteav/videoproducer/preprocessor/ah;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->f:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    .line 2
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/ah;->didProcessFrame(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;->f:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    .line 5
    :try_start_0
    iget-object p2, p1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/b/e;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p2

    .line 7
    iget-object p1, p1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->d:Lcom/tencent/liteav/base/b/b;

    const-string v0, "makeCurrent"

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "makeCurrent failed. "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GPUPreprocessor"

    invoke-static {p1, v1, p2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
