.class final synthetic Lcom/tencent/ugc/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/ugc/TXVideoEditer;

.field private final b:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;


# direct methods
.method private constructor <init>(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/ba;->a:Lcom/tencent/ugc/TXVideoEditer;

    iput-object p2, p0, Lcom/tencent/ugc/ba;->b:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    return-void
.end method

.method public static a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/ugc/ba;

    invoke-direct {v0, p0, p1}, Lcom/tencent/ugc/ba;-><init>(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/ba;->a:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/tencent/ugc/ba;->b:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-static {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->lambda$onVideoEncodedFrame$55(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void
.end method
