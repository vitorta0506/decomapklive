.class public final Lcom/google/android/gms/internal/measurement/a5;
.super Lcom/google/android/gms/internal/measurement/u8;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/aa;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b5;->C()Lcom/google/android/gms/internal/measurement/b5;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/c4;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b5;->C()Lcom/google/android/gms/internal/measurement/b5;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Lcom/google/android/gms/internal/measurement/x8;)V

    return-void
.end method


# virtual methods
.method public final A(I)Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b5;->S(Lcom/google/android/gms/internal/measurement/b5;I)V

    return-object p0
.end method

.method public final r(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b5;->N(Lcom/google/android/gms/internal/measurement/b5;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final s(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b5;->L(Lcom/google/android/gms/internal/measurement/b5;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final t(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b5;->Q(Lcom/google/android/gms/internal/measurement/b5;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final u(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b5;->J(Lcom/google/android/gms/internal/measurement/b5;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final v()Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b5;->O(Lcom/google/android/gms/internal/measurement/b5;)V

    return-object p0
.end method

.method public final w()Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b5;->M(Lcom/google/android/gms/internal/measurement/b5;)V

    return-object p0
.end method

.method public final x()Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b5;->R(Lcom/google/android/gms/internal/measurement/b5;)V

    return-object p0
.end method

.method public final y()Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b5;->K(Lcom/google/android/gms/internal/measurement/b5;)V

    return-object p0
.end method

.method public final z(I)Lcom/google/android/gms/internal/measurement/a5;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b5;->P(Lcom/google/android/gms/internal/measurement/b5;I)V

    return-object p0
.end method
