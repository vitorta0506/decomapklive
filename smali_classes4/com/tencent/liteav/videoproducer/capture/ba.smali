.class final synthetic Lcom/tencent/liteav/videoproducer/capture/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ba;->a:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ba;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/ba;-><init>(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ba;->a:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/av;->a()V

    return-void
.end method
