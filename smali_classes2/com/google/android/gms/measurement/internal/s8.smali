.class Lcom/google/android/gms/measurement/internal/s8;
.super Lcom/google/android/gms/measurement/internal/g5;
.source "SourceFile"


# instance fields
.field protected final b:Lcom/google/android/gms/measurement/internal/d9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/d9;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d9;->c0()Lcom/google/android/gms/measurement/internal/n4;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/g5;-><init>(Lcom/google/android/gms/measurement/internal/n4;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/d9;

    return-void
.end method
