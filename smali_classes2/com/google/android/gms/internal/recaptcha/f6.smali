.class abstract Lcom/google/android/gms/internal/recaptcha/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/u6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/recaptcha/u6;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/u6;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/u6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/UUID;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/u6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/f6;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/f6;->a:Lcom/google/android/gms/internal/recaptcha/u6;

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/u6;->E()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/f6;->b:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/f6;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/f6;->a:Lcom/google/android/gms/internal/recaptcha/u6;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/f6;->b:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f6;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f6;->b:Ljava/util/UUID;

    return-object v0
.end method

.method public final close()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/d7;->f(Lcom/google/android/gms/internal/recaptcha/u6;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/d7;->d(Lcom/google/android/gms/internal/recaptcha/u6;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/recaptcha/u6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/f6;->a:Lcom/google/android/gms/internal/recaptcha/u6;

    return-object v0
.end method
