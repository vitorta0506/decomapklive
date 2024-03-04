.class public final Lcom/google/android/gms/internal/recaptcha/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/o2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/o2<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/n3;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/n3;->a:Z

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/recaptcha/n3;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/n3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/n3;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/recaptcha/n2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/n3;->a:Z

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->b()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/n2;->a()Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/recaptcha/q3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/zzew;

    const-string v0, "Short circuit would skip transforms."

    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/recaptcha/zzew;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/o3;->c(Lcom/google/android/gms/internal/recaptcha/n2;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/f3;->a(Ljava/io/Closeable;)Lcom/google/android/gms/internal/recaptcha/f3;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/f3;->c()Ljava/io/Closeable;

    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/google/android/gms/internal/recaptcha/d3;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/f3;->c()Ljava/io/Closeable;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/d3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/d3;->zza()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/f3;->close()V

    move-object p1, v0

    :goto_0
    return-object p1

    .line 10
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not convertible and fallback to pipe is disabled."

    .line 11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/f3;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
.end method

.method public final c()Lcom/google/android/gms/internal/recaptcha/n3;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/n3;->a:Z

    return-object p0
.end method
