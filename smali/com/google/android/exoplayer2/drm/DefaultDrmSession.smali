.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/exoplayer2/drm/c0;

.field private final c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

.field private final d:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;

.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/util/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/i<",
            "Lcom/google/android/exoplayer2/drm/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/exoplayer2/upstream/b;

.field private final k:La2/s1;

.field final l:Lcom/google/android/exoplayer2/drm/k0;

.field final m:Ljava/util/UUID;

.field final n:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

.field private o:I

.field private p:I

.field private q:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lb2/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:[B

.field private w:Lcom/google/android/exoplayer2/drm/c0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Lcom/google/android/exoplayer2/drm/c0$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/c0;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/k0;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/b;La2/s1;)V
    .locals 1
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/c0;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/k0;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/upstream/b;",
            "La2/s1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p9}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->m:Ljava/util/UUID;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    .line 7
    iput p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:I

    .line 8
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:Z

    .line 9
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->g:Z

    if-eqz p9, :cond_2

    .line 10
    iput-object p9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a:Ljava/util/List;

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a:Ljava/util/List;

    .line 13
    :goto_0
    iput-object p10, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:Ljava/util/HashMap;

    .line 14
    iput-object p11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:Lcom/google/android/exoplayer2/drm/k0;

    .line 15
    new-instance p1, Lcom/google/android/exoplayer2/util/i;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:Lcom/google/android/exoplayer2/util/i;

    .line 16
    iput-object p13, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/upstream/b;

    .line 17
    iput-object p14, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->k:La2/s1;

    const/4 p1, 0x2

    .line 18
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    .line 19
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

    invoke-direct {p1, p0, p12}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

    return-void
.end method

