.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/i;

.field private final b:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private final c:Landroid/view/TextureView;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/i;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/j;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/j;->b:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iput-object p3, p0, Lcom/tencent/liteav/videoconsumer/renderer/j;->c:Landroid/view/TextureView;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/i;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/j;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/i;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/j;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/j;->b:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/j;->c:Landroid/view/TextureView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 1
    const-class v5, Landroid/view/TextureView;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v5, "addViewInternal"

    .line 2
    invoke-static {v1, v5, v4, v3}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v2}, Lcom/tencent/liteav/videoconsumer/renderer/i;->a(Landroid/view/TextureView;)V

    return-void
.end method
