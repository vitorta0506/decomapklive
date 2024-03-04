.class public abstract Lcom/google/android/gms/internal/recaptcha/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/q3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic a(Landroid/net/Uri;)Ljava/io/File;
.end method

.method public final e(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/r3;->i()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/r3;->h(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/recaptcha/q3;->e(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public final f(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/r3;->i()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/r3;->h(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/recaptcha/q3;->f(Landroid/net/Uri;)V

    return-void
.end method

.method public final g(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/r3;->i()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/r3;->h(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/r3;->h(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/q3;->g(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method protected abstract h(Landroid/net/Uri;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract i()Lcom/google/android/gms/internal/recaptcha/q3;
.end method
