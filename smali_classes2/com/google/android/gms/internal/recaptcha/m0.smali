.class public final synthetic Lcom/google/android/gms/internal/recaptcha/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/p7;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/m0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/m0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/y1;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/zzjx;

    const-string v1, "expected a non-null reference"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/g8;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/recaptcha/zzjx;-><init>(Ljava/lang/String;)V

    throw p1
.end method
