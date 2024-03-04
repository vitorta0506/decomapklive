.class public final Lcom/google/android/gms/internal/recaptcha/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/Uri$Builder;

.field private final b:Lcom/google/android/gms/internal/recaptcha/q8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/q8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/y2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/net/Uri$Builder;

    .line 1
    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z2;->a:Landroid/net/Uri$Builder;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzj()Lcom/google/android/gms/internal/recaptcha/q8;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z2;->b:Lcom/google/android/gms/internal/recaptcha/q8;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z2;->b:Lcom/google/android/gms/internal/recaptcha/q8;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/q8;->f()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/l3;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z2;->a:Landroid/net/Uri$Builder;

    .line 2
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/io/File;)Lcom/google/android/gms/internal/recaptcha/z2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z2;->a:Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method
