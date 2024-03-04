.class Lz8/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lz8/c;


# direct methods
.method constructor <init>(Lz8/c;)V
    .locals 0

    iput-object p1, p0, Lz8/c$b;->a:Lz8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    const-string v0, "STAY_IN_LIVE"

    .line 1
    iget-object v1, p0, Lz8/c$b;->a:Lz8/c;

    iget-object v1, v1, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lz8/c$b;->a:Lz8/c;

    invoke-static {v0}, Lz8/c;->b(Lz8/c;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
