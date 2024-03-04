.class public Lcom/google/android/gms/internal/recaptcha/vc;
.super Lcom/google/android/gms/internal/recaptcha/wc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/wc<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/nd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/recaptcha/nd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/wc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/vc;->a:Lcom/google/android/gms/internal/recaptcha/nd;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/vc;->a:Lcom/google/android/gms/internal/recaptcha/nd;

    return-object v0
.end method

.method protected final bridge synthetic b()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/vc;->a:Lcom/google/android/gms/internal/recaptcha/nd;

    return-object v0
.end method

.method protected final e()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/vc;->a:Lcom/google/android/gms/internal/recaptcha/nd;

    return-object v0
.end method
