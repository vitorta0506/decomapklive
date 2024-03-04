.class public Lcom/guochao/faceshow/aaspring/utils/UnusedFileDeleter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnusedFileDeleter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UnusedFileDeleter;->moveFaceShowFile()V

    return-void
.end method

.method public static delete()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/UnusedFileDeleter$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/UnusedFileDeleter$1;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 2
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/k;->subscribe()Lth/b;

    return-void
.end method

.method private static moveDirs(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lni/a;->n(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-static {p0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "UnusedFileDeleter"

    const-string v3, "error when moving directory \r\nold directory is %s\r\n new directory is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    aput-object p1, v4, v0

    .line 5
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v2, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 7
    :goto_2
    invoke-static {p0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    .line 8
    throw p1
.end method

.method private static moveFaceShowFile()V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getOldApplicationCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FaceShow"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/UnusedFileDeleter;->moveDirs(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
