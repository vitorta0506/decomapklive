.class public Lcom/guochao/faceshow/aaspring/utils/ZipUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZIP"

.field static final e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetFileList(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 5
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "SecurityException"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 12
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v1
.end method

.method public static UnZipFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object p0, v1

    .line 28
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 29
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "SecurityException"

    if-eqz v4, :cond_3

    .line 30
    :try_start_2
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    if-nez p0, :cond_0

    .line 35
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 36
    :cond_3
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_5

    .line 38
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 39
    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "ZIP"

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create the file:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 43
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 44
    :cond_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v1, 0x400

    :try_start_3
    new-array v1, v1, [B

    .line 45
    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    const/4 v5, 0x0

    .line 46
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 47
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_3

    .line 48
    :cond_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 49
    :cond_8
    invoke-static {v2}, Lma/c;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v1}, Lma/c;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p0

    move-object v3, v1

    :goto_4
    move-object v1, v2

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v3, v1

    .line 51
    :goto_5
    invoke-static {v1}, Lma/c;->a(Ljava/io/Closeable;)V

    .line 52
    invoke-static {v3}, Lma/c;->a(Ljava/io/Closeable;)V

    .line 53
    throw p0
.end method

.method public static UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "ZIP"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v3, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "SecurityException"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create the file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 17
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    :try_start_1
    new-array p0, p0, [B

    .line 18
    :goto_2
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_4

    .line 19
    invoke-virtual {v3, p0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 20
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-object v1, v3

    goto :goto_4

    .line 22
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 23
    :goto_3
    invoke-static {v1}, Lma/c;->a(Ljava/io/Closeable;)V

    .line 24
    throw p0

    .line 25
    :catch_1
    :goto_4
    invoke-static {v1}, Lma/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static UpZip(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static ZipFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Laa/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipOutputStream;",
            "Laa/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Laa/b;->accept(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p0, 0x1000

    new-array p0, p0, [B

    .line 7
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 8
    invoke-virtual {p2, p0, v2, p3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 11
    array-length v1, v0

    if-gtz v1, :cond_4

    .line 12
    new-instance v1, Ljava/util/zip/ZipEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 14
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 15
    :cond_4
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_5

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ZipUtils;->ZipFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Laa/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public static ZipFolder(Ljava/lang/String;Ljava/lang/String;Laa/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Laa/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/ZipUtils;->ZipFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Laa/b;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 5
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method

.method public static safeUnZip(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
