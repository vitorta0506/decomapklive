.class public final synthetic Lcom/google/android/gms/internal/recaptcha/x5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/cc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/e6;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/e6;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x5;->a:Lcom/google/android/gms/internal/recaptcha/e6;

    iput p2, p0, Lcom/google/android/gms/internal/recaptcha/x5;->b:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x5;->a:Lcom/google/android/gms/internal/recaptcha/e6;

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/x5;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/e6;->c(I)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    return-object v0
.end method
