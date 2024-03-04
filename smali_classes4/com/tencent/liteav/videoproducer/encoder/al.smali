.class public final synthetic Lcom/tencent/liteav/videoproducer/encoder/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/ah;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/ah;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/al;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iput p2, p0, Lcom/tencent/liteav/videoproducer/encoder/al;->b:I

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/ah;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/al;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/al;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ah;I)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/al;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/al;->b:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->b(Lcom/tencent/liteav/videoproducer/encoder/ah;I)V

    return-void
.end method
