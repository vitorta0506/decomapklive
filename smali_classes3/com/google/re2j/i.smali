.class Lcom/google/re2j/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/i$b;,
        Lcom/google/re2j/i$d;,
        Lcom/google/re2j/i$c;
    }
.end annotation


# static fields
.field private static final g:[[I


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private final c:Lcom/google/re2j/i$c;

.field private d:Lcom/google/re2j/l;

.field private e:I

.field private final f:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/re2j/i;->g:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x10ffff
        0x1
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/re2j/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/re2j/i$c;-><init>(Lcom/google/re2j/i$a;)V

    iput-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/re2j/i;->e:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/i;->f:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/google/re2j/i;->a:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/google/re2j/i;->b:I

    return-void
.end method

.method private A(Lcom/google/re2j/i$d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->g()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?P<"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    const/16 v0, 0x3e

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v2, "invalid named capture"

    if-ltz v0, :cond_2

    const/4 v5, 0x4

    .line 5
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p1, v5}, Lcom/google/re2j/i$d;->k(Ljava/lang/String;)V

    const/4 v6, 0x5

    .line 7
    invoke-virtual {p1, v6}, Lcom/google/re2j/i$d;->j(I)V

    .line 8
    invoke-static {v5}, Lcom/google/re2j/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    sget-object p1, Lcom/google/re2j/l$b;->t:Lcom/google/re2j/l$b;

    invoke-direct {p0, p1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object p1

    .line 10
    iget v0, p0, Lcom/google/re2j/i;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/re2j/i;->e:I

    iput v0, p1, Lcom/google/re2j/l;->g:I

    .line 11
    iget-object v1, p0, Lcom/google/re2j/i;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    iput-object v5, p1, Lcom/google/re2j/l;->h:Ljava/lang/String;

    return-void

    .line 13
    :cond_0
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    const-string v0, "duplicate capture group name"

    invoke-direct {p1, v0, v5}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    .line 15
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    invoke-direct {p1, v2, v1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x2

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 18
    iget v1, p0, Lcom/google/re2j/i;->b:I

    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    .line 19
    :goto_1
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->d()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 20
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->f()I

    move-result v6

    const/16 v7, 0x29

    const/16 v8, 0x3a

    if-eq v6, v7, :cond_8

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_7

    if-eq v6, v8, :cond_8

    const/16 v5, 0x55

    if-eq v6, v5, :cond_6

    const/16 v5, 0x69

    if-eq v6, v5, :cond_5

    const/16 v5, 0x6d

    if-eq v6, v5, :cond_4

    const/16 v5, 0x73

    if-ne v6, v5, :cond_b

    or-int/lit8 v1, v1, 0x8

    goto :goto_2

    :cond_4
    and-int/lit8 v1, v1, -0x11

    goto :goto_2

    :cond_5
    or-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    or-int/lit8 v1, v1, 0x20

    :goto_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    if-ltz v2, :cond_b

    const/4 v2, -0x1

    not-int v1, v1

    goto :goto_0

    :cond_8
    if-gez v2, :cond_9

    if-eqz v5, :cond_b

    not-int v1, v1

    :cond_9
    if-ne v6, v8, :cond_a

    .line 21
    sget-object p1, Lcom/google/re2j/l$b;->t:Lcom/google/re2j/l$b;

    invoke-direct {p0, p1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    .line 22
    :cond_a
    iput v1, p0, Lcom/google/re2j/i;->b:I

    return-void

    .line 23
    :cond_b
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1, v0}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "invalid or unsupported Perl syntax"

    invoke-direct {v1, v0, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static B(Lcom/google/re2j/i$d;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->g()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/google/re2j/i$d;->b(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 4
    invoke-static {p0}, Lcom/google/re2j/i;->w(Lcom/google/re2j/i$d;)I

    move-result v3

    if-ne v3, v2, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    const/16 v4, 0x2c

    .line 6
    invoke-virtual {p0, v4}, Lcom/google/re2j/i$d;->b(C)Z

    move-result v4

    const/16 v5, 0x7d

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    .line 9
    :cond_4
    invoke-virtual {p0, v5}, Lcom/google/re2j/i$d;->b(C)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, -0x1

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {p0}, Lcom/google/re2j/i;->w(Lcom/google/re2j/i$d;)I

    move-result v4

    if-ne v4, v2, :cond_6

    return v2

    .line 11
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, v5}, Lcom/google/re2j/i$d;->b(C)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 12
    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/re2j/i$d;->j(I)V

    if-ltz v3, :cond_9

    const/16 v1, 0x3e8

    if-gt v3, v1, :cond_9

    const/4 v2, -0x2

    if-eq v4, v2, :cond_9

    if-gt v4, v1, :cond_9

    if-ltz v4, :cond_8

    if-gt v3, v4, :cond_9

    :cond_8
    shl-int/lit8 p0, v3, 0x10

    const v0, 0xffff

    and-int/2addr v0, v4

    or-int/2addr p0, v0

    return p0

    .line 13
    :cond_9
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p0, v0}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "invalid repeat count"

    invoke-direct {v1, v0, p0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_1
    return v2
.end method

.method private C()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/re2j/i;->d()Lcom/google/re2j/l;

    .line 2
    invoke-direct {p0}, Lcom/google/re2j/i;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/re2j/i;->F()Lcom/google/re2j/l;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/re2j/i;->a()Lcom/google/re2j/l;

    .line 5
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/google/re2j/i;->F()Lcom/google/re2j/l;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/google/re2j/i;->F()Lcom/google/re2j/l;

    move-result-object v1

    .line 8
    iget-object v2, v1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v3, Lcom/google/re2j/l$b;->t:Lcom/google/re2j/l$b;

    if-ne v2, v3, :cond_2

    .line 9
    iget v2, v1, Lcom/google/re2j/l;->b:I

    iput v2, p0, Lcom/google/re2j/i;->b:I

    .line 10
    iget v2, v1, Lcom/google/re2j/l;->g:I

    if-nez v2, :cond_1

    .line 11
    invoke-direct {p0, v0}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    goto :goto_0

    .line 12
    :cond_1
    sget-object v2, Lcom/google/re2j/l$b;->m:Lcom/google/re2j/l$b;

    iput-object v2, v1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/re2j/l;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 13
    iput-object v2, v1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    .line 14
    invoke-direct {p0, v1}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    :goto_0
    return-void

    .line 15
    :cond_2
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    iget-object v1, p0, Lcom/google/re2j/i;->a:Ljava/lang/String;

    const-string v2, "missing closing )"

    invoke-direct {v0, v2, v1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    const-string v1, "regexp/syntax: internal error"

    const-string v2, "stack underflow"

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private D(Lcom/google/re2j/i$d;Lcom/google/re2j/a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->g()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/re2j/i;->b:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const-string v1, "\\p"

    invoke-virtual {p1, v1}, Lcom/google/re2j/i$d;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\P"

    invoke-virtual {p1, v1}, Lcom/google/re2j/i$d;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->f()I

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->d()Z

    move-result v4

    const-string v5, "invalid character class range"

    if-eqz v4, :cond_8

    .line 6
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->f()I

    move-result v4

    const/16 v6, 0x7b

    if-eq v4, v6, :cond_2

    .line 7
    invoke-static {v4}, Lcom/google/re2j/p;->e(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x7d

    .line 9
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_7

    .line 10
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p1, v4}, Lcom/google/re2j/i$d;->k(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 13
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x5e

    if-ne v2, v6, :cond_3

    neg-int v3, v3

    .line 14
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    :cond_3
    invoke-static {v4}, Lcom/google/re2j/i;->O(Ljava/lang/String;)Lcom/google/re2j/i$b;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 16
    iget-object p1, v2, Lcom/google/re2j/i$b;->a:Ljava/lang/Object;

    check-cast p1, [[I

    .line 17
    iget-object v0, v2, Lcom/google/re2j/i$b;->b:Ljava/lang/Object;

    check-cast v0, [[I

    .line 18
    iget v2, p0, Lcom/google/re2j/i;->b:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    new-instance v2, Lcom/google/re2j/a;

    invoke-direct {v2}, Lcom/google/re2j/a;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/re2j/a;->j([[I)Lcom/google/re2j/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/re2j/a;->j([[I)Lcom/google/re2j/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/re2j/a;->m()Lcom/google/re2j/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/re2j/a;->r()[I

    move-result-object p1

    .line 20
    invoke-virtual {p2, p1, v3}, Lcom/google/re2j/a;->b([II)Lcom/google/re2j/a;

    goto :goto_3

    .line 21
    :cond_5
    :goto_2
    invoke-virtual {p2, p1, v3}, Lcom/google/re2j/a;->k([[II)Lcom/google/re2j/a;

    :goto_3
    return v1

    .line 22
    :cond_6
    new-instance p2, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1, v0}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_7
    invoke-virtual {p1, v0}, Lcom/google/re2j/i$d;->i(I)V

    .line 24
    new-instance p2, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/re2j/i$d;->i(I)V

    .line 26
    new-instance p2, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_9
    :goto_4
    return v2
.end method

.method private E()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/re2j/i;->d()Lcom/google/re2j/l;

    .line 2
    invoke-direct {p0}, Lcom/google/re2j/i;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/re2j/l$b;->u:Lcom/google/re2j/l$b;

    invoke-direct {p0, v0}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    :cond_0
    return-void
.end method

.method private F()Lcom/google/re2j/l;
    .locals 2

    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/l;

    return-object v0
.end method

.method private G()[Lcom/google/re2j/l;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/re2j/l;

    iget-object v2, v2, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v2}, Lcom/google/re2j/l$b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    sub-int v3, v0, v1

    new-array v3, v3, [Lcom/google/re2j/l;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/re2j/l;

    .line 4
    iget-object v3, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v3, v1, v0}, Lcom/google/re2j/i$c;->removeRange(II)V

    return-object v2
.end method

.method private H(Lcom/google/re2j/l;)Lcom/google/re2j/l;
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->d:Lcom/google/re2j/l$b;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    iget-object v6, p1, Lcom/google/re2j/l;->d:[I

    array-length v7, v6

    if-ne v7, v3, :cond_1

    aget v7, v6, v5

    aget v8, v6, v4

    if-ne v7, v8, :cond_1

    .line 2
    aget v0, v6, v5

    iget v1, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v1, v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/i;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 3
    :cond_0
    sget-object v0, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    iput-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    new-array v0, v4, [I

    .line 4
    iget-object v1, p1, Lcom/google/re2j/l;->d:[I

    aget v1, v1, v5

    aput v1, v0, v5

    iput-object v0, p1, Lcom/google/re2j/l;->d:[I

    .line 5
    iget v0, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/google/re2j/l;->b:I

    goto/16 :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p1, Lcom/google/re2j/l;->d:[I

    array-length v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    aget v6, v0, v5

    aget v7, v0, v4

    if-ne v6, v7, :cond_2

    aget v6, v0, v3

    const/4 v7, 0x3

    aget v7, v0, v7

    if-ne v6, v7, :cond_2

    aget v0, v0, v5

    .line 7
    invoke-static {v0}, Lcom/google/re2j/n;->d(I)I

    move-result v0

    iget-object v6, p1, Lcom/google/re2j/l;->d:[I

    aget v7, v6, v3

    if-ne v0, v7, :cond_2

    aget v0, v6, v3

    .line 8
    invoke-static {v0}, Lcom/google/re2j/n;->d(I)I

    move-result v0

    iget-object v6, p1, Lcom/google/re2j/l;->d:[I

    aget v6, v6, v5

    if-eq v0, v6, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/google/re2j/l;->d:[I

    array-length v1, v0

    if-ne v1, v3, :cond_5

    aget v1, v0, v5

    add-int/2addr v1, v4

    aget v3, v0, v4

    if-ne v1, v3, :cond_5

    aget v0, v0, v5

    .line 9
    invoke-static {v0}, Lcom/google/re2j/n;->d(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/l;->d:[I

    aget v3, v1, v4

    if-ne v0, v3, :cond_5

    aget v0, v1, v4

    .line 10
    invoke-static {v0}, Lcom/google/re2j/n;->d(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/l;->d:[I

    aget v1, v1, v5

    if-ne v0, v1, :cond_5

    .line 11
    :cond_3
    iget-object v0, p1, Lcom/google/re2j/l;->d:[I

    aget v0, v0, v5

    iget v1, p0, Lcom/google/re2j/i;->b:I

    or-int/2addr v1, v4

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/i;->m(II)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    .line 12
    :cond_4
    sget-object v0, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    iput-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    new-array v0, v4, [I

    .line 13
    iget-object v1, p1, Lcom/google/re2j/l;->d:[I

    aget v1, v1, v5

    aput v1, v0, v5

    iput-object v0, p1, Lcom/google/re2j/l;->d:[I

    .line 14
    iget v0, p0, Lcom/google/re2j/i;->b:I

    or-int/2addr v0, v4

    iput v0, p1, Lcom/google/re2j/l;->b:I

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    .line 15
    invoke-direct {p0, v0, v5}, Lcom/google/re2j/i;->m(II)Z

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private I(Lcom/google/re2j/l;Z)Lcom/google/re2j/l;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v1, v0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    aget-object p2, v0, v1

    invoke-direct {p0, p2}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    .line 3
    :cond_0
    iget-object p2, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v0, p2

    const/4 v2, 0x1

    invoke-static {p2, v2, v0}, Lcom/google/re2j/i;->M([Lcom/google/re2j/l;II)[Lcom/google/re2j/l;

    move-result-object p2

    iput-object p2, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    .line 4
    array-length v0, p2

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    aget-object p2, p2, v1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    move-object p1, p2

    goto :goto_0

    .line 7
    :cond_2
    sget-object p2, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    iput-object p2, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    .line 8
    sget-object p2, Lcom/google/re2j/l;->j:[Lcom/google/re2j/l;

    iput-object p2, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    :goto_0
    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    invoke-direct {p0, p1}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    .line 10
    :cond_4
    sget-object p1, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    invoke-direct {p0, p1}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object p1

    return-object p1
.end method

.method private J(Lcom/google/re2j/l;I)Lcom/google/re2j/l;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    if-ne v0, v1, :cond_3

    iget-object v1, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v2, v1

    if-lez v2, :cond_3

    const/4 v0, 0x0

    .line 2
    aget-object v1, v1, v0

    invoke-direct {p0, v1, p2}, Lcom/google/re2j/i;->J(Lcom/google/re2j/l;I)Lcom/google/re2j/l;

    move-result-object p2

    .line 3
    iget-object v1, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aput-object p2, v1, v0

    .line 4
    iget-object v0, p2, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0, p2}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    .line 6
    iget-object p2, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v0, p2

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 7
    array-length v0, p2

    invoke-static {p2, v2, v0}, Lcom/google/re2j/i;->M([Lcom/google/re2j/l;II)[Lcom/google/re2j/l;

    move-result-object p2

    iput-object p2, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    goto :goto_0

    .line 8
    :cond_0
    aget-object p2, p2, v2

    .line 9
    invoke-direct {p0, p1}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    move-object p1, p2

    goto :goto_0

    .line 10
    :cond_1
    iput-object v1, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    const/4 p2, 0x0

    .line 11
    iput-object p2, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    :cond_2
    :goto_0
    return-object p1

    .line 12
    :cond_3
    sget-object v1, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    if-ne v0, v1, :cond_4

    .line 13
    iget-object v0, p1, Lcom/google/re2j/l;->d:[I

    array-length v1, v0

    invoke-static {v0, p2, v1}, Lcom/google/re2j/p;->g([III)[I

    move-result-object p2

    iput-object p2, p1, Lcom/google/re2j/l;->d:[I

    .line 14
    array-length p2, p2

    if-nez p2, :cond_4

    .line 15
    sget-object p2, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    iput-object p2, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    :cond_4
    return-object p1
.end method

.method private K(Lcom/google/re2j/l$b;IIILcom/google/re2j/i$d;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p5}, Lcom/google/re2j/i$d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3f

    invoke-virtual {p5, v1}, Lcom/google/re2j/i$d;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p5, v2}, Lcom/google/re2j/i$d;->j(I)V

    xor-int/lit8 v0, v0, 0x20

    :cond_0
    const/4 v1, -0x1

    if-ne p6, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p5, p6}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "invalid nested repetition operator"

    invoke-direct {p1, p3, p2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    :goto_0
    iget-object p6, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p6

    const-string v1, "missing argument to repetition operator"

    if-eqz p6, :cond_4

    .line 6
    iget-object v3, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    sub-int/2addr p6, v2

    invoke-virtual {v3, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/l;

    .line 7
    iget-object v4, v3, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v4}, Lcom/google/re2j/l$b;->a()Z

    move-result v4

    if-nez v4, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object p1

    .line 9
    iput p2, p1, Lcom/google/re2j/l;->e:I

    .line 10
    iput p3, p1, Lcom/google/re2j/l;->f:I

    .line 11
    iput v0, p1, Lcom/google/re2j/l;->b:I

    new-array p2, v2, [Lcom/google/re2j/l;

    const/4 p3, 0x0

    aput-object v3, p2, p3

    .line 12
    iput-object p2, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    .line 13
    iget-object p2, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {p2, p6, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 14
    :cond_3
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p5, p4}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p5, p4}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private L(Lcom/google/re2j/l;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/google/re2j/i;->d:Lcom/google/re2j/l;

    aput-object v2, v0, v1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/google/re2j/i;->d:Lcom/google/re2j/l;

    return-void
.end method

.method static M([Lcom/google/re2j/l;II)[Lcom/google/re2j/l;
    .locals 4

    sub-int v0, p2, p1

    .line 1
    new-array v0, v0, [Lcom/google/re2j/l;

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_0

    sub-int v2, v1, p1

    .line 2
    aget-object v3, p0, v1

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private N()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 2
    iget-object v3, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    add-int/lit8 v4, v0, -0x2

    .line 3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/l;

    iget-object v3, v3, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v4, Lcom/google/re2j/l$b;->u:Lcom/google/re2j/l$b;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    add-int/lit8 v4, v0, -0x1

    .line 4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/l;

    invoke-static {v3}, Lcom/google/re2j/i;->g(Lcom/google/re2j/l;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    add-int/lit8 v5, v0, -0x3

    .line 5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/l;

    invoke-static {v3}, Lcom/google/re2j/i;->g(Lcom/google/re2j/l;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/l;

    .line 7
    iget-object v2, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/re2j/l;

    .line 8
    iget-object v3, v0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, v2, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 9
    iget-object v3, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v3, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    .line 10
    :goto_0
    invoke-static {v0, v2}, Lcom/google/re2j/i;->n(Lcom/google/re2j/l;Lcom/google/re2j/l;)V

    .line 11
    invoke-direct {p0, v2}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    .line 12
    invoke-direct {p0}, Lcom/google/re2j/i;->F()Lcom/google/re2j/l;

    return v1

    :cond_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    .line 13
    iget-object v3, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/l;

    .line 14
    iget-object v5, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    add-int/lit8 v6, v0, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/re2j/l;

    .line 15
    iget-object v7, v5, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v8, Lcom/google/re2j/l$b;->u:Lcom/google/re2j/l$b;

    if-ne v7, v8, :cond_3

    if-lt v0, v2, :cond_2

    .line 16
    iget-object v7, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    sub-int/2addr v0, v2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/l;

    invoke-direct {p0, v0}, Lcom/google/re2j/i;->b(Lcom/google/re2j/l;)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static O(Ljava/lang/String;)Lcom/google/re2j/i$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/re2j/i$b<",
            "[[I[[I>;"
        }
    .end annotation

    const-string v0, "Any"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/re2j/i;->g:[[I

    invoke-static {p0, p0}, Lcom/google/re2j/i$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/i$b;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/re2j/o;->E1:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/google/re2j/o;->O1:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/re2j/i$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/i$b;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/re2j/o;->F1:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    if-eqz v0, :cond_2

    .line 6
    sget-object v1, Lcom/google/re2j/o;->J1:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/re2j/i$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/i$b;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a()Lcom/google/re2j/l;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/re2j/i;->G()[Lcom/google/re2j/l;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    .line 3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->b(Lcom/google/re2j/l;)V

    .line 4
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 5
    sget-object v0, Lcom/google/re2j/l$b;->a:Lcom/google/re2j/l$b;

    invoke-direct {p0, v0}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    sget-object v1, Lcom/google/re2j/l$b;->s:Lcom/google/re2j/l$b;

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/i;->c([Lcom/google/re2j/l;Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/re2j/l;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->d:Lcom/google/re2j/l$b;

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Lcom/google/re2j/a;

    iget-object v1, p1, Lcom/google/re2j/l;->d:[I

    invoke-direct {v0, v1}, Lcom/google/re2j/a;-><init>([I)V

    invoke-virtual {v0}, Lcom/google/re2j/a;->m()Lcom/google/re2j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/re2j/a;->r()[I

    move-result-object v0

    iput-object v0, p1, Lcom/google/re2j/l;->d:[I

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    const v3, 0x10ffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    aget v1, v0, v5

    if-nez v1, :cond_0

    aget v1, v0, v4

    if-ne v1, v3, :cond_0

    .line 4
    iput-object v2, p1, Lcom/google/re2j/l;->d:[I

    .line 5
    sget-object v0, Lcom/google/re2j/l$b;->f:Lcom/google/re2j/l$b;

    iput-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    goto :goto_0

    .line 6
    :cond_0
    array-length v1, v0

    const/4 v7, 0x4

    if-ne v1, v7, :cond_1

    aget v1, v0, v5

    if-nez v1, :cond_1

    aget v1, v0, v4

    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    aget v1, v0, v6

    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    const/4 v1, 0x3

    aget v0, v0, v1

    if-ne v0, v3, :cond_1

    .line 7
    iput-object v2, p1, Lcom/google/re2j/l;->d:[I

    .line 8
    sget-object v0, Lcom/google/re2j/l$b;->e:Lcom/google/re2j/l$b;

    iput-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    :cond_1
    :goto_0
    return-void
.end method

.method private c([Lcom/google/re2j/l;Lcom/google/re2j/l$b;)Lcom/google/re2j/l;
    .locals 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    aget-object p1, p1, v2

    return-object p1

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, p1, v3

    .line 4
    iget-object v6, v5, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    if-ne v6, p2, :cond_1

    iget-object v5, v5, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v5, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-array v0, v4, [Lcom/google/re2j/l;

    .line 6
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v6, p1, v4

    .line 7
    iget-object v7, v6, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    if-ne v7, p2, :cond_3

    .line 8
    iget-object v7, v6, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v8, v7

    invoke-static {v7, v2, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v7, v6, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v7, v7

    add-int/2addr v5, v7

    .line 10
    invoke-direct {p0, v6}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v5, 0x1

    .line 11
    aput-object v6, v0, v5

    move v5, v7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 12
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object p1

    .line 13
    iput-object v0, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    .line 14
    sget-object v3, Lcom/google/re2j/l$b;->s:Lcom/google/re2j/l$b;

    if-ne p2, v3, :cond_5

    .line 15
    iget p2, p1, Lcom/google/re2j/l;->b:I

    invoke-direct {p0, v0, p2}, Lcom/google/re2j/i;->f([Lcom/google/re2j/l;I)[Lcom/google/re2j/l;

    move-result-object p2

    iput-object p2, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    .line 16
    array-length v0, p2

    if-ne v0, v1, :cond_5

    .line 17
    aget-object p2, p2, v2

    .line 18
    invoke-direct {p0, p1}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    move-object p1, p2

    :cond_5
    return-object p1
.end method

.method private d()Lcom/google/re2j/l;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/re2j/i;->m(II)Z

    .line 2
    invoke-direct {p0}, Lcom/google/re2j/i;->G()[Lcom/google/re2j/l;

    move-result-object v0

    .line 3
    array-length v1, v0

    if-nez v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    invoke-direct {p0, v0}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/i;->c([Lcom/google/re2j/l;Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v0

    return-object v0
.end method

.method private static e([I[I)[I
    .locals 3

    .line 1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private f([Lcom/google/re2j/l;I)[Lcom/google/re2j/l;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-object v1

    .line 2
    :cond_0
    array-length v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x1

    if-gt v6, v2, :cond_9

    if-ge v6, v2, :cond_4

    add-int v13, v5, v6

    .line 3
    aget-object v13, v1, v13

    .line 4
    iget-object v14, v13, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v15, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    if-ne v14, v15, :cond_1

    iget-object v14, v13, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v15, v14

    if-lez v15, :cond_1

    .line 5
    aget-object v13, v14, v5

    .line 6
    :cond_1
    iget-object v14, v13, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v15, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    if-ne v14, v15, :cond_2

    .line 7
    iget-object v14, v13, Lcom/google/re2j/l;->d:[I

    .line 8
    array-length v15, v14

    .line 9
    iget v13, v13, Lcom/google/re2j/l;->b:I

    and-int/2addr v13, v12

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ne v13, v8, :cond_5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_3

    if-ge v4, v15, :cond_3

    .line 10
    aget v12, v9, v4

    aget v3, v14, v4

    if-ne v12, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x2

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    if-lez v4, :cond_5

    move v10, v4

    goto :goto_6

    :cond_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_5
    if-ne v6, v11, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v11, 0x1

    if-ne v6, v3, :cond_7

    add-int/lit8 v3, v7, 0x1

    add-int/2addr v11, v5

    .line 11
    aget-object v4, v1, v11

    aput-object v4, v1, v7

    :goto_3
    move v7, v3

    goto :goto_5

    .line 12
    :cond_7
    sget-object v3, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    invoke-direct {v0, v3}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v3

    .line 13
    iput v8, v3, Lcom/google/re2j/l;->b:I

    .line 14
    invoke-static {v9, v5, v10}, Lcom/google/re2j/p;->g([III)[I

    move-result-object v4

    iput-object v4, v3, Lcom/google/re2j/l;->d:[I

    move v4, v11

    :goto_4
    if-ge v4, v6, :cond_8

    add-int v8, v5, v4

    .line 15
    aget-object v9, v1, v8

    invoke-direct {v0, v9, v10}, Lcom/google/re2j/i;->J(Lcom/google/re2j/l;I)Lcom/google/re2j/l;

    move-result-object v9

    aput-object v9, v1, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v11, v5

    add-int v4, v5, v6

    .line 16
    invoke-static {v1, v11, v4}, Lcom/google/re2j/i;->M([Lcom/google/re2j/l;II)[Lcom/google/re2j/l;

    move-result-object v4

    sget-object v8, Lcom/google/re2j/l$b;->s:Lcom/google/re2j/l$b;

    invoke-direct {v0, v4, v8}, Lcom/google/re2j/i;->c([Lcom/google/re2j/l;Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v4

    .line 17
    sget-object v8, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    invoke-direct {v0, v8}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/google/re2j/l;

    aput-object v3, v10, v5

    const/4 v3, 0x1

    aput-object v4, v10, v3

    .line 18
    iput-object v10, v8, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    add-int/lit8 v3, v7, 0x1

    .line 19
    aput-object v8, v1, v7

    goto :goto_3

    :goto_5
    move v11, v6

    move v8, v13

    move-object v9, v14

    move v10, v15

    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_7
    if-gt v2, v7, :cond_11

    if-ge v2, v7, :cond_b

    add-int v8, v5, v2

    .line 20
    aget-object v8, v1, v8

    invoke-static {v8}, Lcom/google/re2j/i;->i(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object v8

    if-eqz v4, :cond_c

    .line 21
    invoke-virtual {v4, v8}, Lcom/google/re2j/l;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 22
    invoke-static {v4}, Lcom/google/re2j/i;->g(Lcom/google/re2j/l;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v4, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v10, Lcom/google/re2j/l$b;->q:Lcom/google/re2j/l$b;

    if-ne v9, v10, :cond_c

    iget v9, v4, Lcom/google/re2j/l;->e:I

    iget v10, v4, Lcom/google/re2j/l;->f:I

    if-ne v9, v10, :cond_c

    iget-object v9, v4, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v9, v9, v5

    .line 23
    invoke-static {v9}, Lcom/google/re2j/i;->g(Lcom/google/re2j/l;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_a
    move-object v8, v4

    const/4 v4, 0x1

    const/4 v10, 0x2

    goto :goto_c

    :cond_b
    const/4 v8, 0x0

    :cond_c
    if-ne v2, v6, :cond_d

    :goto_8
    const/4 v4, 0x1

    const/4 v10, 0x2

    goto :goto_b

    :cond_d
    add-int/lit8 v9, v6, 0x1

    if-ne v2, v9, :cond_e

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v6, v5

    .line 24
    aget-object v6, v1, v6

    aput-object v6, v1, v3

    move v3, v4

    goto :goto_8

    :cond_e
    move v9, v6

    :goto_9
    if-ge v9, v2, :cond_10

    if-eq v9, v6, :cond_f

    const/4 v10, 0x1

    goto :goto_a

    :cond_f
    const/4 v10, 0x0

    :goto_a
    add-int v11, v5, v9

    .line 25
    aget-object v12, v1, v11

    invoke-direct {v0, v12, v10}, Lcom/google/re2j/i;->I(Lcom/google/re2j/l;Z)Lcom/google/re2j/l;

    move-result-object v10

    aput-object v10, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_10
    add-int/2addr v6, v5

    add-int v9, v5, v2

    .line 26
    invoke-static {v1, v6, v9}, Lcom/google/re2j/i;->M([Lcom/google/re2j/l;II)[Lcom/google/re2j/l;

    move-result-object v6

    sget-object v9, Lcom/google/re2j/l$b;->s:Lcom/google/re2j/l$b;

    invoke-direct {v0, v6, v9}, Lcom/google/re2j/i;->c([Lcom/google/re2j/l;Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v6

    .line 27
    sget-object v9, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    invoke-direct {v0, v9}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Lcom/google/re2j/l;

    aput-object v4, v11, v5

    const/4 v4, 0x1

    aput-object v6, v11, v4

    .line 28
    iput-object v11, v9, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    add-int/lit8 v6, v3, 0x1

    .line 29
    aput-object v9, v1, v3

    move v3, v6

    :goto_b
    move v6, v2

    :goto_c
    add-int/lit8 v2, v2, 0x1

    move-object v4, v8

    goto/16 :goto_7

    :cond_11
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_d
    if-gt v2, v3, :cond_1a

    if-ge v2, v3, :cond_12

    add-int v7, v5, v2

    .line 30
    aget-object v7, v1, v7

    invoke-static {v7}, Lcom/google/re2j/i;->g(Lcom/google/re2j/l;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto/16 :goto_12

    :cond_12
    if-ne v2, v6, :cond_13

    goto :goto_11

    :cond_13
    add-int/lit8 v7, v6, 0x1

    if-ne v2, v7, :cond_14

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v6, v5

    .line 31
    aget-object v6, v1, v6

    aput-object v6, v1, v4

    :goto_e
    move v4, v7

    goto :goto_11

    :cond_14
    move v9, v6

    move v8, v7

    :goto_f
    if-ge v8, v2, :cond_17

    add-int v10, v5, v9

    .line 32
    aget-object v10, v1, v10

    add-int v11, v5, v8

    aget-object v11, v1, v11

    .line 33
    iget-object v12, v10, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    iget-object v13, v11, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-lt v12, v13, :cond_15

    iget-object v12, v10, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    iget-object v13, v11, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    if-ne v12, v13, :cond_16

    iget-object v10, v10, Lcom/google/re2j/l;->d:[I

    array-length v10, v10

    iget-object v11, v11, Lcom/google/re2j/l;->d:[I

    array-length v11, v11

    if-ge v10, v11, :cond_16

    :cond_15
    move v9, v8

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_17
    add-int/2addr v6, v5

    .line 34
    aget-object v8, v1, v6

    add-int/2addr v9, v5

    .line 35
    aget-object v10, v1, v9

    aput-object v10, v1, v6

    .line 36
    aput-object v8, v1, v9

    :goto_10
    if-ge v7, v2, :cond_18

    .line 37
    aget-object v8, v1, v6

    add-int v9, v5, v7

    aget-object v10, v1, v9

    invoke-static {v8, v10}, Lcom/google/re2j/i;->n(Lcom/google/re2j/l;Lcom/google/re2j/l;)V

    .line 38
    aget-object v8, v1, v9

    invoke-direct {v0, v8}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 39
    :cond_18
    aget-object v7, v1, v6

    invoke-direct {v0, v7}, Lcom/google/re2j/i;->b(Lcom/google/re2j/l;)V

    add-int/lit8 v7, v4, 0x1

    .line 40
    aget-object v6, v1, v6

    aput-object v6, v1, v4

    goto :goto_e

    :goto_11
    if-ge v2, v3, :cond_19

    add-int/lit8 v6, v4, 0x1

    add-int v7, v5, v2

    .line 41
    aget-object v7, v1, v7

    aput-object v7, v1, v4

    move v4, v6

    :cond_19
    add-int/lit8 v6, v2, 0x1

    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v2, v4, :cond_1c

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_1b

    add-int v7, v5, v2

    .line 42
    aget-object v8, v1, v7

    iget-object v8, v8, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v9, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    if-ne v8, v9, :cond_1b

    add-int/lit8 v7, v7, 0x1

    aget-object v7, v1, v7

    iget-object v7, v7, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    if-ne v7, v9, :cond_1b

    goto :goto_14

    :cond_1b
    add-int/lit8 v7, v3, 0x1

    add-int/2addr v2, v5

    .line 43
    aget-object v2, v1, v2

    aput-object v2, v1, v3

    move v3, v7

    :goto_14
    move v2, v6

    goto :goto_13

    .line 44
    :cond_1c
    invoke-static {v1, v5, v3}, Lcom/google/re2j/i;->M([Lcom/google/re2j/l;II)[Lcom/google/re2j/l;

    move-result-object v1

    return-object v1
.end method

.method private static g(Lcom/google/re2j/l;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/re2j/l;->d:[I

    array-length p0, p0

    if-eq p0, v2, :cond_2

    :cond_0
    sget-object p0, Lcom/google/re2j/l$b;->d:Lcom/google/re2j/l$b;

    if-eq v0, p0, :cond_2

    sget-object p0, Lcom/google/re2j/l$b;->e:Lcom/google/re2j/l$b;

    if-eq v0, p0, :cond_2

    sget-object p0, Lcom/google/re2j/l$b;->f:Lcom/google/re2j/l$b;

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private static h(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    .line 4
    invoke-static {v2}, Lcom/google/re2j/p;->d(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static i(Lcom/google/re2j/l;)Lcom/google/re2j/l;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    sget-object v3, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v3, v0

    if-lez v3, :cond_1

    const/4 p0, 0x0

    .line 3
    aget-object p0, v0, p0

    .line 4
    iget-object v0, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    return-object p0
.end method

.method private j(I)V
    .locals 1

    iget v0, p0, Lcom/google/re2j/i;->b:I

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/i;->p(II)Lcom/google/re2j/l;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    return-void
.end method

.method private static k(Ljava/lang/String;I)Lcom/google/re2j/l;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/re2j/l;

    sget-object v1, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    invoke-direct {v0, v1}, Lcom/google/re2j/l;-><init>(Lcom/google/re2j/l$b;)V

    .line 2
    iput p1, v0, Lcom/google/re2j/l;->b:I

    .line 3
    invoke-static {p0}, Lcom/google/re2j/p;->f(Ljava/lang/String;)[I

    move-result-object p0

    iput-object p0, v0, Lcom/google/re2j/l;->d:[I

    return-object v0
.end method

.method private static l(Lcom/google/re2j/l;I)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/re2j/i$a;->a:[I

    iget-object v1, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const/16 p0, 0xa

    if-eq p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/re2j/l;->d:[I

    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 3
    aget v4, v3, v0

    if-gt v4, p1, :cond_4

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_5
    return v1

    .line 4
    :cond_6
    iget-object p0, p0, Lcom/google/re2j/l;->d:[I

    array-length v0, p0

    if-ne v0, v2, :cond_7

    aget p0, p0, v1

    if-ne p0, p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method private m(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/l;

    .line 3
    iget-object v4, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    sub-int/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/l;

    .line 4
    iget-object v1, v3, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v4, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    if-ne v1, v4, :cond_3

    iget-object v1, v0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    if-ne v1, v4, :cond_3

    iget v1, v3, Lcom/google/re2j/l;->b:I

    const/4 v4, 0x1

    and-int/2addr v1, v4

    iget v5, v0, Lcom/google/re2j/l;->b:I

    and-int/2addr v5, v4

    if-eq v1, v5, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/google/re2j/l;->d:[I

    iget-object v5, v3, Lcom/google/re2j/l;->d:[I

    invoke-static {v1, v5}, Lcom/google/re2j/i;->e([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/google/re2j/l;->d:[I

    if-ltz p1, :cond_2

    new-array v0, v4, [I

    aput p1, v0, v2

    .line 6
    iput-object v0, v3, Lcom/google/re2j/l;->d:[I

    .line 7
    iput p2, v3, Lcom/google/re2j/l;->b:I

    return v4

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/google/re2j/i;->F()Lcom/google/re2j/l;

    .line 9
    invoke-direct {p0, v3}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    :cond_3
    :goto_0
    return v2
.end method

.method private static n(Lcom/google/re2j/l;Lcom/google/re2j/l;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/re2j/i$a;->a:[I

    iget-object v1, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 2
    invoke-static {p1, v0}, Lcom/google/re2j/i;->l(Lcom/google/re2j/l;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3
    sget-object p1, Lcom/google/re2j/l$b;->f:Lcom/google/re2j/l$b;

    iput-object p1, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    if-ne v0, v1, :cond_2

    .line 5
    new-instance v0, Lcom/google/re2j/a;

    iget-object v1, p0, Lcom/google/re2j/l;->d:[I

    invoke-direct {v0, v1}, Lcom/google/re2j/a;-><init>([I)V

    iget-object v1, p1, Lcom/google/re2j/l;->d:[I

    aget v1, v1, v2

    iget p1, p1, Lcom/google/re2j/l;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/google/re2j/a;->f(II)Lcom/google/re2j/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/re2j/a;->r()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/re2j/l;->d:[I

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/google/re2j/a;

    iget-object v1, p0, Lcom/google/re2j/l;->d:[I

    invoke-direct {v0, v1}, Lcom/google/re2j/a;-><init>([I)V

    iget-object p1, p1, Lcom/google/re2j/l;->d:[I

    invoke-virtual {v0, p1}, Lcom/google/re2j/a;->a([I)Lcom/google/re2j/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/re2j/a;->r()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/re2j/l;->d:[I

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p1, Lcom/google/re2j/l;->d:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/google/re2j/l;->d:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcom/google/re2j/l;->b:I

    iget v1, p0, Lcom/google/re2j/l;->b:I

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    sget-object v0, Lcom/google/re2j/l$b;->d:Lcom/google/re2j/l$b;

    iput-object v0, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    .line 9
    new-instance v0, Lcom/google/re2j/a;

    invoke-direct {v0}, Lcom/google/re2j/a;-><init>()V

    iget-object v1, p0, Lcom/google/re2j/l;->d:[I

    aget v1, v1, v2

    iget v3, p0, Lcom/google/re2j/l;->b:I

    .line 10
    invoke-virtual {v0, v1, v3}, Lcom/google/re2j/a;->f(II)Lcom/google/re2j/a;

    move-result-object v0

    iget-object v1, p1, Lcom/google/re2j/l;->d:[I

    aget v1, v1, v2

    iget p1, p1, Lcom/google/re2j/l;->b:I

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/google/re2j/a;->f(II)Lcom/google/re2j/a;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/re2j/a;->r()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/re2j/l;->d:[I

    :cond_5
    :goto_0
    return-void
.end method

.method private static o(I)I
    .locals 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const v0, 0x1044f

    if-le p0, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/google/re2j/n;->d(I)I

    move-result v0

    move v1, p0

    :goto_0
    if-eq v0, p0, :cond_2

    if-le v1, v0, :cond_1

    move v1, v0

    :cond_1
    invoke-static {v0}, Lcom/google/re2j/n;->d(I)I

    move-result v0

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return p0
.end method

.method private p(II)Lcom/google/re2j/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    invoke-direct {p0, v0}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v0

    .line 2
    iput p2, v0, Lcom/google/re2j/l;->b:I

    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/re2j/i;->o(I)I

    move-result p1

    :cond_0
    new-array p2, v1, [I

    const/4 v1, 0x0

    aput p1, p2, v1

    .line 4
    iput-object p2, v0, Lcom/google/re2j/l;->d:[I

    return-object v0
.end method

.method private q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/re2j/i;->d:Lcom/google/re2j/l;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 3
    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/re2j/i;->d:Lcom/google/re2j/l;

    .line 4
    invoke-virtual {v0}, Lcom/google/re2j/l;->d()V

    .line 5
    iput-object p1, v0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/re2j/l;

    invoke-direct {v0, p1}, Lcom/google/re2j/l;-><init>(Lcom/google/re2j/l$b;)V

    :goto_0
    return-object v0
.end method

.method private r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/google/re2j/i;->b:I

    iput v0, p1, Lcom/google/re2j/l;->b:I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    move-result-object p1

    return-object p1
.end method

.method static s(Ljava/lang/String;I)Lcom/google/re2j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    new-instance v0, Lcom/google/re2j/i;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/i;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0}, Lcom/google/re2j/i;->x()Lcom/google/re2j/l;

    move-result-object p0

    return-object p0
.end method

.method private t(Lcom/google/re2j/i$d;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->g()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 3
    sget-object v2, Lcom/google/re2j/l$b;->d:Lcom/google/re2j/l$b;

    invoke-direct {p0, v2}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v2

    .line 4
    iget v3, p0, Lcom/google/re2j/i;->b:I

    iput v3, v2, Lcom/google/re2j/l;->b:I

    .line 5
    new-instance v3, Lcom/google/re2j/a;

    invoke-direct {v3}, Lcom/google/re2j/a;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->d()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    const/16 v4, 0x5e

    invoke-virtual {p1, v4}, Lcom/google/re2j/i$d;->b(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 8
    iget v4, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    const/16 v4, 0xa

    .line 9
    invoke-virtual {v3, v4, v4}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    const/4 v6, 0x1

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->d()Z

    move-result v7

    const/16 v8, 0x5d

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/google/re2j/i$d;->e()I

    move-result v7

    if-ne v7, v8, :cond_4

    if-eqz v6, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 12
    invoke-virtual {v3}, Lcom/google/re2j/a;->m()Lcom/google/re2j/a;

    if-gez v4, :cond_3

    .line 13
    invoke-virtual {v3}, Lcom/google/re2j/a;->p()Lcom/google/re2j/a;

    .line 14
    :cond_3
    invoke-virtual {v3}, Lcom/google/re2j/a;->r()[I

    move-result-object p1

    iput-object p1, v2, Lcom/google/re2j/l;->d:[I

    .line 15
    invoke-direct {p0, v2}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    return-void

    .line 16
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->d()Z

    move-result v7

    const-string v9, "invalid character class range"

    const/16 v10, 0x2d

    if-eqz v7, :cond_6

    invoke-virtual {p1, v10}, Lcom/google/re2j/i$d;->b(C)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_6

    if-nez v6, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "-]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/re2j/i$d;->i(I)V

    .line 20
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v9, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    const/4 v6, 0x0

    .line 21
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->g()I

    move-result v7

    const-string v11, "[:"

    .line 22
    invoke-virtual {p1, v11}, Lcom/google/re2j/i$d;->c(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 23
    invoke-direct {p0, p1, v3}, Lcom/google/re2j/i;->y(Lcom/google/re2j/i$d;Lcom/google/re2j/a;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {p1, v7}, Lcom/google/re2j/i$d;->i(I)V

    .line 25
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/google/re2j/i;->D(Lcom/google/re2j/i$d;Lcom/google/re2j/a;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_1

    .line 26
    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/google/re2j/i;->z(Lcom/google/re2j/i$d;Lcom/google/re2j/a;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto/16 :goto_1

    .line 27
    :cond_a
    invoke-virtual {p1, v7}, Lcom/google/re2j/i$d;->i(I)V

    .line 28
    invoke-static {p1, v0}, Lcom/google/re2j/i;->u(Lcom/google/re2j/i$d;I)I

    move-result v11

    .line 29
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->d()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {p1, v10}, Lcom/google/re2j/i$d;->b(C)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 30
    invoke-virtual {p1, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 31
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->d()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p1, v8}, Lcom/google/re2j/i$d;->b(C)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 32
    invoke-virtual {p1, v5}, Lcom/google/re2j/i$d;->j(I)V

    goto :goto_4

    .line 33
    :cond_b
    invoke-static {p1, v0}, Lcom/google/re2j/i;->u(Lcom/google/re2j/i$d;I)I

    move-result v8

    if-lt v8, v11, :cond_c

    goto :goto_5

    .line 34
    :cond_c
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1, v7}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v9, p1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_4
    move v8, v11

    .line 35
    :goto_5
    iget v7, p0, Lcom/google/re2j/i;->b:I

    and-int/2addr v7, v1

    if-nez v7, :cond_e

    .line 36
    invoke-virtual {v3, v11, v8}, Lcom/google/re2j/a;->i(II)Lcom/google/re2j/a;

    goto/16 :goto_1

    .line 37
    :cond_e
    invoke-virtual {v3, v11, v8}, Lcom/google/re2j/a;->d(II)Lcom/google/re2j/a;

    goto/16 :goto_1
.end method

.method private static u(Lcom/google/re2j/i$d;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x5c

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/re2j/i$d;->b(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/re2j/i;->v(Lcom/google/re2j/i$d;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->f()I

    move-result p0

    return p0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p0, p1}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "missing closing ]"

    invoke-direct {v0, p1, p0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static v(Lcom/google/re2j/i$d;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->g()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/re2j/i$d;->j(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->f()I

    move-result v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_b

    const/16 v3, 0x66

    if-eq v2, v3, :cond_a

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_9

    const/16 v3, 0x72

    if-eq v2, v3, :cond_8

    const/16 v3, 0x74

    if-eq v2, v3, :cond_7

    const/16 v3, 0x76

    if-eq v2, v3, :cond_6

    const/16 v3, 0x78

    if-eq v2, v3, :cond_2

    const/16 v3, 0x37

    const/16 v4, 0x30

    packed-switch v2, :pswitch_data_0

    .line 5
    invoke-static {v2}, Lcom/google/re2j/p;->d(I)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/google/re2j/i$d;->e()I

    move-result v5

    if-lt v5, v4, :cond_5

    invoke-virtual {p0}, Lcom/google/re2j/i$d;->e()I

    move-result v5

    if-gt v5, v3, :cond_5

    :pswitch_1
    sub-int/2addr v2, v4

    const/4 v0, 0x1

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/re2j/i$d;->e()I

    move-result v5

    if-lt v5, v4, :cond_1

    invoke-virtual {p0}, Lcom/google/re2j/i$d;->e()I

    move-result v5

    if-le v5, v3, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 8
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->e()I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/re2j/i$d;->j(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->f()I

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    :goto_2
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->f()I

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_5

    return v1

    .line 14
    :cond_3
    invoke-static {v3}, Lcom/google/re2j/p;->h(I)I

    move-result v3

    if-ltz v3, :cond_5

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v3

    const v3, 0x10ffff

    if-gt v1, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 15
    :cond_4
    invoke-static {v1}, Lcom/google/re2j/p;->h(I)I

    move-result v1

    .line 16
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->f()I

    move-result v2

    .line 18
    invoke-static {v2}, Lcom/google/re2j/p;->h(I)I

    move-result v2

    if-ltz v1, :cond_5

    if-ltz v2, :cond_5

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v2

    return v1

    .line 19
    :cond_5
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p0, v0}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "invalid escape sequence"

    invoke-direct {v1, v0, p0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 p0, 0xb

    return p0

    :cond_7
    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xd

    return p0

    :cond_9
    const/16 p0, 0xa

    return p0

    :cond_a
    const/16 p0, 0xc

    return p0

    :cond_b
    const/4 p0, 0x7

    return p0

    .line 20
    :cond_c
    new-instance p0, Lcom/google/re2j/PatternSyntaxException;

    const-string v0, "trailing backslash at end of expression"

    invoke-direct {p0, v0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static w(Lcom/google/re2j/i$d;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->g()I

    move-result v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/re2j/i$d;->d()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x30

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/re2j/i$d;->e()I

    move-result v1

    if-lt v1, v3, :cond_0

    const/16 v4, 0x39

    if-gt v1, v4, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/re2j/i$d;->j(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    const/4 p0, -0x2

    return p0

    :cond_2
    const/16 v0, 0xa

    .line 7
    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private x()Lcom/google/re2j/l;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/re2j/i;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/re2j/i;->k(Ljava/lang/String;I)Lcom/google/re2j/l;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/re2j/i$d;

    iget-object v1, p0, Lcom/google/re2j/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/re2j/i$d;-><init>(Ljava/lang/String;)V

    const/4 v8, -0x1

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->d()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    .line 5
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->e()I

    move-result v1

    const/16 v4, 0x24

    if-eq v1, v4, :cond_17

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_15

    const/16 v4, 0x3f

    if-eq v1, v4, :cond_11

    const/16 v5, 0x5e

    if-eq v1, v5, :cond_f

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_e

    const/16 v5, 0x5c

    if-eq v1, v5, :cond_5

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 6
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->f()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->j(I)V

    goto/16 :goto_9

    .line 7
    :pswitch_0
    invoke-direct {p0}, Lcom/google/re2j/i;->C()V

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->j(I)V

    goto/16 :goto_9

    .line 9
    :pswitch_1
    iget v1, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    const-string v1, "(?"

    invoke-virtual {v0, v1}, Lcom/google/re2j/i$d;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-direct {p0, v0}, Lcom/google/re2j/i;->A(Lcom/google/re2j/i$d;)V

    goto/16 :goto_9

    .line 11
    :cond_1
    sget-object v1, Lcom/google/re2j/l$b;->t:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v1

    iget v2, p0, Lcom/google/re2j/i;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/re2j/i;->e:I

    iput v2, v1, Lcom/google/re2j/l;->g:I

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->j(I)V

    goto/16 :goto_9

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/google/re2j/i;->E()V

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->j(I)V

    goto/16 :goto_9

    .line 15
    :cond_3
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->g()I

    move-result v11

    .line 16
    invoke-static {v0}, Lcom/google/re2j/i;->B(Lcom/google/re2j/i$d;)I

    move-result v1

    if-gez v1, :cond_4

    .line 17
    invoke-virtual {v0, v11}, Lcom/google/re2j/i$d;->i(I)V

    .line 18
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->f()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->j(I)V

    goto/16 :goto_6

    :cond_4
    shr-int/lit8 v9, v1, 0x10

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v10, v1

    .line 19
    sget-object v2, Lcom/google/re2j/l$b;->q:Lcom/google/re2j/l$b;

    move-object v1, p0

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/i;->K(Lcom/google/re2j/l$b;IIILcom/google/re2j/i$d;I)V

    goto/16 :goto_6

    .line 20
    :cond_5
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->g()I

    move-result v1

    .line 21
    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->j(I)V

    .line 22
    iget v3, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/google/re2j/i$d;->d()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 23
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->f()I

    move-result v3

    const/16 v4, 0x51

    if-eq v3, v4, :cond_8

    const/16 v2, 0x62

    if-eq v3, v2, :cond_7

    const/16 v2, 0x7a

    if-eq v3, v2, :cond_6

    packed-switch v3, :pswitch_data_1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/re2j/i$d;->i(I)V

    goto :goto_2

    .line 25
    :pswitch_2
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    const-string v1, "invalid escape sequence"

    const-string v2, "\\C"

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 26
    :pswitch_3
    sget-object v1, Lcom/google/re2j/l$b;->l:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    goto/16 :goto_9

    .line 27
    :pswitch_4
    sget-object v1, Lcom/google/re2j/l$b;->i:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    goto/16 :goto_9

    .line 28
    :cond_6
    sget-object v1, Lcom/google/re2j/l$b;->j:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    goto/16 :goto_9

    .line 29
    :cond_7
    sget-object v1, Lcom/google/re2j/l$b;->k:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    goto/16 :goto_9

    .line 30
    :cond_8
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\E"

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_9

    .line 32
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_9
    invoke-virtual {v0, v1}, Lcom/google/re2j/i$d;->k(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->k(Ljava/lang/String;)V

    .line 35
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/re2j/i;->j(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_a
    :goto_2
    sget-object v2, Lcom/google/re2j/l$b;->d:Lcom/google/re2j/l$b;

    invoke-direct {p0, v2}, Lcom/google/re2j/i;->q(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v2

    .line 38
    iget v3, p0, Lcom/google/re2j/i;->b:I

    iput v3, v2, Lcom/google/re2j/l;->b:I

    const-string v3, "\\p"

    .line 39
    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "\\P"

    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 40
    :cond_b
    new-instance v3, Lcom/google/re2j/a;

    invoke-direct {v3}, Lcom/google/re2j/a;-><init>()V

    .line 41
    invoke-direct {p0, v0, v3}, Lcom/google/re2j/i;->D(Lcom/google/re2j/i$d;Lcom/google/re2j/a;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 42
    invoke-virtual {v3}, Lcom/google/re2j/a;->r()[I

    move-result-object v1

    iput-object v1, v2, Lcom/google/re2j/l;->d:[I

    .line 43
    invoke-direct {p0, v2}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    goto/16 :goto_9

    .line 44
    :cond_c
    new-instance v3, Lcom/google/re2j/a;

    invoke-direct {v3}, Lcom/google/re2j/a;-><init>()V

    .line 45
    invoke-direct {p0, v0, v3}, Lcom/google/re2j/i;->z(Lcom/google/re2j/i$d;Lcom/google/re2j/a;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 46
    invoke-virtual {v3}, Lcom/google/re2j/a;->r()[I

    move-result-object v1

    iput-object v1, v2, Lcom/google/re2j/l;->d:[I

    .line 47
    invoke-direct {p0, v2}, Lcom/google/re2j/i;->H(Lcom/google/re2j/l;)Lcom/google/re2j/l;

    goto/16 :goto_9

    .line 48
    :cond_d
    invoke-virtual {v0, v1}, Lcom/google/re2j/i$d;->i(I)V

    .line 49
    invoke-direct {p0, v2}, Lcom/google/re2j/i;->L(Lcom/google/re2j/l;)V

    .line 50
    invoke-static {v0}, Lcom/google/re2j/i;->v(Lcom/google/re2j/i$d;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->j(I)V

    goto/16 :goto_9

    .line 51
    :cond_e
    invoke-direct {p0, v0}, Lcom/google/re2j/i;->t(Lcom/google/re2j/i$d;)V

    goto/16 :goto_9

    .line 52
    :cond_f
    iget v1, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_10

    .line 53
    sget-object v1, Lcom/google/re2j/l$b;->i:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    goto :goto_3

    .line 54
    :cond_10
    sget-object v1, Lcom/google/re2j/l$b;->g:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    .line 55
    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->j(I)V

    goto :goto_9

    .line 56
    :cond_11
    :pswitch_5
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->g()I

    move-result v11

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0}, Lcom/google/re2j/i$d;->f()I

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_14

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_13

    if-eq v2, v4, :cond_12

    :goto_4
    move-object v2, v1

    goto :goto_5

    .line 58
    :cond_12
    sget-object v1, Lcom/google/re2j/l$b;->p:Lcom/google/re2j/l$b;

    goto :goto_4

    .line 59
    :cond_13
    sget-object v1, Lcom/google/re2j/l$b;->o:Lcom/google/re2j/l$b;

    goto :goto_4

    .line 60
    :cond_14
    sget-object v1, Lcom/google/re2j/l$b;->n:Lcom/google/re2j/l$b;

    goto :goto_4

    :goto_5
    move-object v1, p0

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v0

    .line 61
    invoke-direct/range {v1 .. v7}, Lcom/google/re2j/i;->K(Lcom/google/re2j/l$b;IIILcom/google/re2j/i$d;I)V

    :goto_6
    move v7, v11

    goto/16 :goto_0

    .line 62
    :cond_15
    iget v1, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_16

    .line 63
    sget-object v1, Lcom/google/re2j/l$b;->f:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    goto :goto_7

    .line 64
    :cond_16
    sget-object v1, Lcom/google/re2j/l$b;->e:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    .line 65
    :goto_7
    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->j(I)V

    goto :goto_9

    .line 66
    :cond_17
    iget v1, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_18

    .line 67
    sget-object v1, Lcom/google/re2j/l$b;->j:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    move-result-object v1

    iget v2, v1, Lcom/google/re2j/l;->b:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lcom/google/re2j/l;->b:I

    goto :goto_8

    .line 68
    :cond_18
    sget-object v1, Lcom/google/re2j/l$b;->h:Lcom/google/re2j/l$b;

    invoke-direct {p0, v1}, Lcom/google/re2j/i;->r(Lcom/google/re2j/l$b;)Lcom/google/re2j/l;

    .line 69
    :goto_8
    invoke-virtual {v0, v3}, Lcom/google/re2j/i$d;->j(I)V

    :cond_19
    :goto_9
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 70
    :cond_1a
    invoke-direct {p0}, Lcom/google/re2j/i;->d()Lcom/google/re2j/l;

    .line 71
    invoke-direct {p0}, Lcom/google/re2j/i;->N()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 72
    invoke-direct {p0}, Lcom/google/re2j/i;->F()Lcom/google/re2j/l;

    .line 73
    :cond_1b
    invoke-direct {p0}, Lcom/google/re2j/i;->a()Lcom/google/re2j/l;

    .line 74
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1c

    .line 75
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/l;

    iget-object v1, p0, Lcom/google/re2j/i;->f:Ljava/util/Map;

    iput-object v1, v0, Lcom/google/re2j/l;->i:Ljava/util/Map;

    .line 76
    iget-object v0, p0, Lcom/google/re2j/i;->c:Lcom/google/re2j/i$c;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/l;

    return-object v0

    .line 77
    :cond_1c
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    iget-object v1, p0, Lcom/google/re2j/i;->a:Ljava/lang/String;

    const-string v2, "missing closing )"

    invoke-direct {v0, v2, v1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private y(Lcom/google/re2j/i$d;Lcom/google/re2j/a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":]"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/re2j/i$d;->k(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/google/re2j/b;->u:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/re2j/b;

    if-eqz p1, :cond_2

    .line 6
    iget v0, p0, Lcom/google/re2j/i;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p2, p1, v2}, Lcom/google/re2j/a;->e(Lcom/google/re2j/b;Z)Lcom/google/re2j/a;

    return v1

    .line 7
    :cond_2
    new-instance p1, Lcom/google/re2j/PatternSyntaxException;

    const-string p2, "invalid character class range"

    invoke-direct {p1, p2, v0}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private z(Lcom/google/re2j/i$d;Lcom/google/re2j/a;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->g()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/re2j/i;->b:I

    and-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->f()I

    move-result v1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/re2j/i$d;->f()I

    .line 7
    sget-object v1, Lcom/google/re2j/b;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/re2j/i$d;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/re2j/b;

    if-nez p1, :cond_1

    return v2

    .line 8
    :cond_1
    iget v0, p0, Lcom/google/re2j/i;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p2, p1, v2}, Lcom/google/re2j/a;->e(Lcom/google/re2j/b;Z)Lcom/google/re2j/a;

    return v1

    :cond_3
    :goto_0
    return v2
.end method
