.class public final Lcom/google/api/client/http/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "[\\w!#$&.+\\-\\^_]+|[*]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/l;->e:Ljava/util/regex/Pattern;

    const-string v0, "[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/l;->f:Ljava/util/regex/Pattern;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\s*("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[^\\s/=;\"]+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")/("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\\s*("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";.*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    .line 4
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/l;->g:Ljava/util/regex/Pattern;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"([^\"]*)\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[^\\s;\"]*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\s*;\\s*("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")=("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/l;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application"

    .line 2
    iput-object v0, p0, Lcom/google/api/client/http/l;->a:Ljava/lang/String;

    const-string v0, "octet-stream"

    .line 3
    iput-object v0, p0, Lcom/google/api/client/http/l;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/l;->c:Ljava/util/SortedMap;

    .line 5
    invoke-direct {p0, p1}, Lcom/google/api/client/http/l;->c(Ljava/lang/String;)Lcom/google/api/client/http/l;

    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/google/api/client/http/l;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/api/client/http/l;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Type must be in the \'maintype/subtype; parameter=value\' format"

    .line 3
    invoke-static {v0, v1}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/l;->n(Ljava/lang/String;)Lcom/google/api/client/http/l;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/http/l;->m(Ljava/lang/String;)Lcom/google/api/client/http/l;

    const/4 v2, 0x3

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    sget-object v3, Lcom/google/api/client/http/l;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 12
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/google/api/client/http/l;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/l;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method static h(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/api/client/http/l;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "\\\""

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/l;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/api/client/http/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/google/api/client/http/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/google/api/client/http/l;->c:Ljava/util/SortedMap;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "; "

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v3}, Lcom/google/api/client/http/l;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v3}, Lcom/google/api/client/http/l;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/google/api/client/http/l;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/l;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/l;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Ljava/nio/charset/Charset;
    .locals 1

    const-string v0, "charset"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/api/client/http/l;->c:Ljava/util/SortedMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/api/client/http/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/api/client/http/l;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/l;->b(Lcom/google/api/client/http/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/api/client/http/l;->c:Ljava/util/SortedMap;

    iget-object p1, p1, Lcom/google/api/client/http/l;->c:Ljava/util/SortedMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/client/http/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;)Lcom/google/api/client/http/l;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/api/client/http/l;->d:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/google/api/client/http/l;->c:Ljava/util/SortedMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public k(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/l;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "charset"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/client/http/l;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/l;

    return-object p0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/l;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/l;->j(Ljava/lang/String;)Lcom/google/api/client/http/l;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/api/client/http/l;->f:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Name contains reserved characters"

    .line 4
    invoke-static {v0, v1}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/api/client/http/l;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/google/api/client/http/l;->c:Ljava/util/SortedMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/google/api/client/http/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/client/http/l;->e:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Subtype contains reserved characters"

    .line 3
    invoke-static {v0, v1}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/l;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/api/client/http/l;->d:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/google/api/client/http/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/client/http/l;->e:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Type contains reserved characters"

    .line 3
    invoke-static {v0, v1}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/l;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/api/client/http/l;->d:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/client/http/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
