.class public final Lcom/google/android/gms/internal/measurement/u3;
.super Lcom/google/android/gms/internal/measurement/u8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/aa;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v3;->x()Lcom/google/android/gms/internal/measurement/v3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/q3;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v3;->x()Lcom/google/android/gms/internal/measurement/v3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method


# virtual methods
.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v3;->w()I

    move-result v0

    return v0
.end method

.method public final s(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/u3;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/v3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/v3;->z(Lcom/google/android/gms/internal/measurement/v3;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v3;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v3;->A()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v3;->B()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v3;->C()Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v3;->D()Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v3;->E()Z

    move-result v0

    return v0
.end method
