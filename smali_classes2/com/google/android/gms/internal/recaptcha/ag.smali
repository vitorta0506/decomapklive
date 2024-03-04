.class public final Lcom/google/android/gms/internal/recaptcha/ag;
.super Lcom/google/android/gms/internal/recaptcha/ie;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/recaptcha/ie<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/recaptcha/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/recaptcha/dg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/ie;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ag;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/internal/recaptcha/bf;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/recaptcha/zzrr;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ag;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/dg;->q(Lcom/google/android/gms/internal/recaptcha/dg;Lcom/google/android/gms/internal/recaptcha/bf;Lcom/google/android/gms/internal/recaptcha/pf;)Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object p1

    return-object p1
.end method
