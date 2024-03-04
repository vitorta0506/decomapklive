.class public final Lcom/tencent/tmediacodec/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/tencent/tmediacodec/c/c;

.field public final b:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/tencent/tmediacodec/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    iput p1, p0, Lcom/tencent/tmediacodec/c/b;->c:I

    .line 4
    iput-object p2, p0, Lcom/tencent/tmediacodec/c/b;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/tencent/tmediacodec/b/e;Ljava/util/Iterator;)Lcom/tencent/tmediacodec/b/e;
    .locals 3

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmediacodec/b/e;

    .line 7
    invoke-virtual {p0}, Lcom/tencent/tmediacodec/b/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmediacodec/b/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/tmediacodec/c/b;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()Lcom/tencent/tmediacodec/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmediacodec/b/e;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private c(Lcom/tencent/tmediacodec/b/e;)Lcom/tencent/tmediacodec/b/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tencent/tmediacodec/a;->a()Lcom/tencent/tmediacodec/a;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/tencent/tmediacodec/a;->a:Lcom/tencent/tmediacodec/d/b;

    .line 4
    iget v1, v1, Lcom/tencent/tmediacodec/d/b;->d:I

    sget v2, Lcom/tencent/tmediacodec/d/b$a;->b:I

    if-ne v1, v2, :cond_0

    .line 5
    invoke-static {p1, v0}, Lcom/tencent/tmediacodec/c/b;->a(Lcom/tencent/tmediacodec/b/e;Ljava/util/Iterator;)Lcom/tencent/tmediacodec/b/e;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/tencent/tmediacodec/c/b;->b()Lcom/tencent/tmediacodec/b/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/b/e;
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmediacodec/b/e;

    .line 9
    iget-boolean v2, v1, Lcom/tencent/tmediacodec/b/e;->b:Z

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/tencent/tmediacodec/b/e;->b(Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/d/a$b;

    move-result-object v2

    sget-object v3, Lcom/tencent/tmediacodec/d/a$b;->a:Lcom/tencent/tmediacodec/d/a$b;

    if-eq v2, v3, :cond_1

    return-object v1

    .line 10
    :cond_1
    iget v2, v1, Lcom/tencent/tmediacodec/b/e;->i:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/tencent/tmediacodec/b/e;->i:I

    const/4 v4, 0x3

    if-lt v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {p0, v1}, Lcom/tencent/tmediacodec/c/b;->b(Lcom/tencent/tmediacodec/b/e;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/tencent/tmediacodec/b/e;)V
    .locals 1
    .param p1    # Lcom/tencent/tmediacodec/b/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/tencent/tmediacodec/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/tmediacodec/c/b;->c(Lcom/tencent/tmediacodec/b/e;)Lcom/tencent/tmediacodec/b/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/tmediacodec/c/b;->b(Lcom/tencent/tmediacodec/b/e;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/tencent/tmediacodec/b/e;)V
    .locals 2
    .param p1    # Lcom/tencent/tmediacodec/b/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/tmediacodec/c/b;->a:Lcom/tencent/tmediacodec/c/c;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lcom/tencent/tmediacodec/c/c;->a(Lcom/tencent/tmediacodec/b/e;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pool:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmediacodec/c/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CodecWrapperPool"

    invoke-static {v0, p1}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " elements:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
