.class public Lsi/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsi/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsi/h;

    invoke-direct {v0}, Lsi/h;-><init>()V

    sput-object v0, Lsi/h;->a:Lsi/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([I)Ljava/util/BitSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static e(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public b(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lsi/g;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static {v3}, Lsi/h;->e(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Lsi/g;->d(I)V

    return-void
.end method

.method public c(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/lang/StringBuilder;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lsi/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Lsi/g;->c()I

    move-result v2

    .line 5
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    add-int/2addr v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v1, v2, :cond_7

    .line 6
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eqz v6, :cond_3

    if-eq v7, v4, :cond_2

    if-eq v7, v8, :cond_2

    .line 7
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    if-ne v7, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-ne v7, v8, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/16 v8, 0xd

    if-eq v7, v8, :cond_6

    const/16 v8, 0xa

    if-eq v7, v8, :cond_6

    .line 9
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_7
    :goto_2
    invoke-virtual {p2, v0}, Lsi/g;->d(I)V

    return-void
.end method

.method public d(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lsi/g;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static {v3}, Lsi/h;->e(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Lsi/g;->d(I)V

    return-void
.end method

.method public f(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-virtual {p2}, Lsi/g;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {v3}, Lsi/h;->e(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lsi/h;->h(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/16 v2, 0x20

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lsi/h;->b(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 10
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-virtual {p2}, Lsi/g;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {v3}, Lsi/h;->e(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lsi/h;->h(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x22

    const/16 v5, 0x20

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lsi/h;->c(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v0}, Lsi/h;->d(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lsi/g;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    .line 5
    invoke-static {v3}, Lsi/h;->e(C)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {p2, v0}, Lsi/g;->d(I)V

    return-void
.end method
