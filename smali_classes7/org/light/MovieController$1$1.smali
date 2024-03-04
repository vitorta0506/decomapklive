.class Lorg/light/MovieController$1$1;
.super Lorg/light/AIDLVideoReader$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/MovieController$1;->createVideoReader(Ljava/lang/String;)Lorg/light/AIDLVideoReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/MovieController$1;

.field final synthetic val$vr:Lorg/light/ClipSourceFactory$VideoReader;


# direct methods
.method constructor <init>(Lorg/light/MovieController$1;Lorg/light/ClipSourceFactory$VideoReader;)V
    .locals 0

    iput-object p1, p0, Lorg/light/MovieController$1$1;->this$1:Lorg/light/MovieController$1;

    iput-object p2, p0, Lorg/light/MovieController$1$1;->val$vr:Lorg/light/ClipSourceFactory$VideoReader;

    invoke-direct {p0}, Lorg/light/AIDLVideoReader$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$1;->val$vr:Lorg/light/ClipSourceFactory$VideoReader;

    invoke-interface {v0}, Lorg/light/ClipSourceFactory$VideoReader;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public height()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$1;->val$vr:Lorg/light/ClipSourceFactory$VideoReader;

    invoke-interface {v0}, Lorg/light/ClipSourceFactory$VideoReader;->height()I

    move-result v0

    return v0
.end method

.method public readSample(J)Lorg/light/bean/Texture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$1;->val$vr:Lorg/light/ClipSourceFactory$VideoReader;

    invoke-interface {v0, p1, p2}, Lorg/light/ClipSourceFactory$VideoReader;->readSample(J)Lorg/light/bean/Texture;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$1;->val$vr:Lorg/light/ClipSourceFactory$VideoReader;

    invoke-interface {v0}, Lorg/light/ClipSourceFactory$VideoReader;->release()V

    return-void
.end method

.method public width()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/MovieController$1$1;->val$vr:Lorg/light/ClipSourceFactory$VideoReader;

    invoke-interface {v0}, Lorg/light/ClipSourceFactory$VideoReader;->width()I

    move-result v0

    return v0
.end method
