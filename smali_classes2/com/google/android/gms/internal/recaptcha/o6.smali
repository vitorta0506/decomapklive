.class final Lcom/google/android/gms/internal/recaptcha/o6;
.super Lcom/google/android/gms/internal/recaptcha/h6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/g6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/h6<",
        "Lcom/google/android/gms/internal/recaptcha/u6;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/g6;"
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/Exception;

.field private final f:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g6;Lcom/google/android/gms/internal/recaptcha/t6;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/h6;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/u6;Lcom/google/android/gms/internal/recaptcha/t6;)V

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/g6;->l()Ljava/lang/Exception;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/o6;->e:Ljava/lang/Exception;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/recaptcha/o6;->f:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;Z)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/i6;->b()Lcom/google/android/gms/internal/recaptcha/i6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/i6;->c()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/recaptcha/h6;-><init>(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/gms/internal/recaptcha/t6;)V

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/n6;->e:Lcom/google/android/gms/internal/recaptcha/zzhu;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/o6;->e:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/recaptcha/o6;->f:Z

    return-void
.end method


# virtual methods
.method public final l()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/o6;->e:Ljava/lang/Exception;

    return-object v0
.end method

.method public final q0(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;Z)Lcom/google/android/gms/internal/recaptcha/u6;
    .locals 2

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/o6;->f:Z

    if-nez v0, :cond_0

    .line 1
    sget v0, Lcom/google/android/gms/internal/recaptcha/d7;->i:I

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/o6;

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/gms/internal/recaptcha/o6;->f:Z

    if-eqz p3, :cond_3

    :cond_1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/recaptcha/o6;->f:Z

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2
    :cond_3
    :goto_0
    invoke-direct {v0, p1, p0, p2, v1}, Lcom/google/android/gms/internal/recaptcha/o6;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g6;Lcom/google/android/gms/internal/recaptcha/t6;Z)V

    return-object v0
.end method

.method public final r1(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;)Lcom/google/android/gms/internal/recaptcha/u6;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/o6;->q0(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;Z)Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object p1

    return-object p1
.end method
