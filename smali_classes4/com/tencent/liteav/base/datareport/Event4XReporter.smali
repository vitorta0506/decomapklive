.class public Lcom/tencent/liteav/base/datareport/Event4XReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation


# static fields
.field private static final INVALID_INSTANCE:I = 0x0

.field public static final REPORT_EVENT:I = 0x1

.field public static final REPORT_STATUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Event4XReporter"


# instance fields
.field private mNativeEvent4XReporterAndroid:J


# direct methods
.method public constructor <init>(IILjava/lang/String;ZI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    .line 3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeCreate(IILjava/lang/String;ZI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    return-void
.end method

.method private static native nativeCreate(IILjava/lang/String;ZI)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetColdDownTime(J)I
.end method

.method private static native nativeSendReport(J)V
.end method

.method private static native nativeSetCommonIntValue(JLjava/lang/String;J)V
.end method

.method private static native nativeSetCommonStringValue(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetEventIntValue(JLjava/lang/String;J)V
.end method

.method private static native nativeSetEventStringValue(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeDestroy(J)V

    .line 4
    iput-wide v2, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->destroy()V

    return-void
.end method

.method public getColdDownTime()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/16 v0, 0x2710

    return v0

    .line 2
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeGetColdDownTime(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reportDau(IILjava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "event_id"

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeSetEventStringValue(JLjava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    const-string p1, "err_code"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeSetEventStringValue(JLjava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-wide p1, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    const-string v0, "err_info"

    invoke-static {p1, p2, v0, p3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeSetEventStringValue(JLjava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-wide p1, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeSendReport(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendReport()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeSendReport(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCommonIntValue(Ljava/lang/String;J)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeSetCommonIntValue(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCommonStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeSetCommonStringValue(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEventIntValue(Ljava/lang/String;J)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeSetEventIntValue(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/base/datareport/Event4XReporter;->mNativeEvent4XReporterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->nativeSetEventStringValue(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
