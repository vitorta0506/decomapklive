.class public final Lcom/google/android/gms/internal/recaptcha/ja;
.super Lcom/google/android/gms/internal/recaptcha/j3;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/internal/recaptcha/h8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/h8<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/recaptcha/h8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/h8<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/recaptcha/i9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/m7;->a:Lcom/google/android/gms/internal/recaptcha/m7;

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/l8;->a:Lcom/google/android/gms/internal/recaptcha/l8;

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/j3;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ja;->a:Lcom/google/android/gms/internal/recaptcha/h8;

    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ja;->b:Lcom/google/android/gms/internal/recaptcha/h8;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ja;->c:Lcom/google/android/gms/internal/recaptcha/i9;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/recaptcha/i9;II)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/l5;

    const/16 p3, 0x5400

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/recaptcha/l5;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ja;->a:Lcom/google/android/gms/internal/recaptcha/h8;

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/l6;

    const/4 p3, -0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/recaptcha/l6;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ja;->b:Lcom/google/android/gms/internal/recaptcha/h8;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ja;->c:Lcom/google/android/gms/internal/recaptcha/i9;

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ja;->a:Lcom/google/android/gms/internal/recaptcha/h8;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/recaptcha/h8;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ja;->b:Lcom/google/android/gms/internal/recaptcha/h8;

    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/h8;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/recaptcha/k4;->b(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ja;->c:Lcom/google/android/gms/internal/recaptcha/i9;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/recaptcha/i9;->zza()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ja;->d:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ja;->d:Ljava/net/HttpURLConnection;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/k4;->a()V

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method
