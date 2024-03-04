.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;",
        "",
        "()V",
        "mediaPlayer",
        "Landroid/media/MediaPlayer;",
        "startPlay",
        "",
        "stopPlay",
        "component_f2f_match_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->startPlay$lambda-1(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final startPlay$lambda-1(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method


# virtual methods
.method public final startPlay()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 2
    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    :cond_0
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/component/f2fmatch/utils/a;->a:Lcom/guochao/faceshow/component/f2fmatch/utils/a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    sget v2, Lcom/guochao/faceshow/component/f2fmatch/R$raw;->f2f_count_down:I

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 12
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final stopPlay()V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method
