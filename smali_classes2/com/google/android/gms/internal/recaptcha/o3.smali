.class public final Lcom/google/android/gms/internal/recaptcha/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/o2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/o2<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/recaptcha/o3;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/o3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/o3;-><init>()V

    return-object v0
.end method

.method public static final c(Lcom/google/android/gms/internal/recaptcha/n2;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/n2;->b()Lcom/google/android/gms/internal/recaptcha/q3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/n2;->a()Landroid/net/Uri;

    move-result-object v1

    .line 1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/recaptcha/q3;->c(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/n2;->c(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/recaptcha/n2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/o3;->c(Lcom/google/android/gms/internal/recaptcha/n2;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
