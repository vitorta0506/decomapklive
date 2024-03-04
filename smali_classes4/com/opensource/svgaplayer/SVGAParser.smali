.class public final Lcom/opensource/svgaplayer/SVGAParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;,
        Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;,
        Lcom/opensource/svgaplayer/SVGAParser$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 72\u00020\u0001:\u0003789B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J \u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J$\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0002J*\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001cJ*\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001cJ \u0010 \u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0012\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010(\u001a\u00020\'H\u0002J\u000e\u0010)\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0003J$\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020,2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0002J$\u0010-\u001a\u00020\u00102\u0006\u0010.\u001a\u00020/2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0002J,\u00100\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001cH\u0007J\u001a\u00100\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u001a\u00100\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0012\u00102\u001a\u0004\u0018\u00010\'2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0016\u00103\u001a\u00020\u00102\u0006\u00104\u001a\u00020\r2\u0006\u00105\u001a\u00020\rJ\u0018\u00106\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGAParser;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "fileDownloader",
        "Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;",
        "getFileDownloader",
        "()Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;",
        "setFileDownloader",
        "(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;)V",
        "mContext",
        "mFrameHeight",
        "",
        "mFrameWidth",
        "_decodeFromCacheKey",
        "",
        "cacheKey",
        "",
        "callback",
        "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
        "_decodeFromInputStream",
        "inputStream",
        "Ljava/io/InputStream;",
        "decodeFromAssets",
        "name",
        "decodeFromCacheKey",
        "block",
        "",
        "decodeFromInputStream",
        "closeInputStream",
        "decodeFromInputStreamBlocked",
        "decodeFromURL",
        "Lkotlin/Function0;",
        "url",
        "Ljava/net/URL;",
        "doError",
        "error",
        "inflate",
        "",
        "byteArray",
        "init",
        "invokeCompleteCallback",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "invokeErrorCallback",
        "e",
        "Ljava/lang/Exception;",
        "parse",
        "assetsName",
        "readAsBytes",
        "setFrameSize",
        "frameWidth",
        "frameHeight",
        "unzip",
        "Companion",
        "FileDownloader",
        "ParseCompletion",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SVGAParser"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mShareParser:Lcom/opensource/svgaplayer/SVGAParser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final threadNum:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static threadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile mFrameHeight:I

.field private volatile mFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->mShareParser:Lcom/opensource/svgaplayer/SVGAParser;

    .line 3
    sget-object v0, Lcom/opensource/svgaplayer/k;->a:Lcom/opensource/svgaplayer/k;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGACache;->onCreate(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    return-void
.end method

.method private static final _decodeFromInputStream$lambda-12(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 6

    const-string v0, "SVGAParser"

    const-string/jumbo v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$inputStream"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cacheKey"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "Input.binary change to entity"

    invoke-virtual {v1, v0, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->readAsBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v4, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/opensource/svgaplayer/j;

    invoke-direct {v5, p3, v2}, Lcom/opensource/svgaplayer/j;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string v4, "Input.inflate start"

    .line 4
    invoke-virtual {v1, v0, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v2}, Lcom/opensource/svgaplayer/SVGAParser;->inflate([B)[B

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "Input.inflate success"

    .line 6
    invoke-virtual {v1, v0, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 8
    sget-object v1, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ADAPTER.decode(inflateBytes)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    iget p3, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 11
    iget v3, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 12
    invoke-direct {v0, v1, v2, p3, v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 13
    new-instance p3, Lcom/opensource/svgaplayer/SVGAParser$_decodeFromInputStream$1$1$2$1;

    invoke-direct {p3, p0, v0, p2}, Lcom/opensource/svgaplayer/SVGAParser$_decodeFromInputStream$1$1$2$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    invoke-virtual {v0, p3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;)V

    .line 14
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v3, :cond_2

    const-string p3, "Input.inflate(bytes) cause exception"

    .line 15
    invoke-virtual {p0, p3, p2}, Lcom/opensource/svgaplayer/SVGAParser;->doError(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    .line 16
    :cond_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v3, :cond_3

    const-string p3, "Input.readAsBytes(inputStream) cause exception"

    .line 17
    invoke-virtual {p0, p3, p2}, Lcom/opensource/svgaplayer/SVGAParser;->doError(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p3

    move-object v1, p3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    .line 18
    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method private static final _decodeFromInputStream$lambda-12$lambda-11$lambda-9(Ljava/lang/String;[B)V
    .locals 3

    const-string v0, "$cacheKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0, p0}, Lcom/opensource/svgaplayer/SVGACache;->buildSvgaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 3
    :goto_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGAParser"

    const-string v2, "create cache file fail."

    invoke-virtual {v0, v1, v2, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback$lambda-22(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method public static final synthetic access$getMShareParser$cp()Lcom/opensource/svgaplayer/SVGAParser;
    .locals 1

    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->mShareParser:Lcom/opensource/svgaplayer/SVGAParser;

    return-object v0
.end method

.method public static final synthetic access$getThreadPoolExecutor$cp()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic access$invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method public static final synthetic access$setThreadPoolExecutor$cp(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    sput-object p0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->_decodeFromInputStream$lambda-12$lambda-11$lambda-9(Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic c(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets$lambda-1(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method public static synthetic d(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream$lambda-17(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLjava/lang/String;)V

    return-void
.end method

.method private static final decodeFromAssets$lambda-1(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    sget-object v1, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    const-string v2, "file:///assets/"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    :goto_1
    return-void
.end method

.method private final decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    .locals 10

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGAParser"

    const-string v2, "================ decode from cache ================"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "decodeFromCacheKey called with cacheKey : "

    .line 2
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string/jumbo p1, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    sget-object v2, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v2, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 6
    new-instance v2, Ljava/io/File;

    const-string v3, "movie.binary"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v3, "binary change to entity"

    .line 7
    invoke-virtual {v0, v1, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "binary change to entity success"

    .line 9
    invoke-virtual {v0, v1, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v5, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 11
    sget-object v6, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v3}, Lcom/squareup/wire/ProtoAdapter;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "ADAPTER.decode(it)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 12
    iget v7, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 13
    iget v8, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 14
    invoke-direct {v5, v6, p1, v7, v8}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 15
    invoke-direct {p0, v5, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 16
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 17
    :try_start_3
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 18
    :goto_1
    :try_start_4
    new-instance v2, Ljava/io/File;

    const-string v3, "movie.spec"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    if-nez v2, :cond_4

    goto/16 :goto_4

    :cond_4
    :try_start_5
    const-string/jumbo v3, "spec change to entity"

    .line 19
    invoke-virtual {v0, v1, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 21
    :try_start_6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v5, 0x800

    :try_start_7
    new-array v6, v5, [B

    :goto_3
    const/4 v7, 0x0

    .line 22
    invoke-virtual {v0, v6, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 23
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 24
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v5, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string/jumbo v7, "spec change to entity success"

    invoke-virtual {v5, v1, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v5, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 27
    iget v7, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 28
    iget v8, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 29
    invoke-direct {v5, v6, p1, v7, v8}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lorg/json/JSONObject;Ljava/io/File;II)V

    .line 30
    invoke-direct {p0, v5, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 31
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 32
    :try_start_8
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 33
    :try_start_9
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    .line 34
    :cond_5
    :try_start_a
    invoke-virtual {v3, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    .line 35
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_c
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v3

    .line 36
    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_e
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception v0

    .line 37
    :try_start_f
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string/jumbo v4, "spec change to entity fail"

    invoke-virtual {v3, v1, v4, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 40
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :catchall_4
    move-exception v0

    .line 41
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v4

    :try_start_11
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    :catch_1
    move-exception v0

    .line 42
    :try_start_12
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v4, "binary change to entity fail"

    invoke-virtual {v3, v1, v4, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 45
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    :catch_2
    move-exception p1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    :goto_4
    return-void
.end method

.method static synthetic decodeFromCacheKey$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method public static synthetic decodeFromInputStream$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method private static final decodeFromInputStream$lambda-17(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLjava/lang/String;)V
    .locals 8

    const-string/jumbo v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$inputStream"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cacheKey"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->readAsBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    array-length v3, v1

    const/4 v4, 0x4

    if-le v3, v4, :cond_4

    const/4 v3, 0x0

    aget-byte v5, v1, v3

    const/16 v6, 0x50

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    aget-byte v6, v1, v5

    const/16 v7, 0x4b

    if-ne v6, v7, :cond_4

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    aget-byte v6, v1, v7

    if-ne v6, v4, :cond_4

    .line 3
    sget-object v4, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v6, "SVGAParser"

    const-string v7, "decode from zip file"

    invoke-virtual {v4, v6, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v6, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v6, p4}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$isUnzipping$p()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5
    :cond_1
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$getFileLock$p()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :try_start_1
    invoke-virtual {v6, p4}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 7
    invoke-static {v5}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$setUnzipping$p(Z)V

    const-string v5, "SVGAParser"

    const-string v6, "no cached, prepare to unzip"

    .line 8
    invoke-virtual {v4, v5, v6}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    :try_start_2
    invoke-direct {p0, v5, p4}, Lcom/opensource/svgaplayer/SVGAParser;->unzip(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 11
    invoke-static {v3}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$setUnzipping$p(Z)V

    const-string v1, "SVGAParser"

    const-string/jumbo v3, "unzip success"

    .line 12
    invoke-virtual {v4, v1, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 15
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 16
    :try_start_6
    monitor-exit v7

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromCacheKey$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 18
    monitor-exit v7

    throw v0

    .line 19
    :cond_4
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v4, "SVGAParser"

    const-string v5, "decode from input stream, inflate start"

    invoke-virtual {v3, v4, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/SVGAParser;->inflate([B)[B

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    new-instance v2, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 22
    sget-object v3, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ADAPTER.decode(it)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 23
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 25
    iget v4, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 26
    invoke-direct {v2, v1, v3, v0, v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 27
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$1$2$1;

    invoke-direct {v0, p0, v2, p2}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$1$2$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    invoke-virtual {v2, v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;)V

    .line 28
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v2, :cond_6

    .line 29
    new-instance v2, Ljava/lang/Exception;

    const-string v0, "inflate(bytes) cause exception"

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V

    .line 31
    :cond_6
    :goto_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-nez v2, :cond_7

    .line 32
    new-instance v2, Ljava/lang/Exception;

    const-string v0, "readAsBytes(inputStream) cause exception"

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_7
    if-eqz p3, :cond_8

    .line 34
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 35
    :try_start_7
    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p3, :cond_8

    goto :goto_4

    :cond_8
    :goto_5
    return-void

    :goto_6
    if-eqz p3, :cond_9

    .line 36
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v0
.end method

.method public static synthetic decodeFromInputStreamBlocked$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStreamBlocked(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method private static final decodeFromURL$lambda-2(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGACache;->isDefaultCache()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromCacheKey$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->_decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    invoke-static {p0}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$lambda-23(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor$lambda-38(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->_decodeFromInputStream$lambda-12(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL$lambda-2(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method private final inflate([B)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    const/16 p1, 0x800

    new-array v1, p1, [B

    .line 3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v4

    if-gtz v4, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    .locals 2

    if-eqz p3, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getCalledComplete()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v0, "SVGAParser"

    const-string v1, "================ parser complete ================"

    invoke-virtual {p3, v0, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p2, p1}, Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;->onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    :goto_0
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setCalledComplete(Z)V

    goto :goto_1

    .line 5
    :cond_2
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/opensource/svgaplayer/i;

    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/i;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method static synthetic invokeCompleteCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method private static final invokeCompleteCallback$lambda-22(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 3

    const-string v0, "$videoItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getCalledComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGAParser"

    const-string v2, "================ parser complete ================"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;->onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    :goto_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setCalledComplete(Z)V

    return-void
.end method

.method private final invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGAParser"

    const-string v2, "================ parser error ================"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "error"

    .line 3
    invoke-virtual {v0, v1, v2, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;->onError()V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/opensource/svgaplayer/d;

    invoke-direct {p3, p2}, Lcom/opensource/svgaplayer/d;-><init>(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static synthetic invokeErrorCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method private static final invokeErrorCallback$lambda-23(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;->onError()V

    :goto_0
    return-void
.end method

.method public static synthetic parse$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method private final readAsBytes(Ljava/io/InputStream;)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    :try_start_0
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final threadPoolExecutor$lambda-38(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/opensource/svgaplayer/SVGAParser;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SVGAParser-Thread-"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private final unzip(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "zipItem.name"

    .line 1
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "SVGAParser"

    const-string v3, "================ unzip prepare ================"

    invoke-virtual {v1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v1, p2}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 6
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    :try_start_3
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 9
    :try_start_4
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 10
    :cond_0
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "../"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v8, v7, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "/"

    invoke-static {v5, v6, v8, v7, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v5, 0x800

    :try_start_6
    new-array v5, v5, [B

    .line 14
    :goto_1
    invoke-virtual {p1, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_3

    .line 15
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 16
    :try_start_7
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 17
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v4, "================ unzip complete ================"

    invoke-virtual {v3, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    .line 19
    :cond_3
    :try_start_8
    invoke-virtual {v3, v5, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 20
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_a
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    .line 21
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_c
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p1

    .line 22
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception p1

    .line 23
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "================ unzip error ================"

    invoke-virtual {v0, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "error"

    .line 24
    invoke-virtual {v0, v2, v1, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 26
    throw p1
.end method


# virtual methods
.method public final _decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "SVGAParser"

    const-string v1, "cacheKey"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v1, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildSvgaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v4, "cache.binary change to entity"

    invoke-virtual {v3, v0, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-direct {p0, v4}, Lcom/opensource/svgaplayer/SVGAParser;->readAsBytes(Ljava/io/InputStream;)[B

    move-result-object v5

    if-nez v5, :cond_0

    move-object p1, v2

    goto :goto_1

    :cond_0
    const-string v6, "cache.inflate start"

    .line 5
    invoke-virtual {v3, v0, v6}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v5}, Lcom/opensource/svgaplayer/SVGAParser;->inflate([B)[B

    move-result-object v5

    if-nez v5, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    const-string v6, "cache.inflate success"

    .line 7
    invoke-virtual {v3, v0, v6}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v3, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 9
    sget-object v6, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "ADAPTER.decode(inflateBytes)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 10
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    iget p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 12
    iget v7, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 13
    invoke-direct {v3, v5, v6, p1, v7}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 14
    new-instance p1, Lcom/opensource/svgaplayer/SVGAParser$_decodeFromCacheKey$1$1$1$1;

    invoke-direct {p1, p0, v3, p2}, Lcom/opensource/svgaplayer/SVGAParser$_decodeFromCacheKey$1$1$1$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    invoke-virtual {v3, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;)V

    .line 15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez p1, :cond_2

    const-string p1, "cache.inflate(bytes) cause exception"

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->doError(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    .line 17
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "cache.readAsBytes(inputStream) cause exception"

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->doError(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v6, p1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    move-object v7, p2

    .line 20
    :try_start_3
    invoke-static/range {v5 .. v10}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 21
    :goto_3
    :try_start_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    :try_start_5
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 23
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 24
    :goto_5
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_8
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception p1

    move-object v4, p1

    .line 25
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "cache.binary change to entity fail"

    invoke-virtual {p1, v0, v3, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_6

    :cond_4
    move-object v1, v2

    :goto_6
    if-nez v1, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_7
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    .line 27
    invoke-static/range {v3 .. v8}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V

    :goto_8
    return-void
.end method

.method public final _decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/opensource/svgaplayer/e;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/opensource/svgaplayer/e;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    const-string v1, "SVGAParser"

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string/jumbo p2, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p1, v1, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "================ decode from assets ================"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/opensource/svgaplayer/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/opensource/svgaplayer/g;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    .locals 8
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    const-string v1, "SVGAParser"

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string/jumbo p2, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p1, v1, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "================ decode from input stream ================"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/opensource/svgaplayer/f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/f;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final decodeFromInputStreamBlocked(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    .locals 8
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p2, "SVGAParser"

    const-string/jumbo p3, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p1, p2, p3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGAParser"

    const-string v2, "================ decode from input stream ================"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->readAsBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    array-length v4, v2

    const/4 v5, 0x4

    if-le v4, v5, :cond_5

    const/4 v4, 0x0

    aget-byte v6, v2, v4

    const/16 v7, 0x50

    if-ne v6, v7, :cond_5

    aget-byte v6, v2, v1

    const/16 v7, 0x4b

    if-ne v6, v7, :cond_5

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    aget-byte v6, v2, v7

    if-ne v6, v5, :cond_5

    const-string v5, "SVGAParser"

    const-string v6, "decode from zip file"

    .line 6
    invoke-virtual {v0, v5, v6}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v5, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v5, p2}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$isUnzipping$p()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8
    :cond_2
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$getFileLock$p()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9
    :try_start_1
    invoke-virtual {v5, p2}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 10
    invoke-static {v1}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$setUnzipping$p(Z)V

    const-string v5, "SVGAParser"

    const-string v7, "no cached, prepare to unzip"

    .line 11
    invoke-virtual {v0, v5, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 13
    :try_start_2
    invoke-direct {p0, v5, p2}, Lcom/opensource/svgaplayer/SVGAParser;->unzip(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 14
    invoke-static {v4}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$setUnzipping$p(Z)V

    const-string v2, "SVGAParser"

    const-string/jumbo v4, "unzip success"

    .line 15
    invoke-virtual {v0, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v5, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 18
    :cond_3
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 19
    :try_start_6
    monitor-exit v6

    .line 20
    :cond_4
    invoke-direct {p0, p2, p3, v1}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    goto :goto_2

    :catchall_2
    move-exception p2

    .line 21
    monitor-exit v6

    throw p2

    :cond_5
    const-string v4, "SVGAParser"

    const-string v5, "decode from input stream, inflate start"

    .line 22
    invoke-virtual {v0, v4, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, v2}, Lcom/opensource/svgaplayer/SVGAParser;->inflate([B)[B

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 24
    :cond_6
    new-instance v2, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 25
    sget-object v3, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "ADAPTER.decode(it)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 26
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    iget p2, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 28
    iget v4, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 29
    invoke-direct {v2, v0, v3, p2, v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 30
    new-instance p2, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;

    invoke-direct {p2, p0, v2, p3}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    invoke-virtual {v2, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;)V

    .line 31
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v3, :cond_7

    .line 32
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "inflate(bytes) cause exception"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p2, p3, v1}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 34
    :cond_7
    :goto_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-nez v3, :cond_8

    .line 35
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "readAsBytes(inputStream) cause exception"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p2, p3, v1}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_8
    if-eqz p4, :cond_9

    .line 37
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catchall_3
    move-exception p2

    goto :goto_6

    :catch_0
    move-exception p2

    .line 38
    :try_start_7
    invoke-direct {p0, p2, p3, v1}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p4, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    return-void

    :goto_6
    if-eqz p4, :cond_a

    .line 39
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_a
    throw p2
.end method

.method public final decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)Lkotlin/jvm/functions/Function0;
    .locals 5
    .param p1    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "SVGAParser"

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string/jumbo p2, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p1, v2, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "================ decode from url ================"

    invoke-virtual {v0, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v3, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v3, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheKey(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/SVGACache;->isCached(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo p1, "this url cached"

    .line 6
    invoke-virtual {v0, v2, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/opensource/svgaplayer/h;

    invoke-direct {v0, p0, v4, p2}, Lcom/opensource/svgaplayer/h;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v1

    :cond_1
    const-string v1, "no cached, prepare to download"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    new-instance v1, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;

    invoke-direct {v1, p0, v4, p2}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    .line 10
    new-instance v2, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$3;

    invoke-direct {v2, p0, p2}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$3;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;->resume(Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public final doError(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGAParser"

    invoke-virtual {v0, v1, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V

    return-void
.end method

.method public final getFileDownloader()Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGACache;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method public final parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated from 2.4.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.decodeFromInputStream(inputStream, cacheKey, callback, closeInputStream)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method public final parse(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated from 2.4.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.decodeFromAssets(assetsName, callback)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "assetsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method public final parse(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 1
    .param p1    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated from 2.4.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.decodeFromURL(url, callback)"
            imports = {}
        .end subannotation
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setFileDownloader(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    return-void
.end method

.method public final setFrameSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 2
    iput p2, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    return-void
.end method
