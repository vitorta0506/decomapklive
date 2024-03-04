.class public abstract Lcom/google/android/gms/internal/recaptcha/ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/nh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/recaptcha/gh;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/nh<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/recaptcha/pf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/pf;->a()Lcom/google/android/gms/internal/recaptcha/pf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/ie;->a:Lcom/google/android/gms/internal/recaptcha/pf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final e(Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/gh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/recaptcha/zzrr;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/hh;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zztq;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/zztq;-><init>(Lcom/google/android/gms/internal/recaptcha/gh;)V

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/zzrr;

    .line 3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/recaptcha/zzrr;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzh(Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/zzrr;

    throw v1

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/InputStream;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/recaptcha/zzrr;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/ie;->d(Ljava/io/InputStream;Lcom/google/android/gms/internal/recaptcha/pf;)Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/ie;->e(Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/gh;

    return-object p1
.end method

.method public final bridge synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/recaptcha/zzrr;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/ie;->a:Lcom/google/android/gms/internal/recaptcha/pf;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/ie;->d(Ljava/io/InputStream;Lcom/google/android/gms/internal/recaptcha/pf;)Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/ie;->e(Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/gh;

    return-object p1
.end method

.method public final d(Ljava/io/InputStream;Lcom/google/android/gms/internal/recaptcha/pf;)Lcom/google/android/gms/internal/recaptcha/gh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/recaptcha/zzrr;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/recaptcha/bf;->e:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/mg;->c:[B

    .line 3
    array-length v1, p1

    .line 4
    invoke-static {p1, v0, v0, v0}, Lcom/google/android/gms/internal/recaptcha/bf;->g([BIIZ)Lcom/google/android/gms/internal/recaptcha/bf;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/recaptcha/af;

    const/16 v2, 0x1000

    const/4 v3, 0x0

    .line 6
    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/af;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/recaptcha/xe;)V

    move-object p1, v1

    .line 7
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/nh;->c(Lcom/google/android/gms/internal/recaptcha/bf;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/recaptcha/bf;->A(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/recaptcha/zzrr; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzh(Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/zzrr;

    throw p1
.end method
