.class public final Lcom/google/android/gms/internal/measurement/s4;
.super Lcom/google/android/gms/internal/measurement/u8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/aa;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u4;->x()Lcom/google/android/gms/internal/measurement/u4;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/c4;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u4;->x()Lcom/google/android/gms/internal/measurement/u4;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method


# virtual methods
.method public final r(Lcom/google/android/gms/internal/measurement/v4;)Lcom/google/android/gms/internal/measurement/s4;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u8;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u8;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u8;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/u4;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u8;->o()Lcom/google/android/gms/internal/measurement/x8;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/w4;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u4;->A(Lcom/google/android/gms/internal/measurement/u4;Lcom/google/android/gms/internal/measurement/w4;)V

    return-object p0
.end method

.method public final s(I)Lcom/google/android/gms/internal/measurement/w4;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast p1, Lcom/google/android/gms/internal/measurement/u4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/u4;->y(I)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object p1

    return-object p1
.end method
