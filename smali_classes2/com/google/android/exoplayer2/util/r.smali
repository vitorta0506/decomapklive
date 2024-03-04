.class public final Lcom/google/android/exoplayer2/util/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/r$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:I = 0x0
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static c:Z = true
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static d:Lcom/google/android/exoplayer2/util/r$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/r;->a:Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/util/r$a;->a:Lcom/google/android/exoplayer2/util/r$a;

    sput-object v0, Lcom/google/android/exoplayer2/util/r;->d:Lcom/google/android/exoplayer2/util/r$a;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/r;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x17L
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/util/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/r;->b:I

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/util/r;->d:Lcom/google/android/exoplayer2/util/r$a;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/r$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x17L
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/util/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/r;->b:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/util/r;->d:Lcom/google/android/exoplayer2/util/r$a;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/r$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x17L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/util/r;->a:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2
    :try_start_0
    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/r;->h(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "UnknownHostException (no network)"

    .line 4
    monitor-exit v0

    return-object p0

    .line 5
    :cond_1
    sget-boolean v1, Lcom/google/android/exoplayer2/util/r;->c:Z

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 7
    :cond_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\t"

    const-string v2, "    "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x17L
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/util/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/r;->b:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/util/r;->d:Lcom/google/android/exoplayer2/util/r$a;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/r$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x17L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static h(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :goto_0
    if-eqz p0, :cond_1

    .line 1
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x17L
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/util/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/r;->b:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/util/r;->d:Lcom/google/android/exoplayer2/util/r$a;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/util/r$a;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x17L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
