.class public Lsi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsi/f;


# static fields
.field public static final b:Lsi/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lsi/c;

.field private static final d:Ljava/util/BitSet;

.field private static final e:Ljava/util/BitSet;


# instance fields
.field private final a:Lsi/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsi/c;

    invoke-direct {v0}, Lsi/c;-><init>()V

    sput-object v0, Lsi/c;->b:Lsi/c;

    .line 2
    new-instance v0, Lsi/c;

    invoke-direct {v0}, Lsi/c;-><init>()V

    sput-object v0, Lsi/c;->c:Lsi/c;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lsi/h;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lsi/c;->d:Ljava/util/BitSet;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lsi/h;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lsi/c;->e:Ljava/util/BitSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d
        0x3b
        0x2c
    .end array-data

    :array_1
    .array-data 4
        0x3b
        0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lsi/h;->a:Lsi/h;

    iput-object v0, p0, Lsi/c;->a:Lsi/h;

    return-void
.end method

.method public static d(Ljava/lang/String;Lsi/f;)[Lorg/apache/http/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 1
    invoke-static {p0, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lsi/g;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lsi/g;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lsi/c;->c:Lsi/c;

    :goto_0
    invoke-interface {p1, v0, v1}, Lsi/f;->a(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)[Lorg/apache/http/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)[Lorg/apache/http/d;
    .locals 3

    const-string v0, "Char array buffer"

    .line 1
    invoke-static {p1, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 2
    invoke-static {p2, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lsi/g;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, p1, p2}, Lsi/c;->e(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)Lorg/apache/http/d;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lorg/apache/http/d;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/http/d;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/http/d;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/http/d;

    return-object p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/k;)Lorg/apache/http/d;
    .locals 1

    new-instance v0, Lsi/a;

    invoke-direct {v0, p1, p2, p3}, Lsi/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/k;)V

    return-object v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/k;
    .locals 1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)Lorg/apache/http/d;
    .locals 3

    const-string v0, "Char array buffer"

    .line 1
    invoke-static {p1, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 2
    invoke-static {p2, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, p2}, Lsi/c;->f(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)Lorg/apache/http/k;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lsi/g;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Lsi/c;->g(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)[Lorg/apache/http/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-interface {v0}, Lorg/apache/http/k;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lorg/apache/http/k;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lsi/c;->b(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/k;)Lorg/apache/http/d;

    move-result-object p1

    return-object p1
.end method

.method public f(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)Lorg/apache/http/k;
    .locals 4

    const-string v0, "Char array buffer"

    .line 1
    invoke-static {p1, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 2
    invoke-static {p2, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lsi/c;->a:Lsi/h;

    sget-object v1, Lsi/c;->d:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2, v1}, Lsi/h;->f(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lsi/g;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 7
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lsi/g;->d(I)V

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_1

    .line 8
    invoke-virtual {p0, v0, v2}, Lsi/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/k;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    iget-object v1, p0, Lsi/c;->a:Lsi/h;

    sget-object v2, Lsi/c;->e:Ljava/util/BitSet;

    invoke-virtual {v1, p1, p2, v2}, Lsi/h;->g(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lsi/g;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lsi/g;->d(I)V

    .line 12
    :cond_2
    invoke-virtual {p0, v0, p1}, Lsi/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/k;

    move-result-object p1

    return-object p1
.end method

.method public g(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)[Lorg/apache/http/k;
    .locals 3

    const-string v0, "Char array buffer"

    .line 1
    invoke-static {p1, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 2
    invoke-static {p2, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lsi/c;->a:Lsi/h;

    invoke-virtual {v0, p1, p2}, Lsi/h;->h(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p2}, Lsi/g;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lsi/c;->f(Lorg/apache/http/util/CharArrayBuffer;Lsi/g;)Lorg/apache/http/k;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p2}, Lsi/g;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/http/k;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/http/k;

    return-object p1
.end method
