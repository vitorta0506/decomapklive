.class public Lorg/light/utils/LightLogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LightLogUtil"

.field private static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface; = null

.field private static mLogger:Lorg/light/utils/ILightLogger; = null

.field private static minPriority:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x3

    if-ge v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, v1, p0, p1}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x3

    if-ge v1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 7
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0, v1, p0, p1, p2}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static destroy()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/utils/LightLogUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->lightLogUtilDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLogUtil"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/utils/LightLogUtil;->nativeDestroy()V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x6

    if-ge v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, v1, p0, p1}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x6

    if-ge v1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 7
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0, v1, p0, p1}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x4

    if-ge v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, v1, p0, p1}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x4

    if-ge v1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 7
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0, v1, p0, p1, p2}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static init()V
    .locals 3

    .line 3
    sget-object v0, Lorg/light/utils/LightLogUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->lightLogUtilInit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLogUtil"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lorg/light/utils/LightLogUtil;->nativeInit()V

    :goto_0
    return-void
.end method

.method public static init(Lorg/light/utils/ILightLogger;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->setLightLogger(Lorg/light/utils/ILightLogger;)V

    .line 2
    invoke-static {}, Lorg/light/utils/LightLogUtil;->init()V

    return-void
.end method

.method private static native nativeDestroy()V
.end method

.method private static native nativeInit()V
.end method

.method private static native nativeSetMinPriority(I)V
.end method

.method public static setLightLogger(Lorg/light/utils/ILightLogger;)V
    .locals 2

    .line 1
    sput-object p0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    .line 2
    sget-object v0, Lorg/light/utils/LightLogUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lorg/light/utils/LightLogUtil$1;

    invoke-direct {v1, p0}, Lorg/light/utils/LightLogUtil$1;-><init>(Lorg/light/utils/ILightLogger;)V

    move-object p0, v1

    :goto_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->lightLogUtilSetLightLogger(Lorg/light/listener/AIDLILightLogger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LightLogUtil"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/utils/LightLogUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method

.method public static setLogInfo(ILjava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, ":"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    if-ge p0, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_6
    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setMinPriority(I)V
    .locals 2

    .line 1
    sput p0, Lorg/light/utils/LightLogUtil;->minPriority:I

    .line 2
    sget-object v0, Lorg/light/utils/LightLogUtil;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->lightLogUtilSetMinPriority(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LightLogUtil"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->nativeSetMinPriority(I)V

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x2

    if-ge v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, v1, p0, p1}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x2

    if-ge v1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 7
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0, v1, p0, p1, p2}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x5

    if-ge v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, v1, p0, p1}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget v0, Lorg/light/utils/LightLogUtil;->minPriority:I

    const/4 v1, 0x5

    if-ge v1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lorg/light/utils/LightLogUtil;->mLogger:Lorg/light/utils/ILightLogger;

    if-nez v0, :cond_1

    .line 7
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0, v1, p0, p1, p2}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
