.class Lcom/google/re2j/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/google/re2j/l;)Lcom/google/re2j/l;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/google/re2j/m$a;->a:[I

    iget-object v2, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    return-object p0

    .line 2
    :pswitch_0
    iget v1, p0, Lcom/google/re2j/l;->e:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/re2j/l;->f:I

    if-nez v1, :cond_1

    .line 3
    new-instance p0, Lcom/google/re2j/l;

    sget-object v0, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    invoke-direct {p0, v0}, Lcom/google/re2j/l;-><init>(Lcom/google/re2j/l$b;)V

    return-object p0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/re2j/m;->a(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v1

    .line 5
    iget v3, p0, Lcom/google/re2j/l;->f:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_5

    .line 6
    iget v3, p0, Lcom/google/re2j/l;->e:I

    if-nez v3, :cond_2

    .line 7
    sget-object v2, Lcom/google/re2j/l$b;->n:Lcom/google/re2j/l$b;

    iget p0, p0, Lcom/google/re2j/l;->b:I

    invoke-static {v2, p0, v1, v0}, Lcom/google/re2j/m;->b(Lcom/google/re2j/l$b;ILcom/google/re2j/l;Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne v3, v5, :cond_3

    .line 8
    sget-object v2, Lcom/google/re2j/l$b;->o:Lcom/google/re2j/l$b;

    iget p0, p0, Lcom/google/re2j/l;->b:I

    invoke-static {v2, p0, v1, v0}, Lcom/google/re2j/m;->b(Lcom/google/re2j/l$b;ILcom/google/re2j/l;Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    new-instance v3, Lcom/google/re2j/l;

    sget-object v4, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    invoke-direct {v3, v4}, Lcom/google/re2j/l;-><init>(Lcom/google/re2j/l$b;)V

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_0
    iget v6, p0, Lcom/google/re2j/l;->e:I

    sub-int/2addr v6, v5

    if-ge v2, v6, :cond_4

    .line 12
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_4
    sget-object v2, Lcom/google/re2j/l$b;->o:Lcom/google/re2j/l$b;

    iget p0, p0, Lcom/google/re2j/l;->b:I

    invoke-static {v2, p0, v1, v0}, Lcom/google/re2j/m;->b(Lcom/google/re2j/l$b;ILcom/google/re2j/l;Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/google/re2j/l;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/re2j/l;

    iput-object p0, v3, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    return-object v3

    .line 15
    :cond_5
    iget v4, p0, Lcom/google/re2j/l;->e:I

    if-ne v4, v5, :cond_6

    if-ne v3, v5, :cond_6

    return-object v1

    :cond_6
    if-lez v4, :cond_7

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 17
    :goto_1
    iget v6, p0, Lcom/google/re2j/l;->e:I

    if-ge v4, v6, :cond_8

    .line 18
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move-object v3, v0

    .line 19
    :cond_8
    iget v4, p0, Lcom/google/re2j/l;->f:I

    iget v6, p0, Lcom/google/re2j/l;->e:I

    if-le v4, v6, :cond_b

    .line 20
    sget-object v4, Lcom/google/re2j/l$b;->p:Lcom/google/re2j/l$b;

    iget v6, p0, Lcom/google/re2j/l;->b:I

    invoke-static {v4, v6, v1, v0}, Lcom/google/re2j/m;->b(Lcom/google/re2j/l$b;ILcom/google/re2j/l;Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v4

    .line 21
    iget v6, p0, Lcom/google/re2j/l;->e:I

    add-int/2addr v6, v5

    :goto_2
    iget v7, p0, Lcom/google/re2j/l;->f:I

    if-ge v6, v7, :cond_9

    .line 22
    new-instance v7, Lcom/google/re2j/l;

    sget-object v8, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    invoke-direct {v7, v8}, Lcom/google/re2j/l;-><init>(Lcom/google/re2j/l$b;)V

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/re2j/l;

    aput-object v1, v8, v2

    aput-object v4, v8, v5

    .line 23
    iput-object v8, v7, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    .line 24
    sget-object v4, Lcom/google/re2j/l$b;->p:Lcom/google/re2j/l$b;

    iget v8, p0, Lcom/google/re2j/l;->b:I

    invoke-static {v4, v8, v7, v0}, Lcom/google/re2j/m;->b(Lcom/google/re2j/l$b;ILcom/google/re2j/l;Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    if-nez v3, :cond_a

    return-object v4

    .line 25
    :cond_a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v3, :cond_c

    .line 26
    new-instance p0, Lcom/google/re2j/l;

    sget-object v0, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    invoke-direct {p0, v0}, Lcom/google/re2j/l;-><init>(Lcom/google/re2j/l$b;)V

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/re2j/l;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/l;

    iput-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    return-object p0

    .line 28
    :cond_c
    new-instance p0, Lcom/google/re2j/l;

    sget-object v0, Lcom/google/re2j/l$b;->a:Lcom/google/re2j/l$b;

    invoke-direct {p0, v0}, Lcom/google/re2j/l;-><init>(Lcom/google/re2j/l$b;)V

    return-object p0

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/re2j/m;->a(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    iget v2, p0, Lcom/google/re2j/l;->b:I

    invoke-static {v1, v2, v0, p0}, Lcom/google/re2j/m;->b(Lcom/google/re2j/l$b;ILcom/google/re2j/l;Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object p0

    return-object p0

    :pswitch_2
    move-object v3, p0

    const/4 v1, 0x0

    .line 31
    :goto_3
    iget-object v4, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v5, v4

    if-ge v1, v5, :cond_f

    .line 32
    aget-object v4, v4, v1

    .line 33
    invoke-static {v4}, Lcom/google/re2j/m;->a(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v5

    if-ne v3, p0, :cond_d

    if-eq v5, v4, :cond_d

    .line 34
    new-instance v3, Lcom/google/re2j/l;

    invoke-direct {v3, p0}, Lcom/google/re2j/l;-><init>(Lcom/google/re2j/l;)V

    .line 35
    iput-object v0, v3, Lcom/google/re2j/l;->d:[I

    .line 36
    iget-object v4, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v6, v4

    invoke-static {v4, v2, v6}, Lcom/google/re2j/i;->M([Lcom/google/re2j/l;II)[Lcom/google/re2j/l;

    move-result-object v4

    iput-object v4, v3, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    :cond_d
    if-eq v3, p0, :cond_e

    .line 37
    iget-object v4, v3, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aput-object v5, v4, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/google/re2j/l$b;ILcom/google/re2j/l;Lcom/google/re2j/l;)Lcom/google/re2j/l;
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    if-ne v0, v1, :cond_0

    return-object p2

    :cond_0
    if-ne p0, v0, :cond_1

    and-int/lit8 v0, p1, 0x20

    .line 2
    iget v1, p2, Lcom/google/re2j/l;->b:I

    and-int/lit8 v1, v1, 0x20

    if-ne v0, v1, :cond_1

    return-object p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 3
    iget-object v1, p3, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    if-ne v1, p0, :cond_2

    iget v1, p3, Lcom/google/re2j/l;->b:I

    and-int/lit8 v1, v1, 0x20

    and-int/lit8 v2, p1, 0x20

    if-ne v1, v2, :cond_2

    iget-object v1, p3, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v1, v1, v0

    if-ne p2, v1, :cond_2

    return-object p3

    .line 4
    :cond_2
    new-instance p3, Lcom/google/re2j/l;

    invoke-direct {p3, p0}, Lcom/google/re2j/l;-><init>(Lcom/google/re2j/l$b;)V

    .line 5
    iput p1, p3, Lcom/google/re2j/l;->b:I

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/re2j/l;

    aput-object p2, p0, v0

    .line 6
    iput-object p0, p3, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    return-object p3
.end method
