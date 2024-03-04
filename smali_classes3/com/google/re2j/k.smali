.class Lcom/google/re2j/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/re2j/j;

.field final c:I

.field final d:I

.field e:Z

.field f:Ljava/lang/String;

.field g:[B

.field h:Z

.field i:I

.field private final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/re2j/f;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/re2j/j;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/k;->j:Ljava/util/Queue;

    .line 3
    iput-object p1, p0, Lcom/google/re2j/k;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/re2j/k;->b:Lcom/google/re2j/j;

    .line 5
    iput p3, p0, Lcom/google/re2j/k;->d:I

    .line 6
    invoke-virtual {p2}, Lcom/google/re2j/j;->i()I

    move-result p1

    iput p1, p0, Lcom/google/re2j/k;->c:I

    .line 7
    iput-boolean p4, p0, Lcom/google/re2j/k;->e:Z

    return-void
.end method

.method static a(Ljava/lang/String;IZ)Lcom/google/re2j/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/re2j/i;->s(Ljava/lang/String;I)Lcom/google/re2j/l;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/re2j/l;->b()I

    move-result v0

    .line 3
    invoke-static {p1}, Lcom/google/re2j/m;->a(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/re2j/d;->e(Lcom/google/re2j/l;)Lcom/google/re2j/j;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/re2j/k;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/google/re2j/k;-><init>(Ljava/lang/String;Lcom/google/re2j/j;IZ)V

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v1, p0}, Lcom/google/re2j/j;->g(Ljava/lang/StringBuilder;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/google/re2j/k;->h:Z

    .line 8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/google/re2j/k;->f:Ljava/lang/String;

    :try_start_0
    const-string p2, "UTF-8"

    .line 9
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v2, Lcom/google/re2j/k;->g:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object p0, v2, Lcom/google/re2j/k;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 11
    iget-object p0, v2, Lcom/google/re2j/k;->f:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    iput p0, v2, Lcom/google/re2j/k;->i:I

    .line 12
    :cond_0
    iget-object p0, p1, Lcom/google/re2j/l;->i:Ljava/util/Map;

    iput-object p0, v2, Lcom/google/re2j/k;->k:Ljava/util/Map;

    return-object v2

    .line 13
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Lcom/google/re2j/g;III)[I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/re2j/k;->c()Lcom/google/re2j/f;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p4}, Lcom/google/re2j/f;->f(I)V

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/re2j/f;->h(Lcom/google/re2j/g;II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/re2j/f;->k()[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/re2j/k;->f(Lcom/google/re2j/f;)V

    return-object p1
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "\\.+*?()|[]{}^$"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    const/16 v4, 0x5c

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method c()Lcom/google/re2j/f;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/re2j/k;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/re2j/k;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/f;

    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Lcom/google/re2j/f;

    invoke-direct {v0, p0}, Lcom/google/re2j/f;-><init>(Lcom/google/re2j/k;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method d(Ljava/lang/CharSequence;III[II)Z
    .locals 1

    const/4 v0, 0x0

    if-le p2, p3, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p1, v0, p3}, Lcom/google/re2j/g;->d(Ljava/lang/CharSequence;II)Lcom/google/re2j/g;

    move-result-object p1

    mul-int/lit8 p6, p6, 0x2

    invoke-direct {p0, p1, p2, p4, p6}, Lcom/google/re2j/k;->b(Lcom/google/re2j/g;III)[I

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eqz p5, :cond_2

    .line 2
    array-length p2, p1

    invoke-static {p1, v0, p5, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method e()I
    .locals 1

    iget v0, p0, Lcom/google/re2j/k;->d:I

    return v0
.end method

.method declared-synchronized f(Lcom/google/re2j/f;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/re2j/k;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized h()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/re2j/k;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/k;->a:Ljava/lang/String;

    return-object v0
.end method
