.class final Lcom/google/android/gms/internal/recaptcha/u5;
.super Lcom/google/android/gms/internal/recaptcha/v5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/recaptcha/gh;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/v5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/recaptcha/pf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/pf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/v5;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/u5;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    const-string p1, "Null extensionRegistryLite"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/u5;->b:Lcom/google/android/gms/internal/recaptcha/pf;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/recaptcha/pf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/u5;->b:Lcom/google/android/gms/internal/recaptcha/pf;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/recaptcha/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/u5;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/recaptcha/v5;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/v5;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/u5;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/v5;->b()Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/u5;->b:Lcom/google/android/gms/internal/recaptcha/pf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/v5;->a()Lcom/google/android/gms/internal/recaptcha/pf;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/u5;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/u5;->b:Lcom/google/android/gms/internal/recaptcha/pf;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/u5;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/u5;->b:Lcom/google/android/gms/internal/recaptcha/pf;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x36

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ProtoSerializer{defaultValue="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", extensionRegistryLite="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/u5;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    return-object v0
.end method
