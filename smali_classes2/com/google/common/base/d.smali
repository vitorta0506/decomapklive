.class public abstract Lcom/google/common/base/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/d$d;,
        Lcom/google/common/base/d$f;,
        Lcom/google/common/base/d$e;,
        Lcom/google/common/base/d$h;,
        Lcom/google/common/base/d$b;,
        Lcom/google/common/base/d$k;,
        Lcom/google/common/base/d$j;,
        Lcom/google/common/base/d$a;,
        Lcom/google/common/base/d$i;,
        Lcom/google/common/base/d$g;,
        Lcom/google/common/base/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(C)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/d;->o(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$a;->b:Lcom/google/common/base/d$a;

    return-object v0
.end method

.method public static d()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$b;->b:Lcom/google/common/base/d$b;

    return-object v0
.end method

.method public static e(CC)Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/d$d;-><init>(CC)V

    return-object v0
.end method

.method public static h(C)Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$e;

    invoke-direct {v0, p0}, Lcom/google/common/base/d$e;-><init>(C)V

    return-object v0
.end method

.method public static i(C)Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$f;

    invoke-direct {v0, p0}, Lcom/google/common/base/d$f;-><init>(C)V

    return-object v0
.end method

.method public static n()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$j;->b:Lcom/google/common/base/d$j;

    return-object v0
.end method

.method private static o(C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    rsub-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, p0, 0xf

    const-string v5, "0123456789ABCDEF"

    .line 2
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v2

    int-to-char p0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public static p()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$k;->c:Lcom/google/common/base/d$k;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Character;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->j(C)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/d;->g(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/o;->w(II)I

    :goto_0
    if-ge p2, v0, :cond_1

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/d;->j(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract j(C)Z
.end method

.method public k(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->j(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public l(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->f(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m()Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$h;

    invoke-direct {v0, p0}, Lcom/google/common/base/d$h;-><init>(Lcom/google/common/base/d;)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/base/d;->m()Lcom/google/common/base/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/p;->a(Lcom/google/common/base/q;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
