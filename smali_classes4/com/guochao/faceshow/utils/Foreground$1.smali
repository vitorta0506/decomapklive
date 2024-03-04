.class Lcom/guochao/faceshow/utils/Foreground$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/utils/Foreground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/Foreground;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/Foreground;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/Foreground$1;->this$0:Lcom/guochao/faceshow/utils/Foreground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const-class v0, Lcom/guochao/faceshow/service/LiveForegroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStopForegroundService(Ljava/lang/Class;)Z

    .line 2
    const-class v0, Lcom/guochao/faceshow/service/CallForegroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStopForegroundService(Ljava/lang/Class;)Z

    .line 3
    const-class v0, Lcom/guochao/faceshow/service/WatchingLiveForegroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStopForegroundService(Ljava/lang/Class;)Z

    return-void
.end method
