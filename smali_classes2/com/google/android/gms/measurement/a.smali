.class final Lcom/google/android/gms/measurement/a;
.super Lcom/google/android/gms/measurement/d;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/n4;

.field private final b:Lcom/google/android/gms/measurement/internal/m6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/n4;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/measurement/internal/n4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/d;-><init>(Lcom/google/android/gms/measurement/c;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    return-void
.end method


# virtual methods
.method public final D()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k9;->r0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->V()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/m6;->Q(Ljava/lang/String;)I

    const/16 p1, 0x19

    return p1
.end method

.method public final c(Lp4/t;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/m6;->N(Lp4/t;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->W()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->V()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/m6;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final g(Lp4/t;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/m6;->x(Lp4/t;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->y()Lcom/google/android/gms/measurement/internal/x1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->c()Le4/d;

    move-result-object v1

    invoke-interface {v1}, Le4/d;->b()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/x1;->l(Ljava/lang/String;J)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->y()Lcom/google/android/gms/measurement/internal/x1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->c()Le4/d;

    move-result-object v1

    invoke-interface {v1}, Le4/d;->b()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/x1;->m(Ljava/lang/String;J)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/m6;->Z(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/m6;->a0(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final l(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->b:Lcom/google/android/gms/measurement/internal/m6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/m6;->D(Landroid/os/Bundle;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/a;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/m6;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
