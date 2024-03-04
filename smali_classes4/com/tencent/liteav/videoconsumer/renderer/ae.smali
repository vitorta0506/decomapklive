.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/p;

.field private final b:F


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/p;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/ae;->a:Lcom/tencent/liteav/videoconsumer/renderer/p;

    iput p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/ae;->b:F

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/p;F)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/ae;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ae;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/p;F)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/ae;->a:Lcom/tencent/liteav/videoconsumer/renderer/p;

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/ae;->b:F

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;F)V

    return-void
.end method
