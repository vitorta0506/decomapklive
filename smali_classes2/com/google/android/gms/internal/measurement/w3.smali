.class public final Lcom/google/android/gms/internal/measurement/w3;
.super Lcom/google/android/gms/internal/measurement/u8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/aa;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x3;->B()Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/q3;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x3;->B()Lcom/google/android/gms/internal/measurement/x3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method


# virtual methods
.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x3;->x()I

    move-result v0

    return v0
.end method

.method public final s(I)Lcom/google/android/gms/internal/measurement/v3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x3;->z(I)Lcom/google/android/gms/internal/measurement/v3;

    move-result-object p1

    return-object p1
.end method

.method public final t()Lcom/google/android/gms/internal/measurement/w3;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x3;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x3;->K(Lcom/google/android/gms/internal/measurement/x3;)V

    return-object p0
.end method

.method public final u(ILcom/google/android/gms/internal/measurement/u3;)Lcom/google/android/gms/internal/measurement/w3;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/x3;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/u8;->o()Lcom/google/android/gms/internal/measurement/x8;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/v3;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x3;->J(Lcom/google/android/gms/internal/measurement/x3;ILcom/google/android/gms/internal/measurement/v3;)V

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x3;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x3;->F()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x3;->G()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
