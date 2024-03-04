.class public final Lcom/google/android/exoplayer2/s1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/s1$d$a;

.field private e:Lcom/google/android/exoplayer2/s1$f$a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/s1$l;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/x1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/google/android/exoplayer2/s1$g$a;

.field private l:Lcom/google/android/exoplayer2/s1$j;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/s1$d$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s1$d$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->d:Lcom/google/android/exoplayer2/s1$d$a;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/s1$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/s1$f$a;-><init>(Lcom/google/android/exoplayer2/s1$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->e:Lcom/google/android/exoplayer2/s1$f$a;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->f:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/s1$g$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s1$g$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->k:Lcom/google/android/exoplayer2/s1$g$a;

    .line 8
    sget-object v0, Lcom/google/android/exoplayer2/s1$j;->d:Lcom/google/android/exoplayer2/s1$j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->l:Lcom/google/android/exoplayer2/s1$j;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/s1;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s1$c;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1;->f:Lcom/google/android/exoplayer2/s1$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s1$d;->b()Lcom/google/android/exoplayer2/s1$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->d:Lcom/google/android/exoplayer2/s1$d$a;

    .line 11
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->a:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1;->e:Lcom/google/android/exoplayer2/x1;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->j:Lcom/google/android/exoplayer2/x1;

    .line 13
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1;->d:Lcom/google/android/exoplayer2/s1$g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s1$g;->b()Lcom/google/android/exoplayer2/s1$g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->k:Lcom/google/android/exoplayer2/s1$g$a;

    .line 14
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1;->h:Lcom/google/android/exoplayer2/s1$j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->l:Lcom/google/android/exoplayer2/s1$j;

    .line 15
    iget-object p1, p1, Lcom/google/android/exoplayer2/s1;->b:Lcom/google/android/exoplayer2/s1$h;

    if-eqz p1, :cond_1

    .line 16
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1$h;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->g:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1$h;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->c:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1$h;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->b:Landroid/net/Uri;

    .line 19
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1$h;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->f:Ljava/util/List;

    .line 20
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1$h;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 21
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1$h;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$c;->i:Ljava/lang/Object;

    .line 22
    iget-object p1, p1, Lcom/google/android/exoplayer2/s1$h;->c:Lcom/google/android/exoplayer2/s1$f;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s1$f;->b()Lcom/google/android/exoplayer2/s1$f$a;

    move-result-object p1

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/s1$f$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/s1$f$a;-><init>(Lcom/google/android/exoplayer2/s1$a;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/s1$c;->e:Lcom/google/android/exoplayer2/s1$f$a;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/s1;Lcom/google/android/exoplayer2/s1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/s1$c;-><init>(Lcom/google/android/exoplayer2/s1;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/s1;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/s1$c;->e:Lcom/google/android/exoplayer2/s1$f$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/s1$f$a;->e(Lcom/google/android/exoplayer2/s1$f$a;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/s1$c;->e:Lcom/google/android/exoplayer2/s1$f$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/s1$f$a;->f(Lcom/google/android/exoplayer2/s1$f$a;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/s1$c;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    .line 3
    new-instance v12, Lcom/google/android/exoplayer2/s1$i;

    iget-object v4, v0, Lcom/google/android/exoplayer2/s1$c;->c:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/s1$c;->e:Lcom/google/android/exoplayer2/s1$f$a;

    invoke-static {v2}, Lcom/google/android/exoplayer2/s1$f$a;->f(Lcom/google/android/exoplayer2/s1$f$a;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/s1$c;->e:Lcom/google/android/exoplayer2/s1$f$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s1$f$a;->i()Lcom/google/android/exoplayer2/s1$f;

    move-result-object v1

    :cond_2
    move-object v5, v1

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/google/android/exoplayer2/s1$c;->f:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/exoplayer2/s1$c;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/s1$c;->h:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v0, Lcom/google/android/exoplayer2/s1$c;->i:Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/s1$i;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/s1$f;Lcom/google/android/exoplayer2/s1$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Lcom/google/android/exoplayer2/s1$a;)V

    move-object/from16 v16, v12

    goto :goto_2

    :cond_3
    move-object/from16 v16, v1

    .line 5
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/s1;

    .line 6
    iget-object v2, v0, Lcom/google/android/exoplayer2/s1$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    move-object v14, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/s1$c;->d:Lcom/google/android/exoplayer2/s1$d$a;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/s1$d$a;->g()Lcom/google/android/exoplayer2/s1$e;

    move-result-object v15

    iget-object v2, v0, Lcom/google/android/exoplayer2/s1$c;->k:Lcom/google/android/exoplayer2/s1$g$a;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/s1$g$a;->f()Lcom/google/android/exoplayer2/s1$g;

    move-result-object v17

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/s1$c;->j:Lcom/google/android/exoplayer2/x1;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/google/android/exoplayer2/x1;->G:Lcom/google/android/exoplayer2/x1;

    :goto_4
    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/s1$c;->l:Lcom/google/android/exoplayer2/s1$j;

    const/16 v20, 0x0

    move-object v13, v1

    move-object/from16 v19, v2

    invoke-direct/range {v13 .. v20}, Lcom/google/android/exoplayer2/s1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/s1$e;Lcom/google/android/exoplayer2/s1$i;Lcom/google/android/exoplayer2/s1$g;Lcom/google/android/exoplayer2/x1;Lcom/google/android/exoplayer2/s1$j;Lcom/google/android/exoplayer2/s1$a;)V

    return-object v1
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/exoplayer2/s1$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/s1$c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/android/exoplayer2/s1$c;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/s1$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/s1$c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/s1$c;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public e(Landroid/net/Uri;)Lcom/google/android/exoplayer2/s1$c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/s1$c;->b:Landroid/net/Uri;

    return-object p0
.end method
