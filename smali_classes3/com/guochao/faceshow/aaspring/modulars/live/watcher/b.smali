.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/watcher/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->a(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;)V

    return-void
.end method
