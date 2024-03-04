.class public Lorg/light/RendererConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "cache"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/RendererConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final INIT_ALL_SEG:I = 0x0

.field public static final INIT_BG_SEG:I = 0x2

.field public static final INIT_CLEAN:I = 0x1

.field private static final PROGRAM_CACHE_PATH:Ljava/lang/String; = "program_cache"


# instance fields
.field public bundlePath:Ljava/lang/String;

.field public debugPath:Ljava/lang/String;

.field public enableAutoCropImage:Z

.field public enableFastSoftDecode:Z

.field public enablePerfReport:Z

.field public enablePerfVramTrace:Z

.field public englishPerfKey:Z

.field public initMode:I

.field public lightCacheRootPath:Ljava/lang/String;

.field public perfRunMode:I

.field public softDecodeThreadCount:I

.field public userConfigPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/RendererConfig$1;

    invoke-direct {v0}, Lorg/light/RendererConfig$1;-><init>()V

    sput-object v0, Lorg/light/RendererConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/RendererConfig;->bundlePath:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/RendererConfig;->debugPath:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/light/RendererConfig;->userConfigPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lorg/light/RendererConfig;->initMode:I

    .line 6
    iput-boolean v1, p0, Lorg/light/RendererConfig;->enablePerfReport:Z

    .line 7
    iput-boolean v1, p0, Lorg/light/RendererConfig;->enablePerfVramTrace:Z

    .line 8
    iput-boolean v1, p0, Lorg/light/RendererConfig;->englishPerfKey:Z

    .line 9
    iput v1, p0, Lorg/light/RendererConfig;->perfRunMode:I

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lorg/light/RendererConfig;->enableAutoCropImage:Z

    .line 11
    iput-boolean v1, p0, Lorg/light/RendererConfig;->enableFastSoftDecode:Z

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lorg/light/RendererConfig;->softDecodeThreadCount:I

    .line 13
    iput-object v0, p0, Lorg/light/RendererConfig;->lightCacheRootPath:Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lorg/light/RendererConfig;->setDefaultDebugPath()V

    .line 15
    invoke-direct {p0}, Lorg/light/RendererConfig;->setDefaultCachePath()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lorg/light/RendererConfig;->bundlePath:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lorg/light/RendererConfig;->debugPath:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lorg/light/RendererConfig;->userConfigPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lorg/light/RendererConfig;->initMode:I

    .line 25
    iput-boolean v1, p0, Lorg/light/RendererConfig;->enablePerfReport:Z

    .line 26
    iput-boolean v1, p0, Lorg/light/RendererConfig;->enablePerfVramTrace:Z

    .line 27
    iput-boolean v1, p0, Lorg/light/RendererConfig;->englishPerfKey:Z

    .line 28
    iput v1, p0, Lorg/light/RendererConfig;->perfRunMode:I

    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lorg/light/RendererConfig;->enableAutoCropImage:Z

    .line 30
    iput-boolean v1, p0, Lorg/light/RendererConfig;->enableFastSoftDecode:Z

    const/4 v3, -0x1

    .line 31
    iput v3, p0, Lorg/light/RendererConfig;->softDecodeThreadCount:I

    .line 32
    iput-object v0, p0, Lorg/light/RendererConfig;->lightCacheRootPath:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/RendererConfig;->bundlePath:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/RendererConfig;->debugPath:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/RendererConfig;->userConfigPath:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/RendererConfig;->initMode:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/light/RendererConfig;->enablePerfReport:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/light/RendererConfig;->enablePerfVramTrace:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/light/RendererConfig;->englishPerfKey:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/RendererConfig;->perfRunMode:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lorg/light/RendererConfig;->enableAutoCropImage:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lorg/light/RendererConfig;->enableFastSoftDecode:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/RendererConfig;->softDecodeThreadCount:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/light/RendererConfig;->lightCacheRootPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lorg/light/RendererConfig;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/light/RendererConfig;->bundlePath:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lorg/light/RendererConfig;->userConfigPath:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultFileCacheRootPath()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 3
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RendererConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method private setDefaultCachePath()V
    .locals 1

    invoke-static {}, Lorg/light/RendererConfig;->getDefaultFileCacheRootPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/RendererConfig;->lightCacheRootPath:Ljava/lang/String;

    return-void
.end method

.method private setDefaultDebugPath()V
    .locals 3

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 3
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Debug"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/RendererConfig;->debugPath:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/light/RendererConfig;->debugPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RendererConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/light/RendererConfig;->bundlePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lorg/light/RendererConfig;->debugPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/light/RendererConfig;->userConfigPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lorg/light/RendererConfig;->initMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-boolean p2, p0, Lorg/light/RendererConfig;->enablePerfReport:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-boolean p2, p0, Lorg/light/RendererConfig;->enablePerfVramTrace:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean p2, p0, Lorg/light/RendererConfig;->englishPerfKey:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget p2, p0, Lorg/light/RendererConfig;->perfRunMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean p2, p0, Lorg/light/RendererConfig;->enableAutoCropImage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-boolean p2, p0, Lorg/light/RendererConfig;->enableFastSoftDecode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    iget p2, p0, Lorg/light/RendererConfig;->softDecodeThreadCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lorg/light/RendererConfig;->lightCacheRootPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
