.class public final synthetic Lcom/google/android/gms/internal/recaptcha/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/w;

.field public final synthetic b:Lcom/google/android/gms/recaptcha/RecaptchaHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/w;Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/o;->a:Lcom/google/android/gms/internal/recaptcha/w;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/o;->b:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/o;->a:Lcom/google/android/gms/internal/recaptcha/w;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/o;->b:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/x;

    check-cast p2, Lt4/h;

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/u;

    .line 1
    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/recaptcha/u;-><init>(Lcom/google/android/gms/internal/recaptcha/w;Lt4/h;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/d;->A()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/g;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/recaptcha/g;->E0(Lcom/google/android/gms/internal/recaptcha/b;Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V

    return-void
.end method
