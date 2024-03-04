.class Lcom/google/re2j/i$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/re2j/i$d;->b:I

    .line 3
    iput-object p1, p0, Lcom/google/re2j/i$d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/re2j/i$d;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/i$d;->b:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(C)Z
    .locals 2

    iget-object v0, p0, Lcom/google/re2j/i$d;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/i$d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method d()Z
    .locals 2

    iget v0, p0, Lcom/google/re2j/i$d;->b:I

    iget-object v1, p0, Lcom/google/re2j/i$d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method e()I
    .locals 2

    iget-object v0, p0, Lcom/google/re2j/i$d;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/i$d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/re2j/i$d;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/i$d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/re2j/i$d;->b:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/re2j/i$d;->b:I

    return v0
.end method

.method g()I
    .locals 1

    iget v0, p0, Lcom/google/re2j/i$d;->b:I

    return v0
.end method

.method h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/re2j/i$d;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/i$d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i(I)V
    .locals 0

    iput p1, p0, Lcom/google/re2j/i$d;->b:I

    return-void
.end method

.method j(I)V
    .locals 1

    iget v0, p0, Lcom/google/re2j/i$d;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/re2j/i$d;->b:I

    return-void
.end method

.method k(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/re2j/i$d;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/re2j/i$d;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/re2j/i$d;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
