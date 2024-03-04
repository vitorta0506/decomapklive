.class public final Lcom/google/android/gms/internal/measurement/y2;
.super Lcom/google/android/gms/internal/measurement/u8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/aa;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z2;->z()Lcom/google/android/gms/internal/measurement/z2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/x2;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z2;->z()Lcom/google/android/gms/internal/measurement/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method


# virtual methods
.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z2;->x()I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z2;->y()I

    move-result v0

    return v0
.end method

.method public final t(ILcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/y2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/z2;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/u8;->o()Lcom/google/android/gms/internal/measurement/x8;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/b3;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z2;->F(Lcom/google/android/gms/internal/measurement/z2;ILcom/google/android/gms/internal/measurement/b3;)V

    return-object p0
.end method

.method public final u(ILcom/google/android/gms/internal/measurement/j3;)Lcom/google/android/gms/internal/measurement/y2;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/z2;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/u8;->o()Lcom/google/android/gms/internal/measurement/x8;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/k3;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z2;->E(Lcom/google/android/gms/internal/measurement/z2;ILcom/google/android/gms/internal/measurement/k3;)V

    return-object p0
.end method

.method public final v(I)Lcom/google/android/gms/internal/measurement/b3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/z2;->A(I)Lcom/google/android/gms/internal/measurement/b3;

    move-result-object p1

    return-object p1
.end method

.method public final w(I)Lcom/google/android/gms/internal/measurement/k3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/z2;->B(I)Lcom/google/android/gms/internal/measurement/k3;

    move-result-object p1

    return-object p1
.end method
