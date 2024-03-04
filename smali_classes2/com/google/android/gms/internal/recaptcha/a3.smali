.class public final Lcom/google/android/gms/internal/recaptcha/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/recaptcha/a3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/a3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/a3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/a3;->a:Lcom/google/android/gms/internal/recaptcha/a3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/recaptcha/zzeu;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/zzeu;

    const-string v0, "Did not expect uri to have authority"

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/zzeu;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/zzeu;

    const-string v0, "Did not expect uri to have query"

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/zzeu;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/recaptcha/zzeu;

    const-string v0, "Scheme must be \'file\'"

    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/zzeu;-><init>(Ljava/lang/String;)V

    throw p0
.end method
