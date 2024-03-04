.class public Lorg/light/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/utils/FileUtils$OnFileCopyListener;,
        Lorg/light/utils/FileUtils$FileCopyTask;,
        Lorg/light/utils/FileUtils$FileComparator;,
        Lorg/light/utils/FileUtils$AssetFileComparator;
    }
.end annotation


# static fields
.field public static final MD5_SALT:Ljava/lang/String; = "aekit"

.field public static final PIC_POSTFIX_JPEG:Ljava/lang/String; = ".jpg"

.field public static final PIC_POSTFIX_MP4:Ljava/lang/String; = ".mp4"

.field public static final PIC_POSTFIX_PNG:Ljava/lang/String; = ".png"

.field public static final PIC_POSTFIX_WEBP:Ljava/lang/String; = ".webp"

.field public static final RES_POSTFIX_ENCRYPTED_GLB:Ljava/lang/String; = ".dat"

.field public static final RES_POSTFIX_ENCRYPTED_GLTF:Ljava/lang/String; = ".datf"

.field public static final RES_POSTFIX_GLB:Ljava/lang/String; = ".glb"

.field public static final RES_POSTFIX_GLTF:Ljava/lang/String; = ".gltf"

.field public static final RES_PREFIX_ASSETS:Ljava/lang/String; = "assets://"

.field public static final RES_PREFIX_HTTP:Ljava/lang/String; = "http://"

.field public static final RES_PREFIX_HTTPS:Ljava/lang/String; = "https://"

.field public static final RES_PREFIX_STORAGE:Ljava/lang/String; = "/"

.field public static final SIMPLE_ASSET_COMPARATOR:Lorg/light/utils/FileUtils$AssetFileComparator;

.field public static final SIMPLE_ASSET_MD5_COMPARATOR:Lorg/light/utils/FileUtils$AssetFileComparator;

