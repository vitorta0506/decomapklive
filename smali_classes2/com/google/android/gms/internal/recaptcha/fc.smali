.class public final Lcom/google/android/gms/internal/recaptcha/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/recaptcha/ec;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/ec;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