.method private B(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->x:Lcom/google/android/exoplayer2/drm/c0$g;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->x:Lcom/google/android/exoplayer2/drm/c0$g;

    .line 3
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

    check-cast p2, Ljava/lang/Exception;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;->a(Ljava/lang/Exception;Z)V

    return-void

    .line 5
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    check-cast p2, [B

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/drm/c0;->f([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;->c()V

    return-void

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;->a(Ljava/lang/Exception;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private C()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/c0;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->k:La2/s1;

    invoke-interface {v2, v0, v3}, Lcom/google/android/exoplayer2/drm/c0;->c([BLa2/s1;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/c0;->h([B)Lb2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:Lb2/b;

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    .line 6
    new-instance v2, Lcom/google/android/exoplayer2/drm/b;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/drm/b;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n(Lcom/google/android/exoplayer2/util/h;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 9
    :catch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;->b(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private D([BIZ)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:Ljava/util/HashMap;

    invoke-interface {v1, p1, v2, p2, v3}, Lcom/google/android/exoplayer2/drm/c0;->l([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/c0$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/c0$a;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/c0$a;

    .line 3
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->b(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w(Ljava/lang/Exception;Z)V

    :goto_0
    return-void
.end method

.method private F()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/c0;->e([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 2
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u(Ljava/lang/Exception;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic i(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/s$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/s$a;)V

    return-void
.end method

.method public static synthetic j(ILcom/google/android/exoplayer2/drm/s$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->t(ILcom/google/android/exoplayer2/drm/s$a;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->B(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/upstream/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/upstream/b;

    return-object p0
.end method

.method private n(Lcom/google/android/exoplayer2/util/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/h<",
            "Lcom/google/android/exoplayer2/drm/s$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/i;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a;

    .line 2
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/h;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->D([BIZ)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->F()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8
    :cond_3
    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->D([BIZ)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    if-nez v1, :cond_5

    .line 10
    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->D([BIZ)V

    goto :goto_0

    .line 11
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->F()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 12
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p()J

    move-result-wide v4

    .line 13
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:I

    if-nez v1, :cond_7

    const-wide/16 v6, 0x3c

    cmp-long v1, v4, v6

    if-gtz v1, :cond_7

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->D([BIZ)V

    goto :goto_0

    :cond_7
    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-gtz p1, :cond_8

    .line 16
    new-instance p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 17
    :cond_8
    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    .line 18
    sget-object p1, Lcom/google/android/exoplayer2/drm/f;->a:Lcom/google/android/exoplayer2/drm/f;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n(Lcom/google/android/exoplayer2/util/h;)V

    :cond_9
    :goto_0
    return-void
.end method

.method private p()J
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/i;->d:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->m:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/l0;->b(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private r()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static synthetic s(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/s$a;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/s$a;->l(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic t(ILcom/google/android/exoplayer2/drm/s$a;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/s$a;->k(I)V

    return-void
.end method

.method private u(Ljava/lang/Exception;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/drm/y;->a(Ljava/lang/Exception;I)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->t:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    const-string p2, "DefaultDrmSession"

    const-string v0, "DRM session error"

    .line 3
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance p2, Lcom/google/android/exoplayer2/drm/c;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/drm/c;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n(Lcom/google/android/exoplayer2/util/h;)V

    .line 5
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    :cond_0
    return-void
.end method

.method private v(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/c0$a;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/c0$a;

    .line 3
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 4
    check-cast p2, Ljava/lang/Exception;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w(Ljava/lang/Exception;Z)V

    return-void

    .line 5
    :cond_1
    :try_start_0
    check-cast p2, [B

    .line 6
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/c0;->k([B[B)[B

    .line 8
    sget-object p1, Lcom/google/android/exoplayer2/drm/e;->a:Lcom/google/android/exoplayer2/drm/e;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n(Lcom/google/android/exoplayer2/util/h;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/c0;->k([B[B)[B

    move-result-object p1

    .line 10
    iget p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    if-eqz p2, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    array-length p2, p1

    if-eqz p2, :cond_4

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    :cond_4
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    .line 13
    sget-object p1, Lcom/google/android/exoplayer2/drm/d;->a:Lcom/google/android/exoplayer2/drm/d;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n(Lcom/google/android/exoplayer2/util/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w(Ljava/lang/Exception;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private w(Ljava/lang/Exception;Z)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;->b(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u(Ljava/lang/Exception;I)V

    :goto_1
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Exception;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u(Ljava/lang/Exception;I)V

    return-void
.end method

.method public E()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/c0;->b()Lcom/google/android/exoplayer2/drm/c0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->x:Lcom/google/android/exoplayer2/drm/c0$g;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->x:Lcom/google/android/exoplayer2/drm/c0$g;

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->b(ILjava/lang/Object;Z)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/drm/s$a;)V
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/drm/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session reference count less than zero: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:I

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/i;->c(Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:I

    if-ne v0, v2, :cond_3

    .line 6
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->C()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o(Z)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:Lcom/google/android/exoplayer2/util/i;

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/i;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 14
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/s$a;->k(I)V

    .line 15
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:I

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/drm/s$a;)V
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/drm/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:I

    if-gtz v0, :cond_0

    const-string p1, "DefaultDrmSession"

    const-string v0, "release() called on a session that\'s already fully released."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->c()V

    .line 7
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 9
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:Landroid/os/HandlerThread;

    .line 10
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:Lb2/b;

    .line 11
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->t:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/c0$a;

    .line 13
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->x:Lcom/google/android/exoplayer2/drm/c0$g;

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    if-eqz v0, :cond_1

    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/drm/c0;->j([B)V

    .line 16
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    :cond_1
    if-eqz p1, :cond_2

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/i;->d(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/i;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->m()V

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:I

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;->b(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V

    return-void
.end method

.method public final c()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->m:Ljava/util/UUID;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:Z

    return v0
.end method

.method public final e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->t:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f()Lb2/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:Lb2/b;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/drm/c0;->a([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:I

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/c0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/c0;->i([BLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public q([B)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public y(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->x()V

    :goto_0
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o(Z)V

    :cond_0
    return-void
.end method
