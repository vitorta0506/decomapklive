.class final Lcom/google/android/gms/internal/recaptcha/ub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/recaptcha/vb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/zzke;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ub;->a:Lcom/google/android/gms/internal/recaptcha/vb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ub;->a:Lcom/google/android/gms/internal/recaptcha/vb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/vb;->h0(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/zzke;)V

    return-void
.end method
