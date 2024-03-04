.class final Lcom/google/android/gms/internal/recaptcha/y9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/internal/recaptcha/w9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ha;

    const-string v1, "SHA-256"

    const-string v2, "Hashing.sha256()"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/ha;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/y9;->a:Lcom/google/android/gms/internal/recaptcha/w9;

    return-void
.end method
