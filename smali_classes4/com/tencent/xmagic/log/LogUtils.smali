.class public Lcom/tencent/xmagic/log/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ENABLED:Z

.field private static ENABLE_PROFILE:Z

.field private static mInitTime:J

.field private static mLastTime:J

.field private static mTimeStampMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sConfiguration:Landroid/content/res/Configuration;

.field private static sLog:Lcom/tencent/xmagic/log/ILog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Lcom/tencent/xmagic/log/LogUtils;->sConfiguration:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    .line 4
    sput-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLE_PROFILE:Z

    .line 5
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/tencent/xmagic/log/LogUtils;->mTimeStampMap:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/xmagic/log/LogUtils;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/xmagic/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p0, p1}, Lcom/tencent/xmagic/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 17
    invoke-static {p0, p1, p3}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object p3, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p3, :cond_0

    .line 19
    invoke-interface {p3, p0, p1, p2}, Lcom/tencent/xmagic/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-static {p0, p1, p2}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object p2, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {p2, p0, p1}, Lcom/tencent/xmagic/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/xmagic/log/LogUtils;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/xmagic/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p0, p1}, Lcom/tencent/xmagic/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 15
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 16
    invoke-static {p0, p1, p3}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    sget-object p3, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p3, :cond_0

    .line 18
    invoke-interface {p3, p0, p1, p2}, Lcom/tencent/xmagic/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p0, p1, p2}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p2, :cond_0

    .line 13
    invoke-interface {p2, p0, p1}, Lcom/tencent/xmagic/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0, v1, p1}, Lcom/tencent/xmagic/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/tencent/xmagic/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static generateLogPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private static varargs getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->sConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/xmagic/log/LogUtils;->generateLogPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLog()Lcom/tencent/xmagic/log/ILog;
    .locals 1

    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    return-object v0
.end method

.method private static getTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "filter process"

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/xmagic/log/LogUtils;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/xmagic/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p0, p1}, Lcom/tencent/xmagic/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p0, p1, p3}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object p3, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p3, :cond_0

    .line 13
    invoke-interface {p3, p0, p1, p2}, Lcom/tencent/xmagic/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p0, p1, p2}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object p2, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p2, p0, p1}, Lcom/tencent/xmagic/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static initTime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/xmagic/log/LogUtils;->mLastTime:J

    .line 2
    sput-wide v0, Lcom/tencent/xmagic/log/LogUtils;->mInitTime:J

    return-wide v0
.end method

.method public static isEnableProfile()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLE_PROFILE:Z

    return v0
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    return v0
.end method

.method public static printTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLE_PROFILE:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "BEGIN"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LOG_PERFORMANCE_"

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->mTimeStampMap:Landroid/util/LruCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/xmagic/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "END"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->mTimeStampMap:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/xmagic/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/xmagic/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static setEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    return-void
.end method

.method public static setEnableProfile(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/xmagic/log/LogUtils;->ENABLE_PROFILE:Z

    return-void
.end method

.method public static setLog(Lcom/tencent/xmagic/log/ILog;)V
    .locals 0

    sput-object p0, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/xmagic/log/LogUtils;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/xmagic/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p0, p1}, Lcom/tencent/xmagic/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 17
    invoke-static {p0, p1, p3}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object p3, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p3, :cond_0

    .line 19
    invoke-interface {p3, p0, p1, p2}, Lcom/tencent/xmagic/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-static {p0, p1, p2}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object p2, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {p2, p0, p1}, Lcom/tencent/xmagic/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/xmagic/log/LogUtils;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/xmagic/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p0, p1}, Lcom/tencent/xmagic/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 17
    invoke-static {p0, p1, p3}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object p3, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p3, :cond_0

    .line 19
    invoke-interface {p3, p0, p1, p2}, Lcom/tencent/xmagic/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-static {p0, p1, p2}, Lcom/tencent/xmagic/log/LogUtils;->getFormatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object p2, Lcom/tencent/xmagic/log/LogUtils;->sLog:Lcom/tencent/xmagic/log/ILog;

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {p2, p0, p1}, Lcom/tencent/xmagic/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static writeLog(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5

    .line 1
    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/xmagic/log/LogUtils;->ENABLE_PROFILE:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/tencent/xmagic/log/LogUtils;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/mnt/sdcard/log.txt"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--\t"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 9
    new-instance p0, Ljava/lang/String;

    const-string v0, "\t"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
