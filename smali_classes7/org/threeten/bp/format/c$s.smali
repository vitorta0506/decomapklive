.class final Lorg/threeten/bp/format/c$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "s"
.end annotation


# static fields
.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lorg/threeten/bp/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/threeten/bp/format/c$s$a;

    invoke-direct {v0}, Lorg/threeten/bp/format/c$s$a;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/c$s;->b:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/format/TextStyle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "textStyle"

    .line 2
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/format/TextStyle;

    iput-object p1, p0, Lorg/threeten/bp/format/c$s;->a:Lorg/threeten/bp/format/TextStyle;

    return-void
.end method

.method private c(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p3, v0

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 3
    invoke-static {p4}, Lorg/threeten/bp/ZoneId;->of(Ljava/lang/String;)Lorg/threeten/bp/ZoneId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/d;->o(Lorg/threeten/bp/ZoneId;)V

    return v1

    .line 4
    :cond_0
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    .line 5
    invoke-static {p4}, Lorg/threeten/bp/ZoneId;->of(Ljava/lang/String;)Lorg/threeten/bp/ZoneId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/d;->o(Lorg/threeten/bp/ZoneId;)V

    return v1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->e()Lorg/threeten/bp/format/d;

    move-result-object v2

    .line 7
    :try_start_0
    sget-object v3, Lorg/threeten/bp/format/c$l;->e:Lorg/threeten/bp/format/c$l;

    invoke-virtual {v3, v2, p2, v1}, Lorg/threeten/bp/format/c$l;->a(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;I)I

    move-result p2

    if-gez p2, :cond_2

    .line 8
    invoke-static {p4}, Lorg/threeten/bp/ZoneId;->of(Ljava/lang/String;)Lorg/threeten/bp/ZoneId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/d;->o(Lorg/threeten/bp/ZoneId;)V

    return v1

    .line 9
    :cond_2
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v1}, Lorg/threeten/bp/format/d;->j(Lorg/threeten/bp/temporal/g;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v2, v1

    .line 10
    invoke-static {v2}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    if-nez v0, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p4, v1}, Lorg/threeten/bp/ZoneId;->ofOffset(Ljava/lang/String;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZoneId;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lorg/threeten/bp/format/d;->o(Lorg/threeten/bp/ZoneId;)V
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    not-int p1, p3

    return p1
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_10

    if-ne p3, v0, :cond_0

    not-int p1, p3

    return p1

    .line 2
    :cond_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_e

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x3

    const-string v6, "GMT"

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 3
    invoke-virtual/range {v3 .. v8}, Lorg/threeten/bp/format/d;->u(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GMT"

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/threeten/bp/format/c$s;->c(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;ILjava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v5, "UTC"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/d;->u(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "UTC"

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/threeten/bp/format/c$s;->c(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;ILjava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v5, "UT"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 7
    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/d;->u(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "UT"

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/threeten/bp/format/c$s;->c(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;ILjava/lang/String;)I

    move-result p1

    return p1

    .line 9
    :cond_4
    new-instance v0, Ljava/util/TreeMap;

    sget-object v2, Lorg/threeten/bp/format/c$s;->b:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 10
    invoke-static {}, Lorg/threeten/bp/ZoneId;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 13
    iget-object v6, p0, Lorg/threeten/bp/format/c$s;->a:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {v6}, Lorg/threeten/bp/format/TextStyle;->asNormal()Lorg/threeten/bp/format/TextStyle;

    move-result-object v6

    sget-object v7, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    .line 14
    :goto_1
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->i()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v5, v8, v6, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Etc/"

    .line 15
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "GMT+"

    if-nez v9, :cond_7

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 16
    :cond_7
    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_8
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->i()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 19
    :cond_9
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_a
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v9, 0x0

    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Lorg/threeten/bp/format/d;->u(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/threeten/bp/ZoneId;->of(Ljava/lang/String;)Lorg/threeten/bp/ZoneId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/d;->o(Lorg/threeten/bp/ZoneId;)V

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    return p3

    :cond_c
    const/16 p2, 0x5a

    if-ne v1, p2, :cond_d

    .line 25
    sget-object p2, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/d;->o(Lorg/threeten/bp/ZoneId;)V

    add-int/2addr p3, v4

    return p3

    :cond_d
    not-int p1, p3

    return p1

    :cond_e
    :goto_2
    add-int/lit8 v1, p3, 0x6

    if-le v1, v0, :cond_f

    not-int p1, p3

    return p1

    :cond_f
    const-string v0, ""

    .line 26
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/threeten/bp/format/c$s;->c(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;ILjava/lang/String;)I

    move-result p1

    return p1

    .line 27
    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public b(Lorg/threeten/bp/format/e;Ljava/lang/StringBuilder;)Z
    .locals 6

    .line 1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->g()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/e;->g(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->normalized()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    instance-of v2, v2, Lorg/threeten/bp/ZoneOffset;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    .line 4
    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/temporal/c;

    move-result-object v2

    .line 5
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v4}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v2, v4}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/threeten/bp/Instant;->ofEpochSecond(J)Lorg/threeten/bp/Instant;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/threeten/bp/zone/d;->d(Lorg/threeten/bp/Instant;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 9
    iget-object v4, p0, Lorg/threeten/bp/format/c$s;->a:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {v4}, Lorg/threeten/bp/format/TextStyle;->asNormal()Lorg/threeten/bp/format/TextStyle;

    move-result-object v4

    sget-object v5, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lorg/threeten/bp/format/e;->c()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZoneText("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/c$s;->a:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
