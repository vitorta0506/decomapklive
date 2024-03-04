.class Lorg/light/MovieController$1;
.super Lorg/light/AIDLClipSourceFactory$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/MovieController;->registerClipSourceFactory(Lorg/light/ClipSourceFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/MovieController;

.field final synthetic val$factory:Lorg/light/ClipSourceFactory;


# direct methods
.method constructor <init>(Lorg/light/MovieController;Lorg/light/ClipSourceFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/light/MovieController$1;->this$0:Lorg/light/MovieController;

    iput-object p2, p0, Lorg/light/MovieController$1;->val$factory:Lorg/light/ClipSourceFactory;

    invoke-direct {p0}, Lorg/light/AIDLClipSourceFactory$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioReader(Ljava/lang/String;)Lorg/light/AIDLAudioReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/light/MovieController$1;->val$factory:Lorg/light/ClipSourceFactory;

    invoke-interface {v0, p1}, Lorg/light/ClipSourceFactory;->createAudioReader(Ljava/lang/String;)Lorg/light/ClipSourceFactory$AudioReader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lorg/light/MovieController$1$2;

    invoke-direct {v0, p0, p1}, Lorg/light/MovieController$1$2;-><init>(Lorg/light/MovieController$1;Lorg/light/ClipSourceFactory$AudioReader;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createVideoReader(Ljava/lang/String;)Lorg/light/AIDLVideoReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/light/MovieController$1;->val$factory:Lorg/light/ClipSourceFactory;

    invoke-interface {v0, p1}, Lorg/light/ClipSourceFactory;->createVideoReader(Ljava/lang/String;)Lorg/light/ClipSourceFactory$VideoReader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lorg/light/MovieController$1$1;

    invoke-direct {v0, p0, p1}, Lorg/light/MovieController$1$1;-><init>(Lorg/light/MovieController$1;Lorg/light/ClipSourceFactory$VideoReader;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
