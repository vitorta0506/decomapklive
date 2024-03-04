.class final Lcom/google/android/gms/measurement/internal/j5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:J

.field private B:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C:Z

.field private D:J

.field private E:J

.field private final a:Lcom/google/android/gms/measurement/internal/n4;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:J

.field private l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:J

.field private t:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/n4;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/p;->f(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/j5;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final B(J)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/p;->a(Z)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/j5;->g:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->g:J

    return-void
.end method

.method public final C(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->h:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->h:J

    return-void
.end method

.method public final D(Z)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/j5;->o:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/j5;->o:Z

    return-void
.end method

.method public final E(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->r:Ljava/lang/Boolean;

    .line 3
    invoke-static {v1, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->e:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->e:Ljava/lang/String;

    return-void
.end method

.method public final G(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->t:Ljava/util/List;

    .line 3
    invoke-static {v0, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->t:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->u:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->u:Ljava/lang/String;

    return-void
.end method

.method public final I()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->p:Z

    return v0
.end method

.method public final J()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->o:Z

    return v0
.end method

.method public final K()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    return v0
.end method

.method public final L()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->k:J

    return-wide v0
.end method

.method public final M()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->D:J

    return-wide v0
.end method

.method public final N()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->y:J

    return-wide v0
.end method

.method public final O()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->z:J

    return-wide v0
.end method

.method public final P()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->x:J

    return-wide v0
.end method

.method public final Q()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->w:J

    return-wide v0
.end method

.method public final R()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->A:J

    return-wide v0
.end method

.method public final S()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->v:J

    return-wide v0
.end method

.method public final T()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->n:J

    return-wide v0
.end method

.method public final U()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->s:J

    return-wide v0
.end method

.method public final V()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->E:J

    return-wide v0
.end method

.method public final W()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->m:J

    return-wide v0
.end method

.method public final X()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->i:J

    return-wide v0
.end method

.method public final Y()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->g:J

    return-wide v0
.end method

.method public final Z()J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->h:J

    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a0()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->r:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final b0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->t:Ljava/util/List;

    return-object v0
.end method

.method public final c0()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->B:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/j5;->y(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    return-void
.end method

.method public final d0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/j3;->z(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bundle index overflow. appId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j5;->g:J

    return-void
.end method

.method public final e0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j5;->q:Ljava/lang/String;

    .line 4
    invoke-static {v2, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->q:Ljava/lang/String;

    return-void
.end method

.method public final f0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Z)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/j5;->p:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/j5;->p:Z

    return-void
.end method

.method public final g0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->c:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->c:Ljava/lang/String;

    return-void
.end method

.method public final h0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->l:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->l:Ljava/lang/String;

    return-void
.end method

.method public final i0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->j:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->j:Ljava/lang/String;

    return-void
.end method

.method public final j0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final k(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->k:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->k:J

    return-void
.end method

.method public final l(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->D:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->D:J

    return-void
.end method

.method public final m(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->y:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->y:J

    return-void
.end method

.method public final n(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->z:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->z:J

    return-void
.end method

.method public final o(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->x:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->x:J

    return-void
.end method

.method public final p(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->w:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->w:J

    return-void
.end method

.method public final q(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->A:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->A:J

    return-void
.end method

.method public final r(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->v:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->v:J

    return-void
.end method

.method public final s(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->n:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->n:J

    return-void
.end method

.method public final t(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->s:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->s:J

    return-void
.end method

.method public final u(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->E:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->E:J

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->f:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->f:Ljava/lang/String;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j5;->d:Ljava/lang/String;

    .line 4
    invoke-static {v2, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->d:Ljava/lang/String;

    return-void
.end method

.method public final x(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->m:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->m:J

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->B:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lp4/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->B:Ljava/lang/String;

    return-void
.end method

.method public final z(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->i:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j5;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/j5;->i:J

    return-void
.end method
