.class final synthetic Lcom/tencent/liteav/videoconsumer/consumer/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/consumer/j;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/consumer/j;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/v;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/v;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/consumer/j;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/consumer/v;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/v;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/j;Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/v;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/v;->b:Ljava/lang/Runnable;

    .line 1
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->p:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/consumer/j$a;->a:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    if-eq v2, v3, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->m:Lcom/tencent/liteav/videobase/utils/d;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method
