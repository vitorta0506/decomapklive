.class public abstract Lcom/tencent/liteav/videobase/videobase/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/IVideoReporter;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeVideoReporter"


# instance fields
.field protected mNativeVideoReporter:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract nativeNotifyError(JILjava/lang/String;)V
.end method

.method protected abstract nativeNotifyEvent(JILjava/lang/String;)V
.end method

.method protected abstract nativeNotifyWarning(JILjava/lang/String;)V
.end method

.method protected abstract nativeUpdateKeyStatus(JIID)V
.end method

.method protected abstract nativeUpdateKeyStatusObject(JIILjava/lang/Object;)V
.end method

.method protected abstract nativeUpdateStatus(JID)V
.end method

.method protected abstract nativeUpdateStatusObject(JILjava/lang/Object;)V
.end method

.method protected abstract nativeUpdateStatusString(JILjava/lang/String;)V
.end method

.method public varargs declared-synchronized notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->a(Lcom/tencent/liteav/videobase/videobase/h$a;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/tencent/liteav/videobase/videobase/d;->nativeNotifyError(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p3, "NativeVideoReporter"

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyError error code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", do not need transfer to LiteAvCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->a(Lcom/tencent/liteav/videobase/videobase/h$b;)I

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->b(Lcom/tencent/liteav/videobase/videobase/h$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/tencent/liteav/videobase/videobase/d;->nativeNotifyWarning(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/tencent/liteav/videobase/videobase/d;->nativeNotifyEvent(JILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string p3, "NativeVideoReporter"

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyEvent event code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", do not need transfer to LiteAvCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->a(Lcom/tencent/liteav/videobase/videobase/h$c;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/tencent/liteav/videobase/videobase/d;->nativeNotifyWarning(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p3, "NativeVideoReporter"

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyWarning warning code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", do not need transfer to LiteAvCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V
    .locals 9

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_5

    .line 33
    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    .line 34
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/i;->C:Lcom/tencent/liteav/videobase/videobase/i;

    .line 35
    iget v0, v0, Lcom/tencent/liteav/videobase/videobase/i;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v0, :cond_0

    .line 36
    monitor-exit p0

    return-void

    .line 37
    :cond_0
    :try_start_1
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 38
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 39
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    .line 40
    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    move v4, p2

    .line 41
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateKeyStatus(JIID)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 43
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    float-to-double v5, p3

    .line 44
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    .line 45
    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    move v4, p2

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateKeyStatus(JIID)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 48
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-double v5, p3

    .line 49
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    .line 50
    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    move v4, p2

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateKeyStatus(JIID)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 53
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v7, v0

    .line 54
    iget-wide v3, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    .line 55
    iget v5, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v2, p0

    move v6, p2

    .line 56
    invoke-virtual/range {v2 .. v8}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateKeyStatus(JIID)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :cond_4
    move-object v0, p0

    move v4, p2

    move-object v5, p3

    .line 58
    :try_start_5
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateKeyStatusObject(JIILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 59
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 2
    iget v2, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    .line 3
    sget-object v3, Lcom/tencent/liteav/videobase/videobase/i;->C:Lcom/tencent/liteav/videobase/videobase/i;

    .line 4
    iget v3, v3, Lcom/tencent/liteav/videobase/videobase/i;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    instance-of v3, p2, Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 7
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 8
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    .line 9
    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateStatus(JID)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 12
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v4, p2

    .line 13
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    .line 14
    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateStatus(JID)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 17
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v6, v0

    .line 18
    iget-wide v3, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    .line 19
    iget v5, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v2, p0

    .line 20
    invoke-virtual/range {v2 .. v7}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateStatus(JID)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 22
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-double v4, p2

    .line 23
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/d;->mNativeVideoReporter:J

    .line 24
    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateStatus(JID)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :cond_4
    :try_start_5
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 27
    check-cast p2, Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateStatusString(JILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 30
    :cond_5
    :try_start_6
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/tencent/liteav/videobase/videobase/d;->nativeUpdateStatusObject(JILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 31
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
