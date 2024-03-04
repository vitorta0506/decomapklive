.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/i;

.field private final b:Landroid/view/TextureView;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/i;Landroid/view/TextureView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Landroid/view/TextureView;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/i;Landroid/view/TextureView;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/i;Landroid/view/TextureView;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/i;->a(Landroid/view/TextureView;)V

    return-void
.end method
