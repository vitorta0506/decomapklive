.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/c;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/e;->a:Lcom/tencent/liteav/videoconsumer/renderer/c;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/c;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/e;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/renderer/e;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/c;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/e;->a:Lcom/tencent/liteav/videoconsumer/renderer/c;

    .line 1
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "release,mSurface="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/c;->c:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/c;->c:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/c;->b:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/tencent/liteav/videoconsumer/renderer/b$a;->a()V

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/c;->c:Landroid/view/Surface;

    :cond_1
    return-void
.end method
