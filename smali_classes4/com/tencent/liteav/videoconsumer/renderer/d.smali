.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/c;

.field private final b:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/c;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/d;->a:Lcom/tencent/liteav/videoconsumer/renderer/c;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/d;->b:Landroid/view/Surface;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/c;Landroid/view/Surface;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/d;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/d;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/c;Landroid/view/Surface;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/d;->a:Lcom/tencent/liteav/videoconsumer/renderer/c;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/d;->b:Landroid/view/Surface;

    .line 1
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/c;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "construct,surface="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/c;->b:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/b$a;->a(Landroid/view/Surface;Z)V

    :cond_0
    return-void
.end method
