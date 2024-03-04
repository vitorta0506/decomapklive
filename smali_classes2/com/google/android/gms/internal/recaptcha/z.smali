.class final Lcom/google/android/gms/internal/recaptcha/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/i9;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/recaptcha/a0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/a0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z;->a:Lcom/google/android/gms/internal/recaptcha/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z;->a:Lcom/google/android/gms/internal/recaptcha/a0;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/a0;->c(Lcom/google/android/gms/internal/recaptcha/a0;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
