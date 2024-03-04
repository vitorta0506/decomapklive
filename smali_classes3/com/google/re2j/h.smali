.class public final Lcom/google/re2j/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/re2j/Pattern;

.field private final b:[I

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I


# direct methods
.method private constructor <init>(Lcom/google/re2j/Pattern;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pattern is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/re2j/h;->a:Lcom/google/re2j/Pattern;

    .line 4
    invoke-virtual {p1}, Lcom/google/re2j/Pattern;->re2()Lcom/google/re2j/k;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/re2j/k;->e()I

    move-result v0

    iput v0, p0, Lcom/google/re2j/h;->d:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 6
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/re2j/h;->b:[I

    .line 7
    iget-object p1, p1, Lcom/google/re2j/k;->k:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/re2j/h;->c:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/google/re2j/Pattern;Ljava/lang/CharSequence;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/re2j/h;-><init>(Lcom/google/re2j/Pattern;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/google/re2j/h;->q(Ljava/lang/CharSequence;)Lcom/google/re2j/h;

    return-void
.end method

.method private c(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_c

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto/16 :goto_4

    .line 4
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_b

    add-int/lit8 v3, v1, 0x1

    .line 5
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-gt v5, v4, :cond_7

    const/16 v6, 0x39

    if-gt v4, v6, :cond_7

    add-int/lit8 v4, v4, -0x30

    if-ge v2, v1, :cond_2

    .line 6
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_4

    if-gt v2, v6, :cond_4

    mul-int/lit8 v3, v4, 0xa

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, -0x30

    .line 8
    iget v3, p0, Lcom/google/re2j/h;->d:I

    if-le v2, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_1

    .line 9
    :cond_4
    :goto_2
    iget v2, p0, Lcom/google/re2j/h;->d:I

    if-gt v4, v2, :cond_6

    .line 10
    invoke-virtual {p0, v4}, Lcom/google/re2j/h;->i(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v1, -0x1

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_4

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "n > number of groups: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_b

    if-ge v2, v1, :cond_8

    .line 13
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    .line 14
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7d

    if-ge v2, v4, :cond_9

    .line 15
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_9

    .line 16
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x20

    if-eq v4, v6, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 17
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_a

    .line 18
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/google/re2j/h;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_4

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "named capture group is missing trailing \'}\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    if-ge v2, v0, :cond_d

    .line 21
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    return-void
.end method

.method private h(II)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/re2j/h;->a:Lcom/google/re2j/Pattern;

    invoke-virtual {v0}, Lcom/google/re2j/Pattern;->re2()Lcom/google/re2j/k;

    move-result-object v1

    iget-object v2, p0, Lcom/google/re2j/h;->e:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/google/re2j/h;->f:I

    iget-object v6, p0, Lcom/google/re2j/h;->b:[I

    const/4 v7, 0x1

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/re2j/k;->d(Ljava/lang/CharSequence;III[II)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/re2j/h;->h:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/re2j/h;->i:Z

    .line 4
    iput p2, p0, Lcom/google/re2j/h;->j:I

    return p1
.end method

.method private l(I)V
    .locals 9

    if-ltz p1, :cond_5

    .line 1
    iget v0, p0, Lcom/google/re2j/h;->d:I

    if-gt p1, v0, :cond_5

    .line 2
    iget-boolean v0, p0, Lcom/google/re2j/h;->h:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 3
    iget-boolean p1, p0, Lcom/google/re2j/h;->i:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/re2j/h;->b:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    add-int/2addr p1, v0

    .line 5
    iget v1, p0, Lcom/google/re2j/h;->f:I

    if-le p1, v1, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, p1

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/google/re2j/h;->a:Lcom/google/re2j/Pattern;

    .line 7
    invoke-virtual {p1}, Lcom/google/re2j/Pattern;->re2()Lcom/google/re2j/k;

    move-result-object v2

    iget-object v3, p0, Lcom/google/re2j/h;->e:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/google/re2j/h;->b:[I

    const/4 p1, 0x0

    aget v4, v7, p1

    iget v6, p0, Lcom/google/re2j/h;->j:I

    iget p1, p0, Lcom/google/re2j/h;->d:I

    add-int/lit8 v8, p1, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/google/re2j/k;->d(Ljava/lang/CharSequence;III[II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iput-boolean v0, p0, Lcom/google/re2j/h;->i:Z

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "inconsistency in matching group data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "perhaps no match attempted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group index out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/re2j/h;->p()Lcom/google/re2j/h;

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/re2j/h;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/re2j/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)Lcom/google/re2j/h;

    if-nez p2, :cond_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/re2j/h;->d(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/StringBuffer;Ljava/lang/String;)Lcom/google/re2j/h;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/google/re2j/h;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/re2j/h;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public b(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/re2j/h;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/re2j/h;->r()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/re2j/h;->e()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/google/re2j/h;->g:I

    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {p0, v2, v0}, Lcom/google/re2j/h;->t(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iput v1, p0, Lcom/google/re2j/h;->g:I

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/re2j/h;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget v0, p0, Lcom/google/re2j/h;->g:I

    iget v1, p0, Lcom/google/re2j/h;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/google/re2j/h;->t(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/re2j/h;->f(I)I

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/re2j/h;->l(I)V

    .line 2
    iget-object v0, p0, Lcom/google/re2j/h;->b:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/re2j/h;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/re2j/h;->b:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    .line 3
    aget v4, v0, v1

    aget v0, v0, v2

    if-ne v4, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/google/re2j/h;->h(II)Z

    move-result v0

    return v0
.end method

.method public i(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/re2j/h;->s(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/re2j/h;->f(I)I

    move-result p1

    if-gez v0, :cond_0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/re2j/h;->t(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/re2j/h;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/re2j/h;->i(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method k()I
    .locals 1

    iget v0, p0, Lcom/google/re2j/h;->f:I

    return v0
.end method

.method public m()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/h;->h(II)Z

    move-result v0

    return v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/h;->n(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p()Lcom/google/re2j/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/re2j/h;->e:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/google/re2j/h;->f:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/re2j/h;->g:I

    .line 3
    iput-boolean v0, p0, Lcom/google/re2j/h;->h:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/re2j/h;->i:Z

    return-object p0
.end method

.method public q(Ljava/lang/CharSequence;)Lcom/google/re2j/h;
    .locals 1

    const-string v0, "input is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/re2j/h;->e:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lcom/google/re2j/h;->p()Lcom/google/re2j/h;

    return-object p0
.end method

.method public r()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/re2j/h;->s(I)I

    move-result v0

    return v0
.end method

.method public s(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/re2j/h;->l(I)V

    .line 2
    iget-object v0, p0, Lcom/google/re2j/h;->b:[I

    mul-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method t(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/h;->e:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
