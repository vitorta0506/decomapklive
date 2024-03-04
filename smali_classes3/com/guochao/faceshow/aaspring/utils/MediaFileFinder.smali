.class public final Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\n\u0018\u0000 O2\u00020\u0001:\u0001OB\u0011\u0008\u0002\u0012\u0006\u0010)\u001a\u00020(\u00a2\u0006\u0004\u0008M\u0010NJ&\u0010\u0007\u001a\u00020\u0006\"\u000e\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u001e\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u001e\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J&\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00132\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0006\u0010\u001a\u001a\u00020\u0006J6\u0010!\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u001d2\u0010\u0008\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001fH\u0007J6\u0010\"\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u001d2\u0010\u0008\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001fH\u0007J6\u0010#\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u001d2\u0010\u0008\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001fH\u0007J\u0016\u0010$\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013J\"\u0010\'\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\n2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060%R\u0017\u0010)\u001a\u00020(8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00100\u001a\u00020/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0014\u00103\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u001a\u00105\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u001a\u00107\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00106R\u001a\u00108\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00106R \u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R \u0010<\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010;R \u0010=\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010;R\"\u0010>\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010.\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\"\u0010C\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010.\u001a\u0004\u0008D\u0010@\"\u0004\u0008E\u0010BR\"\u0010G\u001a\u00020F8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010L\u00a8\u0006P"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;",
        "Landroidx/lifecycle/ViewModel;",
        "",
        "T",
        "",
        "list",
        "",
        "safeSort",
        "readSimpleInfo",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        "readSimpleImages",
        "readSimpleVideos",
        "Landroid/net/Uri;",
        "uri",
        "",
        "path",
        "readSingleImage",
        "readSingleVideo",
        "",
        "isVideo",
        "readSingleMediaInfo",
        "extentionName",
        "isSupportedFile",
        "localImageOrVideoBean",
        "readThumbnail",
        "readIfHasPermission",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "Landroidx/lifecycle/Observer;",
        "call",
        "Laa/b;",
        "filter",
        "observeAllMedia",
        "observeImages",
        "observeVideos",
        "mediaChanged",
        "Lkotlin/Function1;",
        "callback",
        "readVideoDetail",
        "Landroid/app/Application;",
        "context",
        "Landroid/app/Application;",
        "getContext",
        "()Landroid/app/Application;",
        "mIsAboveAndroid10",
        "Z",
        "Landroid/os/HandlerThread;",
        "mHandlerThread",
        "Landroid/os/HandlerThread;",
        "Landroid/os/Handler;",
        "mHandler",
        "Landroid/os/Handler;",
        "mediaList",
        "Ljava/util/List;",
        "videoList",
        "imageList",
        "Landroidx/lifecycle/MutableLiveData;",
        "mediaFileLivedata",
        "Landroidx/lifecycle/MutableLiveData;",
        "videoFileLivedata",
        "imageFileLivedata",
        "readImages",
        "getReadImages",
        "()Z",
        "setReadImages",
        "(Z)V",
        "readVideos",
        "getReadVideos",
        "setReadVideos",
        "",
        "lastNotify",
        "J",
        "getLastNotify",
        "()J",
        "setLastNotify",
        "(J)V",
        "<init>",
        "(Landroid/app/Application;)V",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IMAGE_SIZE:J = 0x1c00000L

.field private static final TAG:Ljava/lang/String; = "FindAllImagesHelper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIDEO_SIZE:J = 0x6400000L

.field private static sMediaFileFinder:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imageFileLivedata:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastNotify:J

.field private final mHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mIsAboveAndroid10:Z

.field private final mediaFileLivedata:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private readImages:Z

.field private readVideos:Z

.field private final videoFileLivedata:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->Companion:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->context:Landroid/app/Application;

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mIsAboveAndroid10:Z

    .line 3
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "MediaFilesLoader"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaList:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->videoList:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->imageList:Ljava/util/List;

    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaFileLivedata:Landroidx/lifecycle/MutableLiveData;

    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->videoFileLivedata:Landroidx/lifecycle/MutableLiveData;

    .line 9
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->imageFileLivedata:Landroidx/lifecycle/MutableLiveData;

    .line 10
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/i;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/i;-><init>(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    .line 13
    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 14
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Application;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Ljava/util/List;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readImages:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideos:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaList:Ljava/util/List;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->imageList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaList:Ljava/util/List;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->videoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->safeSort(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaFileLivedata:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getSMediaFileFinder$cp()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->sMediaFileFinder:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    return-object v0
.end method

.method public static final synthetic access$setSMediaFileFinder$cp(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 0

    sput-object p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->sMediaFileFinder:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    return-void
.end method

.method public static synthetic b(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeAllMedia$lambda-3(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideoDetail$lambda-12$lambda-11(Lkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    return-void
.end method

.method public static synthetic f(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeImages$lambda-6(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic g(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->_init_$lambda-0(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Ljava/util/List;)V

    return-void
.end method

.method public static final getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->Companion:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readIfHasPermission$lambda-1(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    return-void
.end method

.method private final isSupportedFile(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".jpg"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpeg"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".png"

    .line 3
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".gif"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".webp"

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic j(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideoDetail$lambda-12(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic k(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeVideos$lambda-7(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    return-void
.end method

.method public static synthetic l(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeVideos$lambda-9(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m(ZLcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaChanged$lambda-10(ZLcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    return-void
.end method

.method private static final mediaChanged$lambda-10(ZLcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideos:Z

    .line 2
    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSimpleVideos()Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readImages:Z

    .line 4
    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSimpleImages()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeImages$lambda-4(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    return-void
.end method

.method public static synthetic observeAllMedia$default(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeAllMedia(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    return-void
.end method

.method private static final observeAllMedia$lambda-3(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V
    .locals 3

    const-string v0, "$call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "it"

    .line 2
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 4
    invoke-interface {p0, v1}, Laa/b;->accept(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_2
    invoke-interface {p1, v0}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic observeImages$default(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeImages(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    return-void
.end method

.method private static final observeImages$lambda-4(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSimpleImages()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final observeImages$lambda-6(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V
    .locals 3

    const-string v0, "$call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "it"

    .line 2
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 4
    invoke-interface {p0, v1}, Laa/b;->accept(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_2
    invoke-interface {p1, v0}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic observeVideos$default(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeVideos(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    return-void
.end method

.method private static final observeVideos$lambda-7(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSimpleVideos()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final observeVideos$lambda-9(Laa/b;Landroidx/lifecycle/Observer;Ljava/util/List;)V
    .locals 3

    const-string v0, "$call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "it"

    .line 2
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 4
    invoke-interface {p0, v1}, Laa/b;->accept(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_2
    invoke-interface {p1, v0}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private static final readIfHasPermission$lambda-1(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSimpleInfo()V

    return-void
.end method

.method private final readSimpleImages()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    const-string v2, "_data"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->context:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    :cond_0
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 8
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 10
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v6, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "withAppendedPath(\n      \u2026g()\n                    )"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 12
    invoke-direct {p0, v4, v6, v5}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSingleMediaInfo(Landroid/net/Uri;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 15
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->imageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->imageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->imageList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->safeSort(Ljava/util/List;)V

    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readImages:Z

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->imageFileLivedata:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->imageList:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final readSimpleInfo()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSimpleImages()Ljava/util/List;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSimpleVideos()Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->safeSort(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaFileLivedata:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final readSimpleVideos()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    const-string v2, "_data"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->context:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    :cond_0
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 8
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 9
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 11
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v7, "uri"

    .line 13
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, v4, v6}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSingleMediaInfo(Landroid/net/Uri;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 14
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    if-eqz v3, :cond_3

    .line 16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->videoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->videoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->videoList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->safeSort(Ljava/util/List;)V

    .line 20
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideos:Z

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->videoFileLivedata:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->videoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final readSingleImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
    .locals 11

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->context:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v4, "file.name"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->isSupportedFile(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-object v2

    .line 4
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result p2

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 6
    iget-boolean v6, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mIsAboveAndroid10:Z

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_3

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long p2, v9, v7

    if-nez p2, :cond_4

    return-object v2

    :cond_3
    if-eqz p2, :cond_6

    cmp-long p2, v4, v7

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const-wide/32 v6, 0x1c00000

    cmp-long p2, v4, v6

    if-gez p2, :cond_5

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelectable(Z)V

    .line 9
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setCreateTime(J)V

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setFileName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setUri(Landroid/net/Uri;)V

    return-object v0

    :cond_6
    :goto_1
    return-object v2
.end method

.method static synthetic readSingleImage$default(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSingleImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object p0

    return-object p0
.end method

.method private final readSingleMediaInfo(Landroid/net/Uri;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSingleVideo(Landroid/net/Uri;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSingleImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic readSingleMediaInfo$default(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Landroid/net/Uri;ZLjava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSingleMediaInfo(Landroid/net/Uri;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object p0

    return-object p0
.end method

.method private final readSingleVideo(Landroid/net/Uri;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
    .locals 10

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    if-eqz p2, :cond_0

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->context:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    :goto_0
    const/4 p2, 0x0

    if-nez v2, :cond_1

    return-object p2

    .line 3
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, ".mp4"

    invoke-static {v3, v5, v4, v1, p2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p2

    .line 4
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 6
    iget-boolean v5, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mIsAboveAndroid10:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-nez v1, :cond_4

    return-object p2

    :cond_3
    if-eqz v1, :cond_a

    cmp-long v1, v3, v6

    if-nez v1, :cond_4

    goto/16 :goto_5

    :cond_4
    const-wide/32 v5, 0x6400000

    const/4 v1, 0x1

    cmp-long v7, v3, v5

    if-gez v7, :cond_5

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelectable(Z)V

    .line 9
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setCreateTime(J)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setFileName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setUri(Landroid/net/Uri;)V

    .line 13
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->context:Landroid/app/Application;

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x9

    .line 15
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x12

    .line 16
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    .line 17
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    .line 18
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_8

    .line 19
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setDuration(J)V

    const-string p1, "90"

    .line 20
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "270"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_7

    .line 21
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setWidth(I)V

    .line 22
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setHeight(I)V

    goto :goto_2

    .line 23
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setWidth(I)V

    .line 24
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setHeight(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_8
    :goto_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object p2, v2

    goto :goto_3

    :catch_0
    nop

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_9
    throw p1

    :catch_1
    move-object v2, p2

    :goto_4
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_a
    :goto_5
    return-object p2
.end method

.method static synthetic readSingleVideo$default(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readSingleVideo(Landroid/net/Uri;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object p0

    return-object p0
.end method

.method private final readThumbnail(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Landroid/net/Uri;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thumbnail"

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setThumbnailPath(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->context:Landroid/app/Application;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/32 p1, 0xf4240

    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, p1, p2, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/FileUtil;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-object p1, v1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_2
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_3
    :goto_2
    return-void
.end method

.method private static final readVideoDetail$lambda-12(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$localImageOrVideoBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "localImageOrVideoBean.uri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readThumbnail(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Landroid/net/Uri;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/n;

    invoke-direct {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/n;-><init>(Lkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final readVideoDetail$lambda-12$lambda-11(Lkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 1

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$localImageOrVideoBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final safeSort(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/app/Application;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->context:Landroid/app/Application;

    return-object v0
.end method

.method public final getLastNotify()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->lastNotify:J

    return-wide v0
.end method

.method public final getReadImages()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readImages:Z

    return v0
.end method

.method public final getReadVideos()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideos:Z

    return v0
.end method

.method public final mediaChanged(Landroid/net/Uri;Z)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->lastNotify:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->lastNotify:J

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/o;

    invoke-direct {v0, p2, p0}, Lcom/guochao/faceshow/aaspring/utils/o;-><init>(ZLcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final observeAllMedia(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeAllMedia$default(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;ILjava/lang/Object;)V

    return-void
.end method

.method public final observeAllMedia(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Laa/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;",
            "Laa/b<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readImages:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideos:Z

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readIfHasPermission()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaFileLivedata:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/f;

    invoke-direct {v1, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/f;-><init>(Laa/b;Landroidx/lifecycle/Observer;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final observeImages(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeImages$default(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;ILjava/lang/Object;)V

    return-void
.end method

.method public final observeImages(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Laa/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;",
            "Laa/b<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readImages:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/l;-><init>(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->imageFileLivedata:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/g;

    invoke-direct {v1, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/g;-><init>(Laa/b;Landroidx/lifecycle/Observer;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final observeVideos(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeVideos$default(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;ILjava/lang/Object;)V

    return-void
.end method

.method public final observeVideos(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Laa/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;",
            "Laa/b<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideos:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/k;-><init>(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->videoFileLivedata:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/h;

    invoke-direct {v1, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/h;-><init>(Laa/b;Landroidx/lifecycle/Observer;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final readIfHasPermission()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/j;-><init>(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final readVideoDetail(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "localImageOrVideoBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/m;-><init>(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setLastNotify(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->lastNotify:J

    return-void
.end method

.method public final setReadImages(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readImages:Z

    return-void
.end method

.method public final setReadVideos(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideos:Z

    return-void
.end method
