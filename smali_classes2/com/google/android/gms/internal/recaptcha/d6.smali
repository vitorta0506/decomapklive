.class final Lcom/google/android/gms/internal/recaptcha/d6;
.super Lcom/google/android/gms/internal/recaptcha/cb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/cb<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final h:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/cb;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/d6;->h:I

    return-void
.end method

.method static synthetic S(Lcom/google/android/gms/internal/recaptcha/d6;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/recaptcha/d6;->h:I

    return p0
.end method


# virtual methods
.method protected final n(Lcom/google/android/gms/internal/recaptcha/nd;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TT;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    move-result p1

    return p1
.end method
