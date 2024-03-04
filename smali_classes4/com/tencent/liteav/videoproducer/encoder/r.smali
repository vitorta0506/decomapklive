.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/o;

.field private final b:Landroid/media/MediaFormat;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/o;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Lcom/tencent/liteav/videoproducer/encoder/o;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->b:Landroid/media/MediaFormat;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/o;Landroid/media/MediaFormat;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/r;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/r;-><init>(Lcom/tencent/liteav/videoproducer/encoder/o;Landroid/media/MediaFormat;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Lcom/tencent/liteav/videoproducer/encoder/o;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->b:Landroid/media/MediaFormat;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Lcom/tencent/liteav/videoproducer/encoder/o;Landroid/media/MediaFormat;)V

    return-void
.end method
