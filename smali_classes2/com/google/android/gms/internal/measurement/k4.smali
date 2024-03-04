.class public final Lcom/google/android/gms/internal/measurement/k4;
.super Lcom/google/android/gms/internal/measurement/u8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/aa;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l4;->B()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/c4;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l4;->B()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method


# virtual methods
.method public final A(ILcom/google/android/gms/internal/measurement/o4;)Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/u8;->o()Lcom/google/android/gms/internal/measurement/x8;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/p4;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/l4;->F(Lcom/google/android/gms/internal/measurement/l4;ILcom/google/android/gms/internal/measurement/p4;)V

    return-object p0
.end method

.method public final B(ILcom/google/android/gms/internal/measurement/p4;)Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/l4;->F(Lcom/google/android/gms/internal/measurement/l4;ILcom/google/android/gms/internal/measurement/p4;)V

    return-object p0
.end method

.method public final C(J)Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/l4;->M(Lcom/google/android/gms/internal/measurement/l4;J)V

    return-object p0
.end method

.method public final D(J)Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/l4;->L(Lcom/google/android/gms/internal/measurement/l4;J)V

    return-object p0
.end method

.method public final E(I)Lcom/google/android/gms/internal/measurement/p4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->C(I)Lcom/google/android/gms/internal/measurement/p4;

    move-result-object p1

    return-object p1
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final H()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->E()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final J()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->P()Z

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->x()I

    move-result v0

    return v0
.end method

.method public final s()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Lcom/google/android/gms/internal/measurement/x8;

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->H(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final v(Lcom/google/android/gms/internal/measurement/o4;)Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u8;->o()Lcom/google/android/gms/internal/measurement/x8;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p4;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->G(Lcom/google/android/gms/internal/measurement/l4;Lcom/google/android/gms/internal/measurement/p4;)V

    return-object p0
.end method

.method public final w(Lcom/google/android/gms/internal/measurement/p4;)Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->G(Lcom/google/android/gms/internal/measurement/l4;Lcom/google/android/gms/internal/measurement/p4;)V

    return-object p0
.end method

.method public final x()Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->I(Lcom/google/android/gms/internal/measurement/l4;)V

    return-object p0
.end method

.method public final y(I)Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->J(Lcom/google/android/gms/internal/measurement/l4;I)V

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/k4;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->K(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;)V

    return-object p0
.end method
