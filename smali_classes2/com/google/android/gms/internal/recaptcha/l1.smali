.class public final Lcom/google/android/gms/internal/recaptcha/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/j1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/za;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ya;->a()Lcom/google/android/gms/internal/recaptcha/za;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/l1;->a:Lcom/google/android/gms/internal/recaptcha/za;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/recaptcha/ji;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/l1;->a:Lcom/google/android/gms/internal/recaptcha/za;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dj;->a(Lcom/google/android/gms/internal/recaptcha/za;)Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v0

    return-object v0
.end method
