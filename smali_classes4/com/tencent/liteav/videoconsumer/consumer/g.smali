.class final synthetic Lcom/tencent/liteav/videoconsumer/consumer/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/consumer/a;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/consumer/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/g;->a:Lcom/tencent/liteav/videoconsumer/consumer/a;

    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/g;->b:Z

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/consumer/a;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/consumer/g;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/g;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/a;Z)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/g;->a:Lcom/tencent/liteav/videoconsumer/consumer/a;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/g;->b:Z

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Lcom/tencent/liteav/videoconsumer/consumer/a;Z)V

    return-void
.end method
