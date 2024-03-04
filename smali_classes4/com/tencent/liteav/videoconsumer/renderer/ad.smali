.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/p;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/p;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->a:Lcom/tencent/liteav/videoconsumer/renderer/p;

    iput p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->b:I

    iput p3, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->c:I

    iput p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->d:I

    iput p5, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->e:I

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/p;IIII)Ljava/lang/Runnable;
    .locals 7

    new-instance v6, Lcom/tencent/liteav/videoconsumer/renderer/ad;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/videoconsumer/renderer/ad;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/p;IIII)V

    return-object v6
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->a:Lcom/tencent/liteav/videoconsumer/renderer/p;

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->b:I

    iget v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->c:I

    iget v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->d:I

    iget v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/ad;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;IIII)V

    return-void
.end method
