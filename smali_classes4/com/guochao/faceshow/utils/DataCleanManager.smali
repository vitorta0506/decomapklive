.class public Lcom/guochao/faceshow/utils/DataCleanManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/utils/DataCleanManager;->lambda$clearThirdPartyDir$0(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteUgcFiles(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/utils/DataCleanManager;->getAllCacheFileList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static clearAllCache(Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/utils/DataCleanManager$4;

    invoke-direct {v1}, Lcom/guochao/faceshow/utils/DataCleanManager$4;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/utils/DataCleanManager$3;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/utils/DataCleanManager$3;-><init>(Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public static clearAllTencentLogs(Landroid/content/Context;)V
    .locals 1

    const-string v0, "log"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteFiles(Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static clearIMCache(Landroid/content/Context;Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v0, "im_files"

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getGroupID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Ljava/io/File;

    const-string v1, "c2c"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getConversationID()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public static clearIMFiles(Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/utils/DataCleanManager$2;

    invoke-direct {v1}, Lcom/guochao/faceshow/utils/DataCleanManager$2;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/utils/DataCleanManager$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/utils/DataCleanManager$1;-><init>(Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public static clearThirdPartyDir()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/utils/a;->a:Lcom/guochao/faceshow/utils/a;

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 4
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/k;->subscribe()Lth/b;

    :cond_0
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static deleteDir(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 5
    new-instance v5, Ljava/io/File;

    aget-object v6, v3, v4

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_5

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_3
    return v1

    .line 8
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_5
    return v2
.end method

.method private static deleteFiles(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    array-length p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    aget-object v2, v0, v1

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteFiles(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xlog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_3
    return-void
.end method

.method public static deleteIMFiles(Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 4
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "translate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteIMFiles(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_3
    return-void
.end method

.method private static deleteUgcFiles(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 4
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "to_publish"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static getAllCacheFileList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "ugc_video"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "short_videos"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Ljava/io/File;

    const-string v3, "parster"

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getApplicationCacheDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/UnityAdsCache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXPathV2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/effect/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getGlideCacheDirV2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Ljava/io/File;

    const-string v3, "/crop/"

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, Ljava/io/File;

    const-string v3, "/banner_image/"

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCardVideoThumbDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DataCleanManager;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-wide v0
.end method

.method public static getFormatSize(D)Ljava/lang/String;
    .locals 11

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    const-string p0, "0KB"

    return-object p0

    :cond_0
    div-double v4, p0, v0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmpg-double v10, v4, v2

    if-gez v10, :cond_1

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    const-string v0, "%dKB"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    div-double p0, v4, v0

    cmpg-double v10, p0, v2

    if-gez v10, :cond_2

    .line 3
    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v8

    const-string p0, "%dMB"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    div-double v0, p0, v0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3

    .line 5
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    const-string v0, "%dGB"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 8
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v8

    const-string p0, "%dTB"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIMFolderSize(Ljava/io/File;)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 5
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "translate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DataCleanManager;->getIMFolderSize(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_1

    .line 8
    :cond_2
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-long/2addr v0, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-wide v0
.end method

.method public static getIMTotalCacheSize()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getIMRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 4
    aget-object v4, v0, v3

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DataCleanManager;->getIMFolderSize(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1

    .line 7
    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/DataCleanManager;->getUgcFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-double v0, v1

    .line 10
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DataCleanManager;->getFormatSize(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalCacheSize()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/DataCleanManager;->getAllCacheFileList()Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DataCleanManager;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    long-to-double v0, v1

    .line 4
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DataCleanManager;->getFormatSize(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUgcFileSize()J
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getUgcRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 4
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "to_publish"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DataCleanManager;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private static ifDontDeleteThisFile(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thumb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "voice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$clearThirdPartyDir$0(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mob/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    .line 2
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/txrtmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ".mp4"

    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;Ljava/lang/String;)Z

    .line 3
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/txugc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    .line 4
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "/NXShow/gift"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    .line 5
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "/NXShow/gift_v2"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, ".svga"

    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;Ljava/lang/String;)Z

    const/4 p0, 0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
