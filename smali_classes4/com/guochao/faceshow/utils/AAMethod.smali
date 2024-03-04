.class public Lcom/guochao/faceshow/utils/AAMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIME_MapTable:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x42

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, ".jpg"

    const-string v2, "image/jpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, ".txt"

    const-string/jumbo v3, "text/plain"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, ".jpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ".pdf"

    const-string v2, "application/pdf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, ".png"

    const-string v2, "image/png"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, ".doc"

    const-string v2, "application/msword"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, ".docx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, ".pps"

    const-string v2, "application/vnd.ms-powerpoint"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, ".ppt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, ".3gp"

    const-string/jumbo v2, "video/3gpp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, ".apk"

    const-string v2, "application/vnd.android.package-archive"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, ".asf"

    const-string/jumbo v2, "video/x-ms-asf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, ".avi"

    const-string/jumbo v2, "video/x-msvideo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, ".bin"

    const-string v2, "application/octet-stream"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, ".bmp"

    const-string v4, "image/bmp"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const-string v1, ".c"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    const-string v1, ".class"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const-string v1, ".conf"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    const-string v1, ".cpp"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    const-string v1, ".xls"

    const-string v4, "application/vnd.ms-excel"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    const-string v1, ".xlsx"

    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    const-string v1, ".exe"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, ".gif"

    const-string v2, "image/gif"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, ".gtar"

    const-string v2, "application/x-gtar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, ".gz"

    const-string v2, "application/x-gzip"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, ".h"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, ".htm"

    const-string/jumbo v2, "text/html"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    const-string v1, ".html"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, ".jar"

    const-string v2, "application/java-archive"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, ".java"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, ".js"

    const-string v2, "application/x-javascript"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, ".log"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, ".m3u"

    const-string v2, "audio/x-mpegurl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, ".m4a"

    const-string v2, "audio/mp4a-latm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x21

    aput-object v1, v0, v4

    const-string v1, ".m4b"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x22

    aput-object v1, v0, v4

    const-string v1, ".m4p"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, ".m4u"

    const-string/jumbo v2, "video/vnd.mpegurl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, ".m4v"

    const-string/jumbo v2, "video/x-m4v"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, ".mov"

    const-string/jumbo v2, "video/quicktime"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, ".mp2"

    const-string v2, "audio/x-mpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x27

    aput-object v1, v0, v4

    const-string v1, ".mp3"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, ".mp4"

    const-string/jumbo v2, "video/mp4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x29

    aput-object v1, v0, v4

    const-string v1, ".mpc"

    const-string v4, "application/vnd.mpohun.certificate"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2a

    aput-object v1, v0, v4

    const-string v1, ".mpe"

    const-string/jumbo v4, "video/mpeg"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2b

    aput-object v1, v0, v5

    const-string v1, ".mpeg"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2c

    aput-object v1, v0, v5

    const-string v1, ".mpg"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2d

    aput-object v1, v0, v4

    const-string v1, ".mpg4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, ".mpga"

    const-string v2, "audio/mpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, ".msg"

    const-string v2, "application/vnd.ms-outlook"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, ".ogg"

    const-string v2, "audio/ogg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, ".pptx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, ".prop"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, ".rc"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, ".rmvb"

    const-string v2, "audio/x-pn-realaudio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, ".rtf"

    const-string v2, "application/rtf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, ".sh"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, ".tar"

    const-string v2, "application/x-tar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, ".tgz"

    const-string v2, "application/x-compressed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, ".wav"

    const-string v2, "audio/x-wav"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, ".wma"

    const-string v2, "audio/x-ms-wma"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, ".wmv"

    const-string v2, "audio/x-ms-wmv"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, ".wps"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, ".xml"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, ".z"

    const-string v2, "application/x-compress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, ".zip"

    const-string v2, "application/x-zip-compressed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, ""

    const-string v2, "*/*"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    sput-object v0, Lcom/guochao/faceshow/utils/AAMethod;->MIME_MapTable:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFullVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 4
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "BuzzCast "

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x1c

    const/4 v5, 0x1

    const-string/jumbo v6, "version %s"

    if-lt v3, v4, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "*/*"

    if-gez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-ne p0, v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    sget-object v3, Lcom/guochao/faceshow/utils/AAMethod;->MIME_MapTable:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 5
    aget-object v4, v3, v2

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    aget-object p0, v3, v2

    const/4 v0, 0x1

    aget-object v1, p0, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getRealHeight(Landroid/content/Context;)I
    .locals 1

    const-string/jumbo v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method
