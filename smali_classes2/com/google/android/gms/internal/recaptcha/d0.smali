.class public final synthetic Lcom/google/android/gms/internal/recaptcha/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/h0;

.field public final synthetic b:Lcom/google/android/gms/recaptcha/RecaptchaAction;

.field public final synthetic c:Lcom/google/android/gms/internal/recaptcha/g1;

.field public final synthetic d:Lcom/google/android/gms/recaptcha/RecaptchaHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/h0;Lcom/google/android/gms/recaptcha/RecaptchaAction;Lcom/google/android/gms/internal/recaptcha/g1;Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/d0;->a:Lcom/google/android/gms/internal/recaptcha/h0;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/d0;->b:Lcom/google/android/gms/recaptcha/RecaptchaAction;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/d0;->c:Lcom/google/android/gms/internal/recaptcha/g1;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/d0;->d:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/d0;->a:Lcom/google/android/gms/internal/recaptcha/h0;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/d0;->b:Lcom/google/android/gms/recaptcha/RecaptchaAction;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/d0;->c:Lcom/google/android/gms/internal/recaptcha/g1;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/d0;->d:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/recaptcha/h0;->b(Lcom/google/android/gms/recaptcha/RecaptchaAction;Lcom/google/android/gms/internal/recaptcha/g1;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/internal/recaptcha/y1;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
