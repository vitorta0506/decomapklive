.class public final synthetic Lcom/google/android/gms/internal/recaptcha/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/a0;

.field public final synthetic b:Lcom/google/android/gms/internal/recaptcha/dg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/a0;Lcom/google/android/gms/internal/recaptcha/dg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/y;->a:Lcom/google/android/gms/internal/recaptcha/a0;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/y;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y;->a:Lcom/google/android/gms/internal/recaptcha/a0;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/y;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/a0;->b(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v0

    return-object v0
.end method
