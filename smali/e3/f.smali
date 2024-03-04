.class final Le3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/text/Spannable;IILe3/g;Le3/d;Ljava/util/Map;I)V
    .locals 8
    .param p4    # Le3/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "II",
            "Le3/g;",
            "Le3/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le3/g;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Le3/g;->l()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 3
    invoke-virtual {p3}, Le3/g;->l()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 4
    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 5
    :cond_0
    invoke-virtual {p3}, Le3/g;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 7
    :cond_1
    invoke-virtual {p3}, Le3/g;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 9
    :cond_2
    invoke-virtual {p3}, Le3/g;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 11
    invoke-virtual {p3}, Le3/g;->c()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 12
    invoke-static {p0, v0, p1, p2, v2}, Lb3/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 13
    :cond_3
    invoke-virtual {p3}, Le3/g;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 15
    invoke-virtual {p3}, Le3/g;->b()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 16
    invoke-static {p0, v0, p1, p2, v2}, Lb3/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 17
    :cond_4
    invoke-virtual {p3}, Le3/g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 19
    invoke-virtual {p3}, Le3/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {p0, v0, p1, p2, v2}, Lb3/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 21
    :cond_5
    invoke-virtual {p3}, Le3/g;->o()Le3/b;

    move-result-object v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {p3}, Le3/g;->o()Le3/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3/b;

    .line 23
    iget v6, v0, Le3/b;->a:I

    if-ne v6, v1, :cond_8

    if-eq p6, v4, :cond_7

    if-ne p6, v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v6, 0x3

    :goto_1
    const/4 p6, 0x1

    goto :goto_2

    .line 24
    :cond_8
    iget p6, v0, Le3/b;->b:I

    .line 25
    :goto_2
    iget v0, v0, Le3/b;->c:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_9

    const/4 v0, 0x1

    .line 26
    :cond_9
    new-instance v7, Lb3/e;

    invoke-direct {v7, v6, p6, v0}, Lb3/e;-><init>(III)V

    invoke-static {p0, v7, p1, p2, v2}, Lb3/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 27
    :cond_a
    invoke-virtual {p3}, Le3/g;->j()I

    move-result p6

    if-eq p6, v4, :cond_c

    if-eq p6, v3, :cond_b

    const/4 p4, 0x4

    if-eq p6, p4, :cond_b

    goto :goto_4

    .line 28
    :cond_b
    new-instance p4, Le3/a;

    invoke-direct {p4}, Le3/a;-><init>()V

    invoke-interface {p0, p4, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 29
    :cond_c
    invoke-static {p4, p5}, Le3/f;->d(Le3/d;Ljava/util/Map;)Le3/d;

    move-result-object p4

    if-nez p4, :cond_d

    goto :goto_4

    .line 30
    :cond_d
    invoke-static {p4, p5}, Le3/f;->e(Le3/d;Ljava/util/Map;)Le3/d;

    move-result-object p6

    if-nez p6, :cond_e

    goto :goto_4

    .line 31
    :cond_e
    invoke-virtual {p6}, Le3/d;->g()I

    move-result v0

    if-ne v0, v5, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Le3/d;->f(I)Le3/d;

    move-result-object v6

    iget-object v6, v6, Le3/d;->b:Ljava/lang/String;

    if-eqz v6, :cond_11

    .line 32
    invoke-virtual {p6, v0}, Le3/d;->f(I)Le3/d;

    move-result-object v0

    iget-object v0, v0, Le3/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    iget-object v6, p6, Le3/d;->f:Le3/g;

    invoke-virtual {p6}, Le3/d;->l()[Ljava/lang/String;

    move-result-object p6

    invoke-static {v6, p6, p5}, Le3/f;->f(Le3/g;[Ljava/lang/String;Ljava/util/Map;)Le3/g;

    move-result-object p6

    if-eqz p6, :cond_f

    .line 34
    invoke-virtual {p6}, Le3/g;->i()I

    move-result p6

    goto :goto_3

    :cond_f
    const/4 p6, -0x1

    :goto_3
    if-ne p6, v1, :cond_10

    .line 35
    iget-object v1, p4, Le3/d;->f:Le3/g;

    .line 36
    invoke-virtual {p4}, Le3/d;->l()[Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4, p5}, Le3/f;->f(Le3/g;[Ljava/lang/String;Ljava/util/Map;)Le3/g;

    move-result-object p4

    if-eqz p4, :cond_10

    .line 37
    invoke-virtual {p4}, Le3/g;->i()I

    move-result p6

    .line 38
    :cond_10
    new-instance p4, Lb3/c;

    invoke-direct {p4, v0, p6}, Lb3/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p4, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_11
    const-string p4, "TtmlRenderUtil"

    const-string p5, "Skipping rubyText node without exactly one text child."

    .line 39
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/util/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_4
    invoke-virtual {p3}, Le3/g;->n()Z

    move-result p4

    if-eqz p4, :cond_12

    .line 41
    new-instance p4, Lb3/a;

    invoke-direct {p4}, Lb3/a;-><init>()V

    invoke-static {p0, p4, p1, p2, v2}, Lb3/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 42
    :cond_12
    invoke-virtual {p3}, Le3/g;->f()I

    move-result p4

    if-eq p4, v5, :cond_15

    if-eq p4, v4, :cond_14

    if-eq p4, v3, :cond_13

    goto :goto_5

    .line 43
    :cond_13
    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    .line 44
    invoke-virtual {p3}, Le3/g;->e()F

    move-result p3

    const/high16 p5, 0x42c80000    # 100.0f

    div-float/2addr p3, p5

    invoke-direct {p4, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 45
    invoke-static {p0, p4, p1, p2, v2}, Lb3/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_5

    .line 46
    :cond_14
    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    .line 47
    invoke-virtual {p3}, Le3/g;->e()F

    move-result p3

    invoke-direct {p4, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 48
    invoke-static {p0, p4, p1, p2, v2}, Lb3/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_5

    .line 49
    :cond_15
    new-instance p4, Landroid/text/style/AbsoluteSizeSpan;

    .line 50
    invoke-virtual {p3}, Le3/g;->e()F

    move-result p3

    float-to-int p3, p3

    invoke-direct {p4, p3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 51
    invoke-static {p0, p4, p1, p2, v2}, Lb3/d;->a(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :goto_5
    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\r\n"

    const-string v1, "\n"

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " *\n *"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[ \t\\x0B\u000c\r]+"

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/text/SpannableStringBuilder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-void
.end method

.method private static d(Le3/d;Ljava/util/Map;)Le3/d;
    .locals 2
    .param p0    # Le3/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le3/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le3/g;",
            ">;)",
            "Le3/d;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 1
    iget-object v0, p0, Le3/d;->f:Le3/g;

    invoke-virtual {p0}, Le3/d;->l()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Le3/f;->f(Le3/g;[Ljava/lang/String;Ljava/util/Map;)Le3/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le3/g;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Le3/d;->j:Le3/d;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Le3/d;Ljava/util/Map;)Le3/d;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le3/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le3/g;",
            ">;)",
            "Le3/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le3/d;

    .line 5
    iget-object v1, p0, Le3/d;->f:Le3/g;

    invoke-virtual {p0}, Le3/d;->l()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Le3/f;->f(Le3/g;[Ljava/lang/String;Ljava/util/Map;)Le3/g;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Le3/g;->j()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Le3/d;->g()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Le3/d;->f(I)Le3/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Le3/g;[Ljava/lang/String;Ljava/util/Map;)Le3/g;
    .locals 3
    .param p0    # Le3/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le3/g;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le3/g;",
            ">;)",
            "Le3/g;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v2, p1

    if-ne v2, v1, :cond_1

    .line 2
    aget-object p0, p1, v0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le3/g;

    return-object p0

    .line 3
    :cond_1
    array-length v2, p1

    if-le v2, v1, :cond_5

    .line 4
    new-instance p0, Le3/g;

    invoke-direct {p0}, Le3/g;-><init>()V

    .line 5
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 6
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/g;

    invoke-virtual {p0, v2}, Le3/g;->a(Le3/g;)Le3/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    .line 7
    array-length v2, p1

    if-ne v2, v1, :cond_4

    .line 8
    aget-object p1, p1, v0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le3/g;

    invoke-virtual {p0, p1}, Le3/g;->a(Le3/g;)Le3/g;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p1, :cond_5

    .line 9
    array-length v2, p1

    if-le v2, v1, :cond_5

    .line 10
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 11
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/g;

    invoke-virtual {p0, v2}, Le3/g;->a(Le3/g;)Le3/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-object p0
.end method