.field public static final SIMPLE_FILE_COMPARATOR:Lorg/light/utils/FileUtils$FileComparator;

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/light/utils/FileUtils$2;

    invoke-direct {v0}, Lorg/light/utils/FileUtils$2;-><init>()V

    sput-object v0, Lorg/light/utils/FileUtils;->SIMPLE_ASSET_COMPARATOR:Lorg/light/utils/FileUtils$AssetFileComparator;

    .line 2
    new-instance v0, Lorg/light/utils/FileUtils$3;

    invoke-direct {v0}, Lorg/light/utils/FileUtils$3;-><init>()V

    sput-object v0, Lorg/light/utils/FileUtils;->SIMPLE_ASSET_MD5_COMPARATOR:Lorg/light/utils/FileUtils$AssetFileComparator;

    .line 3
    new-instance v0, Lorg/light/utils/FileUtils$4;

    invoke-direct {v0}, Lorg/light/utils/FileUtils$4;-><init>()V

    sput-object v0, Lorg/light/utils/FileUtils;->SIMPLE_FILE_COMPARATOR:Lorg/light/utils/FileUtils$FileComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyAssetsMaterialToExternalStorage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {p0, v4}, Lorg/light/utils/FileUtils;->CopyAssetsMaterialToExternalStorage(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/light/utils/FileUtils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p0, p1}, Lorg/light/utils/FileUtils;->getAssetLength(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lorg/light/utils/FileUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static assetAndPathExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "/"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "assets"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 4
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v4, "assets://"

    const-string v5, ""

    .line 6
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    array-length p1, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_2

    aget-object v5, p0, v4

    .line 9
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return v2

    .line 10
    :cond_3
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static asyncCopyFile(Ljava/io/InputStream;Ljava/lang/String;Lorg/light/utils/FileUtils$OnFileCopyListener;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/light/utils/FileUtils$FileCopyTask;

    invoke-direct {v0, p0, p1}, Lorg/light/utils/FileUtils$FileCopyTask;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lorg/light/utils/FileUtils$FileCopyTask;->setOnFileCopyListener(Lorg/light/utils/FileUtils$OnFileCopyListener;)V

    .line 3
    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static checkAssetsPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 5
    throw p0

    .line 6
    :catch_0
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    const-string v0, "."

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "webp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 11
    throw p0

    .line 12
    :catch_1
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :catchall_2
    move-exception p0

    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 16
    throw p0

    .line 17
    :catch_2
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".webp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :try_start_3
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 20
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :catchall_3
    move-exception p0

    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 21
    throw p0

    .line 22
    :catch_3
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 25
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_4
    move-exception p0

    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 26
    throw p0

    .line 27
    :catch_4
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public static checkPhoto(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method

.method public static clearDir(Ljava/io/File;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-static {v3}, Lorg/light/utils/FileUtils;->clearDir(Ljava/io/File;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static clearDirs([Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Lorg/light/utils/FileUtils;->clearDir(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/light/utils/FileUtils;->SIMPLE_ASSET_MD5_COMPARATOR:Lorg/light/utils/FileUtils$AssetFileComparator;

    invoke-static {p0, p1, p2, v0}, Lorg/light/utils/FileUtils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/light/utils/FileUtils$AssetFileComparator;)Z

    move-result p0

    return p0
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/light/utils/FileUtils$AssetFileComparator;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lorg/light/utils/FileUtils;->performCopyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/light/utils/FileUtils$AssetFileComparator;)Z

    move-result p0

    return p0
.end method

.method public static copyAssetsToSDCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {p0, v4, p2}, Lorg/light/utils/FileUtils;->copyAssetsToSDCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/light/utils/FileUtils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static copyDir(Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v0}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {p0, v0}, Lorg/light/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/light/utils/FileUtils;->copyDir(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 49
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :try_start_2
    invoke-static {}, Lorg/light/utils/ByteArrayPool;->getGenericInstance()Lorg/light/utils/ByteArrayPool;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {p0, v1}, Lorg/light/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object p0

    .line 52
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 53
    invoke-virtual {v2, p0, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Lorg/light/utils/ByteArrayPool;->getGenericInstance()Lorg/light/utils/ByteArrayPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/light/utils/ByteArrayPool;->returnBuf([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    .line 56
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 57
    :catch_0
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    goto :goto_9

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catch_1
    move-object p1, v1

    :catch_2
    move-object v1, v2

    goto :goto_5

    :catch_3
    move-object p1, v1

    :catch_4
    move-object v1, v2

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object p1, v1

    :goto_3
    if-eqz v1, :cond_2

    .line 58
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    nop

    :cond_2
    :goto_4
    if-eqz p1, :cond_3

    .line 59
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 60
    :catch_6
    :cond_3
    throw p0

    :catch_7
    move-object p1, v1

    :goto_5
    if-eqz v1, :cond_4

    .line 61
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_6

    :catch_8
    nop

    :cond_4
    :goto_6
    if-eqz p1, :cond_6

    goto :goto_1

    :catch_9
    move-object p1, v1

    :goto_7
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_8

    :catch_a
    nop

    :cond_5
    :goto_8
    if-eqz p1, :cond_6

    goto :goto_1

    :catch_b
    :cond_6
    :goto_9
    return v0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    .line 33
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 34
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 36
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_2
    return v0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x1000

    :try_start_1
    new-array p1, p1, [B

    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 39
    invoke-virtual {v2, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 40
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 41
    invoke-static {v2}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 42
    :goto_1
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 43
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 44
    throw p1

    .line 45
    :catch_1
    :goto_2
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 46
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/light/utils/FileUtils;->SIMPLE_FILE_COMPARATOR:Lorg/light/utils/FileUtils$FileComparator;

    invoke-static {p0, p1, v0}, Lorg/light/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Lorg/light/utils/FileUtils$FileComparator;)Z

    move-result p0

    return p0
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;Lorg/light/utils/FileUtils$FileComparator;)Z
    .locals 6

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p0, v0}, Lorg/light/utils/FileUtils$FileComparator;->equals(Ljava/lang/String;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    sget-object p0, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string p2, "comparator != null && comparator.equals(context, assetPath, dstFile)"

    invoke-static {p0, p2}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    invoke-static {p1}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 8
    invoke-static {p1}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    return v2

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-static {v0}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-static {p2}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    .line 14
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4

    .line 15
    sget-object p0, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!parent.exists() && !parent.mkdirs(), parent dir = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    invoke-static {p1}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 17
    invoke-static {p1}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    .line 18
    :cond_4
    :try_start_2
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p0

    if-gtz p0, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 p1, 0x400

    :try_start_4
    new-array p1, p1, [B

    .line 21
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_6

    .line 22
    invoke-virtual {p0, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    move-object p1, p0

    .line 23
    :goto_1
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 24
    invoke-static {p1}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v5, p2

    move-object p2, p0

    move-object p0, p1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, p2

    move-object p2, p1

    :goto_2
    move-object p1, v5

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p2, p1

    .line 25
    :goto_3
    :try_start_5
    sget-object v3, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v4, "performCopyFile exception catched, info = %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 27
    invoke-static {p1}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 28
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_4
    return v1

    :catchall_3
    move-exception p0

    .line 29
    invoke-static {p1}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 30
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 31
    throw p0

    .line 32
    :cond_7
    :goto_5
    sget-object p0, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string p1, "TextUtils.isEmpty(assetPath) || TextUtils.isEmpty(dstPath)"

    invoke-static {p0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static copyRawSafe(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {p0}, Lorg/light/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    array-length p2, p1

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p1, v1}, Lorg/light/utils/IOUtils;->write([BLjava/io/OutputStream;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    :catch_0
    move-object p1, v1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_4

    .line 11
    :catch_2
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 12
    invoke-static {p0, p1}, Lorg/light/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_3
    move-exception p2

    .line 13
    :try_start_4
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 16
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_4
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    .line 17
    :goto_2
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 18
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 20
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-void

    :catchall_1
    move-exception p1

    .line 22
    :goto_4
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    :cond_2
    :goto_5
    throw p1
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 10
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 12
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_2
    return-void
.end method

.method public static delete(Ljava/io/File;Z)V
    .locals 4

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 17
    :cond_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 18
    invoke-static {v3, p1}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    return-void
.end method

.method public static deleteAllFilesOfDir(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 6
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/light/utils/FileUtils;->deleteAllFilesOfDir(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lorg/light/utils/FileUtils;->deleteDirWihtFile(Ljava/io/File;)V

    return-void
.end method

.method public static deleteDirWihtFile(Ljava/io/File;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-static {v3}, Lorg/light/utils/FileUtils;->deleteDirWihtFile(Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static deleteFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/light/utils/FileUtils$1;

    invoke-direct {p0, p1}, Lorg/light/utils/FileUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "assets"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static genSeperateFileDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getAssetLength(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-wide p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    nop

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_0

    .line 6
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    :cond_0
    :goto_2
    throw p0

    :catch_3
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :cond_1
    :goto_4
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    int-to-long p0, p0

    .line 13
    invoke-static {v0}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    return-wide p0

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 14
    throw p0

    .line 15
    :catch_5
    invoke-static {v0}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static getAssetsMD5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz p1, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    const-string p1, "MD5"

    .line 7
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 8
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 9
    invoke-virtual {p1, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length v1, p1

    :goto_2
    if-ge v3, v1, :cond_4

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x10

    if-ge v2, v4, :cond_3

    const-string v4, "0"

    goto :goto_3

    :cond_3
    const-string v4, ""

    .line 13
    :goto_3
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 17
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_4
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_7

    :catch_2
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception p1

    move-object p0, v0

    .line 18
    :goto_5
    :try_start_5
    invoke-static {p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p0, :cond_5

    .line 19
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    .line 20
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    return-object v0

    :goto_7
    if-eqz v0, :cond_6

    .line 21
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_5
    move-exception p0

    .line 22
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    .line 23
    :cond_6
    :goto_8
    throw p1

    :cond_7
    :goto_9
    return-object v0
.end method

.method private static getFileLength(Ljava/lang/String;)J
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFileName] path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "/"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    if-le v1, v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFileName] return title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "/"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameWithSuffixByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFileNameWithSuffixByPath] path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFileNameWithSuffixByPath] return title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getFileSuffixFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "."

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFinalVideoName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "selfiee_%s.mp4"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/light/utils/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_1

    .line 5
    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-wide v0
.end method

.method public static getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "MD5"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x1000

    new-array p0, p0, [B

    .line 4
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v0, p0, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v5, v0, :cond_2

    aget-byte v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    const-string v3, "0"

    goto :goto_2

    :cond_1
    const-string v3, ""

    .line 10
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    return-object v1
.end method

.method public static getPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRealDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/light/utils/FileUtils;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "assets://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "SHA-1"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x1000

    new-array p0, p0, [B

    .line 4
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v0, p0, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v5, v2, :cond_2

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v4, "0"

    goto :goto_2

    :cond_1
    const-string v4, ""

    .line 9
    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    return-object v1
.end method

.method public static varargs getWritableDir([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2
    invoke-static {v3, v1}, Lorg/light/device/LightDeviceUtils;->canWriteFile(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static hasFiles(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/light/utils/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    array-length p0, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public static isDirectoryWritable(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v1
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "assets://"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lorg/light/utils/FileUtils;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/light/utils/FileUtils;->loadAssetsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-static {p1}, Lorg/light/utils/FileUtils;->loadSdCardFileString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "assets://"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/light/utils/FileUtils;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/light/utils/FileUtils;->loadAssetsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/light/utils/FileUtils;->loadSdCardFileString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static loadAssetsByteArray(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 3
    new-array v0, p1, [B

    .line 4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static loadAssetsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object p1, v1

    move-object v1, p0

    move-object p0, p1

    .line 7
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    :cond_0
    invoke-static {p1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 9
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_2
    move-exception v0

    move-object v1, p1

    .line 11
    :goto_2
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 12
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 13
    throw v0
.end method

.method public static loadByteArray(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "assets://"

    .line 1
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p1}, Lorg/light/utils/FileUtils;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v1, p0

    .line 4
    invoke-static {v1}, Lorg/light/utils/FileUtils;->loadByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_1
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :goto_2
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 7
    throw p0
.end method

.method public static loadByteArray(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/16 v2, 0x400

    const/4 v3, 0x0

    :try_start_0
    new-array v2, v2, [B

    .line 8
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :goto_0
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 10
    invoke-virtual {v4, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 12
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v4}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 14
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-static {v3}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :goto_2
    return-object v1

    :goto_3
    invoke-static {v3}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 16
    throw p0
.end method

.method public static loadRawResourceString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 9
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {p1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 12
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 13
    throw v0

    :catch_0
    const/4 v0, 0x0

    .line 14
    invoke-static {p1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 15
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static loadSdCardFileString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    .line 7
    :goto_1
    :try_start_3
    sget-object v3, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    :cond_0
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 9
    invoke-static {v2}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_2
    move-exception v0

    move-object v1, p0

    .line 11
    :goto_2
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 12
    invoke-static {v2}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 13
    throw v0
.end method

.method public static md5ForBase64Data(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 1
    fill-array-data v1, :array_0

    .line 2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    aget-char v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 4
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-byte v4, v0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, p0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, ""

    return-object p0

    nop

    :array_0
    .array-data 2
        0x72s
        0x44s
        0x7as
        0x6fs
        0x69s
        0x65s
        0x35s
        0x65s
        0x33s
        0x6fs
        0x6es
        0x67s
        0x66s
        0x7as
        0x31s
        0x6cs
    .end array-data
.end method

.method public static merge(Ljava/util/List;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, p1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public static move(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static moveDir(Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 12
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p0, v1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/light/utils/FileUtils;->moveDir(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private static performCopyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/light/utils/FileUtils$AssetFileComparator;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 4
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p3, p0, p1, v2}, Lorg/light/utils/FileUtils$AssetFileComparator;->equals(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string p1, "comparator != null && comparator.equals(context, assetPath, dstFile)"

    invoke-static {p0, p1}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 8
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    return v3

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 10
    invoke-static {v2}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    .line 11
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 13
    invoke-static {p0}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p3

    if-nez p3, :cond_4

    .line 15
    sget-object p1, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!parent.exists() && !parent.mkdirs(), parent dir = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 17
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    .line 18
    :cond_4
    :try_start_2
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    if-gtz p1, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 p2, 0x400

    :try_start_4
    new-array p2, p2, [B

    .line 21
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_6

    .line 22
    invoke-virtual {p1, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_6
    move-object p2, p1

    const/4 v1, 0x1

    .line 23
    :goto_1
    invoke-static {p0}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 24
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v5, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v5

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, p2

    .line 25
    :goto_2
    :try_start_5
    sget-object p3, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "performCopyAssetsFile exception catched, info = %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v2}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 27
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 28
    invoke-static {p1}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    return v1

    :catchall_3
    move-exception p0

    .line 29
    invoke-static {p2}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 30
    invoke-static {p1}, Lorg/light/utils/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 31
    throw p0

    .line 32
    :cond_7
    :goto_4
    sget-object p0, Lorg/light/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string p1, "TextUtils.isEmpty(assetPath) || TextUtils.isEmpty(dstPath)"

    invoke-static {p0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static readBytes(Ljava/io/InputStream;I)[B
    .locals 4

    .line 1
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    .line 5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    const/16 v4, 0x1000

    if-ge p0, v4, :cond_2

    .line 7
    :try_start_2
    invoke-static {}, Lorg/light/utils/ByteArrayPool;->getGenericInstance()Lorg/light/utils/ByteArrayPool;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/light/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v4

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lorg/light/utils/ByteArrayPool;->getGenericInstance()Lorg/light/utils/ByteArrayPool;

    move-result-object v5

    const/16 v6, 0x3000

    invoke-virtual {v5, v6}, Lorg/light/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 9
    :catch_1
    :try_start_3
    invoke-static {}, Lorg/light/utils/ByteArrayPool;->getGenericInstance()Lorg/light/utils/ByteArrayPool;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/light/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v4

    goto :goto_0

    :goto_1
    if-ge v5, p0, :cond_3

    .line 10
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 11
    invoke-virtual {v2, v4, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v5, v6

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lorg/light/utils/ByteArrayPool;->getGenericInstance()Lorg/light/utils/ByteArrayPool;

    move-result-object p0

    invoke-virtual {p0, v4}, Lorg/light/utils/ByteArrayPool;->returnBuf([B)V

    .line 13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 14
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 15
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 16
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v1

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v3, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    .line 17
    :goto_2
    :try_start_5
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_4

    .line 18
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_3
    return-object v1

    :catchall_2
    move-exception p0

    :goto_4
    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_6

    .line 20
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 21
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    .line 22
    :goto_7
    invoke-static {v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    .line 23
    :cond_7
    :goto_8
    throw p0
.end method

.method public static readTextFileFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 9
    invoke-static {p1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 10
    invoke-static {v0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v1

    .line 12
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 13
    invoke-static {p1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 14
    invoke-static {v0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 15
    throw v1

    :catch_0
    const/4 v1, 0x0

    .line 16
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 17
    invoke-static {p1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 18
    invoke-static {v0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    return-object v1
.end method

.method public static readTxtFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets://"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 8
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz p0, :cond_7

    .line 10
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_9

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto :goto_4

    :catch_3
    move-exception p0

    move-object p1, v1

    move-object v1, p0

    move-object p0, p1

    .line 11
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_2

    .line 12
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    if-eqz p0, :cond_7

    .line 14
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, p1

    :goto_4
    if-eqz v1, :cond_3

    .line 16
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    if-eqz p0, :cond_4

    .line 18
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :cond_4
    :goto_6
    throw v0

    .line 21
    :cond_5
    :try_start_a
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 22
    :goto_7
    :try_start_b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    .line 24
    :cond_6
    :try_start_c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_9

    :catchall_3
    move-exception p1

    move-object v1, p0

    goto :goto_a

    :catch_8
    move-exception p1

    move-object v1, p0

    goto :goto_8

    :catchall_4
    move-exception p1

    goto :goto_a

    :catch_9
    move-exception p1

    .line 25
    :goto_8
    :try_start_d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v1, :cond_7

    .line 26
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_9

    :catch_a
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :cond_7
    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_a
    if-eqz v1, :cond_8

    .line 29
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_b

    :catch_b
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    :cond_8
    :goto_b
    throw p1
.end method

.method public static save(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_0
    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p0, v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p0, v0

    .line 5
    :goto_2
    :try_start_3
    invoke-static {p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 6
    invoke-static {v0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 7
    :goto_3
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    return-void

    :catchall_3
    move-exception p1

    .line 8
    :goto_4
    invoke-static {v0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 9
    invoke-static {p0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 10
    throw p1
.end method

.method public static saveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    invoke-static {v1}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 4
    :goto_0
    :try_start_2
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    invoke-static {v0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lorg/light/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 6
    throw p0
.end method

.method public static toBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance v2, Landroid/util/Base64OutputStream;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 4
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v2, v3, v5, v4}, Landroid/util/Base64OutputStream;->write([BII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->flush()V

    .line 7
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    .line 8
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v2

    :catch_1
    move-object v2, v0

    :goto_1
    return-object v2
.end method
