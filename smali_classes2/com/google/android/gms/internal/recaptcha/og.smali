.class public Lcom/google/android/gms/internal/recaptcha/og;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/android/gms/internal/recaptcha/pf;


# instance fields
.field protected volatile a:Lcom/google/android/gms/internal/recaptcha/gh;

.field private volatile b:Lcom/google/android/gms/internal/recaptcha/zzpy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/pf;->a()Lcom/google/android/gms/internal/recaptcha/pf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/og;->c:Lcom/google/android/gms/internal/recaptcha/pf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/ve;

    iget-object v0, v0, Lcom/google/android/gms/internal/recaptcha/ve;->a:[B

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/gh;->K()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/recaptcha/zzpy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    .line 1
    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzb:Lcom/google/android/gms/internal/recaptcha/zzpy;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/gh;->e()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final c(Lcom/google/android/gms/internal/recaptcha/gh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzb:Lcom/google/android/gms/internal/recaptcha/zzpy;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;
    :try_end_1
    .catch Lcom/google/android/gms/internal/recaptcha/zzrr; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzb:Lcom/google/android/gms/internal/recaptcha/zzpy;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/og;->b:Lcom/google/android/gms/internal/recaptcha/zzpy;

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/og;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/og;

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/og;->b()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/og;->b()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzpy;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/hh;->h()Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/recaptcha/og;->c(Lcom/google/android/gms/internal/recaptcha/gh;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/recaptcha/hh;->h()Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/og;->c(Lcom/google/android/gms/internal/recaptcha/gh;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/og;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
