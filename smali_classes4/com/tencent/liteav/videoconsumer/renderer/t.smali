.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/p;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Lcom/tencent/liteav/videoconsumer/renderer/p;

    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->b:Z

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/t;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Lcom/tencent/liteav/videoconsumer/renderer/p;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->b:Z

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)V

    return-void
.end method
