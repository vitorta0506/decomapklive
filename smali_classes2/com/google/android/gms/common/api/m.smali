.class final Lcom/google/android/gms/common/api/m;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/i;",
        ">",
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/common/api/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/d;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/m;->q:Lcom/google/android/gms/common/api/i;

    return-void
.end method


# virtual methods
.method protected final c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/m;->q:Lcom/google/android/gms/common/api/i;

    return-object p1
.end method
