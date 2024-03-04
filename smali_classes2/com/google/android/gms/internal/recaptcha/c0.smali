.class public final synthetic Lcom/google/android/gms/internal/recaptcha/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/p7;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/h0;

.field public final synthetic b:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/h0;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/c0;->a:Lcom/google/android/gms/internal/recaptcha/h0;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/c0;->b:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/c0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c0;->a:Lcom/google/android/gms/internal/recaptcha/h0;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/c0;->b:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/c0;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/vj;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/h0;->c(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/vj;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
