.class final synthetic Lcom/tencent/liteav/videoproducer/preprocessor/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

.field private final b:I

.field private final c:Lcom/tencent/liteav/videoproducer/preprocessor/ah;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/ac;->a:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iput p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/ac;->b:I

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/preprocessor/ac;->c:Lcom/tencent/liteav/videoproducer/preprocessor/ah;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;ILcom/tencent/liteav/videoproducer/preprocessor/ah;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/preprocessor/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/ac;-><init>(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/ac;->a:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/ac;->b:I

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/ac;->c:Lcom/tencent/liteav/videoproducer/preprocessor/ah;

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->lambda$unregisterVideoProcessedListener$4(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    return-void
.end method
