.class final Lcom/google/android/gms/internal/recaptcha/u;
.super Lcom/google/android/gms/internal/recaptcha/wk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lt4/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/w;Lt4/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/u;->a:Lt4/h;

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/wk;-><init>()V

    return-void
.end method


# virtual methods
.method public final P(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/u;->a:Lt4/h;

    invoke-static {p1, p2, v0}, Lv3/m;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lt4/h;)V

    return-void
.end method
