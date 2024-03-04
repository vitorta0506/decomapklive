.class final Lcom/google/firebase/analytics/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp4/v;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/w2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/w2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w2;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w2;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w2;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/w2;->q(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final c(Lp4/t;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/w2;->i(Lp4/t;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w2;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w2;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/w2;->K(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final g(Lp4/t;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/w2;->b(Lp4/t;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/w2;->G(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/w2;->I(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/w2;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/w2;->C(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final l(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/w2;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/w2;->H(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
