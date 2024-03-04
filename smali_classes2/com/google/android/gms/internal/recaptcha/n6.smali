.class final Lcom/google/android/gms/internal/recaptcha/n6;
.super Lcom/google/android/gms/internal/recaptcha/f6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/g6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/f6<",
        "Lcom/google/android/gms/internal/recaptcha/n6;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/g6;"
    }
.end annotation


# static fields
.field static final e:Lcom/google/android/gms/internal/recaptcha/zzhu;


# instance fields
.field private final d:Lcom/google/android/gms/internal/recaptcha/zzhu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzhu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/zzhu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/n6;->e:Lcom/google/android/gms/internal/recaptcha/zzhu;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/i6;->b()Lcom/google/android/gms/internal/recaptcha/i6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/i6;->c()Ljava/util/UUID;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/recaptcha/f6;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/n6;->e:Lcom/google/android/gms/internal/recaptcha/zzhu;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n6;->d:Lcom/google/android/gms/internal/recaptcha/zzhu;

    return-void
.end method


# virtual methods
.method public final bridge synthetic l()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/n6;->d:Lcom/google/android/gms/internal/recaptcha/zzhu;

    return-object v0
.end method

.method public final q0(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;Z)Lcom/google/android/gms/internal/recaptcha/u6;
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    sget v0, Lcom/google/android/gms/internal/recaptcha/d7;->i:I

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/o6;

    .line 2
    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/o6;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g6;Lcom/google/android/gms/internal/recaptcha/t6;Z)V

    return-object v0
.end method

.method public final r1(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;)Lcom/google/android/gms/internal/recaptcha/u6;
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/recaptcha/d7;->i:I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/recaptcha/n6;->q0(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;Z)Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object p1

    return-object p1
.end method
