.class public final synthetic Lcom/google/android/gms/internal/recaptcha/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/w;

.field public final synthetic b:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

.field public final synthetic c:Lcom/google/android/gms/recaptcha/RecaptchaAction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/w;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/p;->a:Lcom/google/android/gms/internal/recaptcha/w;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/p;->b:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/p;->c:Lcom/google/android/gms/recaptcha/RecaptchaAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/p;->a:Lcom/google/android/gms/internal/recaptcha/w;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/p;->b:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/p;->c:Lcom/google/android/gms/recaptcha/RecaptchaAction;

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/x;

    check-cast p2, Lt4/h;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/recaptcha/w;->s(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;Lcom/google/android/gms/internal/recaptcha/x;Lt4/h;)V

    return-void
.end method
