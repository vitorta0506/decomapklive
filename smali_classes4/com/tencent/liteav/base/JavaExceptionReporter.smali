.class public Lcom/tencent/liteav/base/JavaExceptionReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "base::android"
.end annotation

.annotation build Lcom/tencent/liteav/base/annotations/MainDex;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCrashAfterReport:Z

.field private mHandlingException:Z

.field private final mParent:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/liteav/base/JavaExceptionReporter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/base/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3
    iput-boolean p2, p0, Lcom/tencent/liteav/base/JavaExceptionReporter;->mCrashAfterReport:Z

    return-void
.end method

.method private static installHandler(Z)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/JavaExceptionReporter;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/liteav/base/JavaExceptionReporter;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 3
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static reportStackTrace(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/base/JavaExceptionReporter;->mHandlingException:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/base/JavaExceptionReporter;->mHandlingException:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/base/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
