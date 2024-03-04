.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/p;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/x;->a:Lcom/tencent/liteav/videoconsumer/renderer/p;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/p;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/x;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/renderer/x;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/p;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/x;->a:Lcom/tencent/liteav/videoconsumer/renderer/p;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b(Lcom/tencent/liteav/videoconsumer/renderer/p;)V

    return-void
.end method
