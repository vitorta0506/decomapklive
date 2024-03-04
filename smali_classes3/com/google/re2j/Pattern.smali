.class public final Lcom/google/re2j/Pattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CASE_INSENSITIVE:I = 0x1

.field public static final DISABLE_UNICODE_GROUPS:I = 0x8

.field public static final DOTALL:I = 0x2

.field public static final LONGEST_MATCH:I = 0x10

.field public static final MULTILINE:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private final flags:I

.field private final pattern:Ljava/lang/String;

.field private final transient re2:Lcom/google/re2j/k;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/google/re2j/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pattern is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "re2 is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/google/re2j/Pattern;->flags:I

    .line 6
    iput-object p3, p0, Lcom/google/re2j/Pattern;->re2:Lcom/google/re2j/k;

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p0, v0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/re2j/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static compile(Ljava/lang/String;I)Lcom/google/re2j/Pattern;
    .locals 3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?i)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?m)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit8 v1, p1, -0x20

    if-nez v1, :cond_3

    .line 5
    invoke-static {v0, p0, p1}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/re2j/Pattern;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Flags should only be a combination of MULTILINE, DOTALL, CASE_INSENSITIVE, DISABLE_UNICODE_GROUPS, LONGEST_MATCH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static compile(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/re2j/Pattern;
    .locals 3

    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0xd4

    .line 7
    :goto_0
    new-instance v1, Lcom/google/re2j/Pattern;

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 8
    :goto_1
    invoke-static {p0, v0, v2}, Lcom/google/re2j/k;->a(Ljava/lang/String;IZ)Lcom/google/re2j/k;

    move-result-object p0

    invoke-direct {v1, p1, p2, p0}, Lcom/google/re2j/Pattern;-><init>(Ljava/lang/String;ILcom/google/re2j/k;)V

    return-object v1
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/re2j/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/re2j/h;->m()Z

    move-result p0

    return p0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/re2j/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private split(Lcom/google/re2j/h;I)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/re2j/h;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/re2j/h;->r()I

    move-result v4

    if-ge v1, v4, :cond_1

    :cond_0
    move v3, v2

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/re2j/h;->e()I

    move-result v1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/re2j/h;->k()I

    move-result v4

    const/4 v5, 0x1

    if-lt v1, v4, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    add-int/lit8 v3, v2, 0x1

    :cond_4
    if-lez p2, :cond_5

    if-le v3, p2, :cond_5

    goto :goto_1

    :cond_5
    move p2, v3

    const/4 v5, 0x0

    .line 7
    :goto_1
    new-array v1, p2, [Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/google/re2j/h;->p()Lcom/google/re2j/h;

    const/4 v2, 0x0

    .line 9
    :goto_2
    invoke-virtual {p1}, Lcom/google/re2j/h;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    sub-int v3, p2, v5

    if-ge v0, v3, :cond_6

    add-int/lit8 v3, v0, 0x1

    .line 10
    invoke-virtual {p1}, Lcom/google/re2j/h;->r()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Lcom/google/re2j/h;->t(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 11
    invoke-virtual {p1}, Lcom/google/re2j/h;->e()I

    move-result v2

    move v0, v3

    goto :goto_2

    :cond_6
    if-ge v0, p2, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/google/re2j/h;->k()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/google/re2j/h;->t(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    :cond_7
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/google/re2j/Pattern;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/re2j/Pattern;

    .line 3
    iget v2, p0, Lcom/google/re2j/Pattern;->flags:I

    iget v3, p1, Lcom/google/re2j/Pattern;->flags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public flags()I
    .locals 1

    iget v0, p0, Lcom/google/re2j/Pattern;->flags:I

    return v0
.end method

.method public groupCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/Pattern;->re2:Lcom/google/re2j/k;

    invoke-virtual {v0}, Lcom/google/re2j/k;->e()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/google/re2j/Pattern;->flags:I

    add-int/2addr v0, v1

    return v0
.end method

.method public matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/h;
    .locals 1

    new-instance v0, Lcom/google/re2j/h;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/h;-><init>(Lcom/google/re2j/Pattern;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/re2j/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/re2j/h;->m()Z

    move-result p1

    return p1
.end method

.method public pattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method re2()Lcom/google/re2j/k;
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/Pattern;->re2:Lcom/google/re2j/k;

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/Pattern;->flags:I

    invoke-static {v0, v1}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;I)Lcom/google/re2j/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/Pattern;->re2:Lcom/google/re2j/k;

    invoke-virtual {v0}, Lcom/google/re2j/k;->h()V

    return-void
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/re2j/Pattern;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/re2j/h;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/h;-><init>(Lcom/google/re2j/Pattern;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, p2}, Lcom/google/re2j/Pattern;->split(Lcom/google/re2j/h;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
