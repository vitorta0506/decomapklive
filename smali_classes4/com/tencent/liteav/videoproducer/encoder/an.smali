.class public final synthetic Lcom/tencent/liteav/videoproducer/encoder/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/ah;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/ah;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/an;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iput p2, p0, Lcom/tencent/liteav/videoproducer/encoder/an;->b:I

    iput p3, p0, Lcom/tencent/liteav/videoproducer/encoder/an;->c:I

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/ah;II)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/an;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/an;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ah;II)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/an;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/an;->b:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer/encoder/an;->c:I

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;II)V

    return-void
.end method
