.class Lcom/google/re2j/g$a;
.super Lcom/google/re2j/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:I

.field final c:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/re2j/g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/re2j/g$a;->a:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lcom/google/re2j/g$a;->b:I

    .line 4
    iput p3, p0, Lcom/google/re2j/g$a;->c:I

    return-void
.end method

.method private g(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/re2j/g$a;->h(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private h(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lt p3, v0, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    .line 3
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return p3

    .line 4
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    if-gt p3, v2, :cond_7

    .line 6
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v0, :cond_4

    :goto_1
    add-int/2addr p3, v4

    if-gt p3, v2, :cond_4

    .line 7
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_4

    goto :goto_1

    :cond_4
    if-gt p3, v2, :cond_6

    add-int/lit8 v3, p3, 0x1

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v4

    :goto_2
    if-ge v3, v5, :cond_5

    .line 9
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-ne v3, v5, :cond_6

    return p3

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method


# virtual methods
.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method b(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/re2j/g$a;->b:I

    add-int/2addr p1, v0

    const/4 v0, -0x1

    if-lez p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/re2j/g$a;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/re2j/g$a;->a:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/re2j/g$a;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v0, p0, Lcom/google/re2j/g$a;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4
    :cond_1
    invoke-static {v1, v0}, Lcom/google/re2j/p;->a(II)I

    move-result p1

    return p1
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/google/re2j/g$a;->c:I

    return v0
.end method

.method e(Lcom/google/re2j/k;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/re2j/g$a;->b:I

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/google/re2j/g$a;->a:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/google/re2j/k;->f:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/re2j/g$a;->g(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method f(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/re2j/g$a;->b:I

    add-int/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/google/re2j/g$a;->c:I

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/re2j/g$a;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    shl-int/lit8 v0, p1, 0x3

    .line 4
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x8

    return p1
.end method
