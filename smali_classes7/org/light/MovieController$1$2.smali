.class Lorg/light/MovieController$1$2;
.super Lorg/light/AIDLAudioReader$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/MovieController$1;->createAudioReader(Ljava/lang/String;)Lorg/light/AIDLAudioReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/MovieController$1;

.field final synthetic val$ar:Lorg/light/ClipSourceFactory$AudioReader;


# direct methods
.method constructor <init>(Lorg/light/MovieController$1;Lorg/light/ClipSourceFactory$AudioReader;)V
    .locals 0

    iput-object p1, p0, Lorg/light/MovieController$1$2;->this$1:Lorg/light/MovieController$1;

    iput-object p2, p0, Lorg/light/MovieController$1$2;->val$ar:Lorg/light/ClipSourceFactory$AudioReader;

    invoke-direct {p0}, Lorg/light/AIDLAudioReader$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public copyNextFrame()Lorg/light/AudioFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$2;->val$ar:Lorg/light/ClipSourceFactory$AudioReader;

    invoke-interface {v0}, Lorg/light/ClipSourceFactory$AudioReader;->copyNextFrame()Lorg/light/AudioFrame;

    move-result-object v0

    return-object v0
.end method

.method public copyNextFrameSyncEnable(Z)Lorg/light/AudioFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$2;->val$ar:Lorg/light/ClipSourceFactory$AudioReader;

    invoke-interface {v0, p1}, Lorg/light/ClipSourceFactory$AudioReader;->copyNextFrameSyncEnable(Z)Lorg/light/AudioFrame;

    move-result-object p1

    return-object p1
.end method

.method public duration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$2;->val$ar:Lorg/light/ClipSourceFactory$AudioReader;

    invoke-interface {v0}, Lorg/light/ClipSourceFactory$AudioReader;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$2;->val$ar:Lorg/light/ClipSourceFactory$AudioReader;

    invoke-interface {v0}, Lorg/light/ClipSourceFactory$AudioReader;->release()V

    return-void
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$2;->val$ar:Lorg/light/ClipSourceFactory$AudioReader;

    invoke-interface {v0, p1, p2}, Lorg/light/ClipSourceFactory$AudioReader;->seek(J)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$2;->val$ar:Lorg/light/ClipSourceFactory$AudioReader;

    invoke-interface {v0, p1}, Lorg/light/ClipSourceFactory$AudioReader;->setVolume(F)V

    return-void
.end method
