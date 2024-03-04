.class public final synthetic Lcom/google/android/gms/internal/recaptcha/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/w;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/q;->a:Lcom/google/android/gms/internal/recaptcha/w;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/q;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/q;->a:Lcom/google/android/gms/internal/recaptcha/w;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/q;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/x;

    check-cast p2, Lt4/h;

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/s;

    .line 1
    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/recaptcha/s;-><init>(Lcom/google/android/gms/internal/recaptcha/w;Lt4/h;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/d;->A()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/g;

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/zzag;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/th;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/internal/recaptcha/zzag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, p2}, Lcom/google/android/gms/internal/recaptcha/g;->G0(Lcom/google/android/gms/internal/recaptcha/f;Lcom/google/android/gms/internal/recaptcha/zzag;)V

    return-void
.end method
