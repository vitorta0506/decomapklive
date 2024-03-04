.class final Lcom/google/android/gms/internal/recaptcha/p9;
.super Lcom/google/android/gms/internal/recaptcha/o9;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/recaptcha/q9;

.field final synthetic b:Lcom/google/android/gms/internal/recaptcha/r9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/r9;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/p9;->b:Lcom/google/android/gms/internal/recaptcha/r9;

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/o9;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/q9;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/q9;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/p9;->a:Lcom/google/android/gms/internal/recaptcha/q9;

    return-void
.end method


# virtual methods
.method public final a([BII)Lcom/google/android/gms/internal/recaptcha/x9;
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/p9;->a:Lcom/google/android/gms/internal/recaptcha/q9;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/recaptcha/v9;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/p9;->b:Lcom/google/android/gms/internal/recaptcha/r9;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/p9;->a:Lcom/google/android/gms/internal/recaptcha/q9;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/q9;->c()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/p9;->a:Lcom/google/android/gms/internal/recaptcha/q9;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/q9;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/recaptcha/n9;->c([BII)Lcom/google/android/gms/internal/recaptcha/v9;

    move-result-object v0

    return-object v0
.end method
