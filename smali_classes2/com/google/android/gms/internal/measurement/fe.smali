.class final Lcom/google/android/gms/internal/measurement/fe;
.super Lcom/google/android/gms/internal/measurement/j;
.source "SourceFile"


# instance fields
.field final c:Z

.field final d:Z

.field final synthetic e:Lcom/google/android/gms/internal/measurement/ge;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ge;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fe;->e:Lcom/google/android/gms/internal/measurement/ge;

    const-string p1, "log"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/fe;->c:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/fe;->d:Z

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/measurement/t4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/q;
    .locals 11

    const-string v0, "log"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/u5;->i(Ljava/lang/String;ILjava/util/List;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fe;->e:Lcom/google/android/gms/internal/measurement/ge;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ge;->h(Lcom/google/android/gms/internal/measurement/ge;)Lcom/google/android/gms/internal/measurement/ee;

    move-result-object v3

    const/4 v4, 0x3

    .line 3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/q;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/t4;->b(Lcom/google/android/gms/internal/measurement/q;)Lcom/google/android/gms/internal/measurement/q;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/q;->d()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/fe;->c:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/measurement/fe;->d:Z

    .line 5
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/ee;->a(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lcom/google/android/gms/internal/measurement/q;->U:Lcom/google/android/gms/internal/measurement/q;

    return-object p1

    .line 6
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/q;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/t4;->b(Lcom/google/android/gms/internal/measurement/q;)Lcom/google/android/gms/internal/measurement/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/q;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/u5;->b(D)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    const/4 v6, 0x5

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    const/4 v6, 0x4

    .line 7
    :goto_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/q;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/t4;->b(Lcom/google/android/gms/internal/measurement/q;)Lcom/google/android/gms/internal/measurement/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/q;->d()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/fe;->e:Lcom/google/android/gms/internal/measurement/ge;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ge;->h(Lcom/google/android/gms/internal/measurement/ge;)Lcom/google/android/gms/internal/measurement/ee;

    move-result-object v5

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/gms/internal/measurement/fe;->c:Z

    iget-boolean v10, p0, Lcom/google/android/gms/internal/measurement/fe;->d:Z

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/ee;->a(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lcom/google/android/gms/internal/measurement/q;->U:Lcom/google/android/gms/internal/measurement/q;

    return-object p1

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 12
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/q;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/t4;->b(Lcom/google/android/gms/internal/measurement/q;)Lcom/google/android/gms/internal/measurement/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/q;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/fe;->e:Lcom/google/android/gms/internal/measurement/ge;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ge;->h(Lcom/google/android/gms/internal/measurement/ge;)Lcom/google/android/gms/internal/measurement/ee;

    move-result-object v5

    iget-boolean v9, p0, Lcom/google/android/gms/internal/measurement/fe;->c:Z

    iget-boolean v10, p0, Lcom/google/android/gms/internal/measurement/fe;->d:Z

    .line 13
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/ee;->a(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lcom/google/android/gms/internal/measurement/q;->U:Lcom/google/android/gms/internal/measurement/q;

    return-object p1
.end method
