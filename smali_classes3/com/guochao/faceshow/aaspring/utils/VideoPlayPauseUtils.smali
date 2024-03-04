.class public Lcom/guochao/faceshow/aaspring/utils/VideoPlayPauseUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static VideoPlayPauseRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayPauseUtils$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayPauseUtils$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/VideoPlayPauseUtils;->VideoPlayPauseRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startVideoPlayPause()V
    .locals 4

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/VideoPlayPauseUtils;->VideoPlayPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
