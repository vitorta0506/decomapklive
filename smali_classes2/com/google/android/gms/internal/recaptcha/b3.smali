.class public final Lcom/google/android/gms/internal/recaptcha/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/q3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/e3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/recaptcha/e3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/b3;->a:Lcom/google/android/gms/internal/recaptcha/e3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/a3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "file"

    return-object v0
.end method

.method public final c(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/a3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/g3;->a(Ljava/io/File;)Lcom/google/android/gms/internal/recaptcha/g3;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/net/Uri;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/a3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public final e(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/a3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/sa;->a(Ljava/io/File;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/h3;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 4
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/recaptcha/h3;-><init>(Ljava/io/FileOutputStream;Ljava/io/File;)V

    return-object v0
.end method

.method public final f(Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/a3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "%s does not exist"

    .line 5
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "%s could not be deleted"

    .line 6
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "%s is a directory"

    .line 8
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/a3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/a3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/sa;->a(Ljava/io/File;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "%s could not be renamed to %s"

    .line 5
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
