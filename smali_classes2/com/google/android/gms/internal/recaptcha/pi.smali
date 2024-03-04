.class public final Lcom/google/android/gms/internal/recaptcha/pi;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/recaptcha/qg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/recaptcha/qg;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/qg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/recaptcha/qg;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/pi;->a:Lcom/google/android/gms/internal/recaptcha/qg;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/recaptcha/pi;)Lcom/google/android/gms/internal/recaptcha/qg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/pi;->a:Lcom/google/android/gms/internal/recaptcha/qg;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pi;->a:Lcom/google/android/gms/internal/recaptcha/qg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/qg;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pi;->a:Lcom/google/android/gms/internal/recaptcha/qg;

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/pg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/pg;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h0(Lcom/google/android/gms/internal/recaptcha/zzpy;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/oi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/oi;-><init>(Lcom/google/android/gms/internal/recaptcha/pi;)V

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/recaptcha/qg;
    .locals 0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ni;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/ni;-><init>(Lcom/google/android/gms/internal/recaptcha/pi;I)V

    return-object v0
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pi;->a:Lcom/google/android/gms/internal/recaptcha/qg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qg;->o(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/pi;->a:Lcom/google/android/gms/internal/recaptcha/qg;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
