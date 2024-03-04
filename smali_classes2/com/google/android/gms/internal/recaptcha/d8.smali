.class final Lcom/google/android/gms/internal/recaptcha/d8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/google/android/gms/internal/recaptcha/f8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/f8;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/d8;->b:Lcom/google/android/gms/internal/recaptcha/f8;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/d8;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/d8;->b:Lcom/google/android/gms/internal/recaptcha/f8;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/d8;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/f8;->e(Lcom/google/android/gms/internal/recaptcha/f8;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ", "

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/q7;->b(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
