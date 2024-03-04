.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/ah;

.field private final b:Lcom/tencent/liteav/videobase/videobase/h$a;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/av;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/av;->b:Lcom/tencent/liteav/videobase/videobase/h$a;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/videobase/h$a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/av;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/av;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/videobase/h$a;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/av;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/av;->b:Lcom/tencent/liteav/videobase/videobase/h$a;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/videobase/h$a;)V

    return-void
.end method
