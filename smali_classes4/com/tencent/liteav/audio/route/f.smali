.class final synthetic Lcom/tencent/liteav/audio/route/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/audio/route/AudioRouteManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/audio/route/f;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    iput p2, p0, Lcom/tencent/liteav/audio/route/f;->b:I

    return-void
.end method

.method public static a(Lcom/tencent/liteav/audio/route/AudioRouteManager;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/audio/route/f;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/audio/route/f;-><init>(Lcom/tencent/liteav/audio/route/AudioRouteManager;I)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/audio/route/f;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    iget v1, p0, Lcom/tencent/liteav/audio/route/f;->b:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->lambda$notifyAudioIOSceneChanged$2(Lcom/tencent/liteav/audio/route/AudioRouteManager;I)V

    return-void
.end method
