.class Lcom/guochao/faceshow/service/LiveForegroundService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/service/LiveForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/service/LiveForegroundService;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/service/LiveForegroundService;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/service/LiveForegroundService$a;->a:Lcom/guochao/faceshow/service/LiveForegroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService$a;->a:Lcom/guochao/faceshow/service/LiveForegroundService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/LiveForegroundService;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
