.class public final synthetic Lcom/google/android/gms/internal/recaptcha/y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/dc;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/recaptcha/e6;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/e6;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/y5;->a:Lcom/google/android/gms/internal/recaptcha/e6;

    iput p2, p0, Lcom/google/android/gms/internal/recaptcha/y5;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y5;->a:Lcom/google/android/gms/internal/recaptcha/e6;

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/y5;->b:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/recaptcha/e6;->d(ILjava/lang/Throwable;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
