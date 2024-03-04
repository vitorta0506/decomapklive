.class public Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;
    }
.end annotation


# static fields
.field private static c:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;
    .locals 2

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;

    .line 4
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public b(Ljava/io/File;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;->b(Landroid/media/MediaPlayer;)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_1
    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;->b(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->a:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;->a(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public setOnPlayListener(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;

    return-void
.end method
