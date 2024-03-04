.class public Lcom/guochao/faceshow/service/MediaService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/service/MediaService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/service/MediaService$a;

.field public b:Landroid/media/MediaPlayer;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/service/MediaService$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/service/MediaService$a;-><init>(Lcom/guochao/faceshow/service/MediaService;)V

    iput-object v0, p0, Lcom/guochao/faceshow/service/MediaService;->a:Lcom/guochao/faceshow/service/MediaService$a;

    .line 3
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/service/MediaService;->c:I

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/service/MediaService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/service/MediaService;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/service/MediaService;->c:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/service/MediaService;->a:Lcom/guochao/faceshow/service/MediaService$a;

    return-object p1
.end method
