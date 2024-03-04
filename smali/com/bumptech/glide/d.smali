.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d$d;,
        Lcom/bumptech/glide/d$b;,
        Lcom/bumptech/glide/d$c;,
        Lcom/bumptech/glide/d$e;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/f$a;

.field private c:Lcom/bumptech/glide/load/engine/k;

.field private d:Lg0/d;

.field private e:Lg0/b;

.field private f:Lh0/h;

.field private g:Li0/a;

.field private h:Li0/a;

.field private i:Lh0/a$a;

.field private j:Lh0/i;

.field private k:Lp0/b;

.field private l:I

.field private m:Lcom/bumptech/glide/c$a;

.field private n:Lcom/bumptech/glide/manager/h$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Li0/a;

.field private p:Z

.field private q:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/bumptech/glide/f$a;

    invoke-direct {v0}, Lcom/bumptech/glide/f$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcom/bumptech/glide/d;->l:I

    .line 5
    new-instance v0, Lcom/bumptech/glide/d$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d$a;-><init>(Lcom/bumptech/glide/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/d;->g:Li0/a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Li0/a;->h()Li0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->g:Li0/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->h:Li0/a;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Li0/a;->f()Li0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->h:Li0/a;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->o:Li0/a;

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Li0/a;->d()Li0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->o:Li0/a;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lh0/i;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lh0/i$a;

    invoke-direct {v0, p1}, Lh0/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lh0/i$a;->a()Lh0/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->j:Lh0/i;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/d;->k:Lp0/b;

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Lp0/d;

    invoke-direct {v0}, Lp0/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->k:Lp0/b;

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/d;->d:Lg0/d;

    if-nez v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lh0/i;

    invoke-virtual {v0}, Lh0/i;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 13
    new-instance v1, Lg0/j;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lg0/j;-><init>(J)V

    iput-object v1, p0, Lcom/bumptech/glide/d;->d:Lg0/d;

    goto :goto_0

    .line 14
    :cond_5
    new-instance v0, Lg0/e;

    invoke-direct {v0}, Lg0/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->d:Lg0/d;

    .line 15
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->e:Lg0/b;

    if-nez v0, :cond_7

    .line 16
    new-instance v0, Lg0/i;

    iget-object v1, p0, Lcom/bumptech/glide/d;->j:Lh0/i;

    invoke-virtual {v1}, Lh0/i;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lg0/i;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->e:Lg0/b;

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/d;->f:Lh0/h;

    if-nez v0, :cond_8

    .line 18
    new-instance v0, Lh0/g;

    iget-object v1, p0, Lcom/bumptech/glide/d;->j:Lh0/i;

    invoke-virtual {v1}, Lh0/i;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lh0/g;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->f:Lh0/h;

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lh0/a$a;

    if-nez v0, :cond_9

    .line 20
    new-instance v0, Lh0/f;

    invoke-direct {v0, p1}, Lh0/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->i:Lh0/a$a;

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    if-nez v0, :cond_a

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/engine/k;

    iget-object v2, p0, Lcom/bumptech/glide/d;->f:Lh0/h;

    iget-object v3, p0, Lcom/bumptech/glide/d;->i:Lh0/a$a;

    iget-object v4, p0, Lcom/bumptech/glide/d;->h:Li0/a;

    iget-object v5, p0, Lcom/bumptech/glide/d;->g:Li0/a;

    .line 23
    invoke-static {}, Li0/a;->i()Li0/a;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/d;->o:Li0/a;

    iget-boolean v8, p0, Lcom/bumptech/glide/d;->p:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/engine/k;-><init>(Lh0/h;Lh0/a$a;Li0/a;Li0/a;Li0/a;Li0/a;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    if-nez v0, :cond_b

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    goto :goto_1

    .line 26
    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/f$a;->b()Lcom/bumptech/glide/f;

    move-result-object v13

    .line 28
    new-instance v7, Lcom/bumptech/glide/manager/h;

    iget-object v0, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/manager/h$b;

    invoke-direct {v7, v0, v13}, Lcom/bumptech/glide/manager/h;-><init>(Lcom/bumptech/glide/manager/h$b;Lcom/bumptech/glide/f;)V

    .line 29
    new-instance v0, Lcom/bumptech/glide/c;

    iget-object v3, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    iget-object v4, p0, Lcom/bumptech/glide/d;->f:Lh0/h;

    iget-object v5, p0, Lcom/bumptech/glide/d;->d:Lg0/d;

    iget-object v6, p0, Lcom/bumptech/glide/d;->e:Lg0/b;

    iget-object v8, p0, Lcom/bumptech/glide/d;->k:Lp0/b;

    iget v9, p0, Lcom/bumptech/glide/d;->l:I

    iget-object v10, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    iget-object v11, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    iget-object v12, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/k;Lh0/h;Lg0/d;Lg0/b;Lcom/bumptech/glide/manager/h;Lp0/b;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/f;)V

    return-object v0
.end method

.method public b(Lh0/a$a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lh0/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->i:Lh0/a$a;

    return-object p0
.end method

.method c(Lcom/bumptech/glide/manager/h$b;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/h$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/manager/h$b;

    return-void
.end method
