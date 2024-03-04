.class final enum Lorg/threeten/bp/temporal/a$b$a;
.super Lorg/threeten/bp/temporal/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/threeten/bp/temporal/a$b;-><init>(Ljava/lang/String;ILorg/threeten/bp/temporal/a$a;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/b;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/a$b$a;->getFrom(Lorg/threeten/bp/temporal/c;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/a$b$a;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/g;)J

    .line 3
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    add-long/2addr v3, p2

    invoke-interface {p1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    return-object p1
.end method

.method public getFrom(Lorg/threeten/bp/temporal/c;)J
    .locals 5

    .line 1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result v0

    .line 3
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result v1

    .line 4
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v2

    .line 5
    invoke-static {}, Lorg/threeten/bp/temporal/a$b;->b()[I

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    sget-object v4, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v4, v2, v3}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    aget p1, p1, v1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 6
    :cond_1
    new-instance p1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/c;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 2
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/threeten/bp/temporal/a$b;->a(Lorg/threeten/bp/temporal/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public range()Lorg/threeten/bp/temporal/ValueRange;
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    invoke-static/range {v0 .. v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 8

    .line 1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a$b;->b:Lorg/threeten/bp/temporal/a$b;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    const-wide/16 v2, 0x5b

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 3
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    .line 4
    sget-object p1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x5a

    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const-wide/16 v6, 0x2

    cmp-long p1, v0, v6

    if-nez p1, :cond_2

    .line 5
    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x4

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/a$b$a;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const-wide/16 v0, 0x5c

    .line 7
    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 8
    :cond_5
    new-instance p1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolve(Ljava/util/Map;Lorg/threeten/bp/temporal/c;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/temporal/c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/temporal/c;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/temporal/c;"
        }
    .end annotation

    .line 1
    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2
    sget-object v1, Lorg/threeten/bp/temporal/a$b;->b:Lorg/threeten/bp/temporal/a$b;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v0, :cond_6

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 4
    sget-object v3, Lorg/threeten/bp/temporal/a$b;->a:Lorg/threeten/bp/temporal/a$b;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5
    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v6, 0x3

    const-wide/16 v7, 0x1

    const/4 v9, 0x1

    if-ne p3, v5, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 7
    invoke-static {v0, v9, v9}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p3

    .line 8
    invoke-static {v10, v11, v7, v8}, Ljl/d;->p(JJ)J

    move-result-wide v9

    invoke-static {v9, v10, v6}, Ljl/d;->m(JI)J

    move-result-wide v5

    invoke-virtual {p3, v5, v6}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p3

    .line 9
    invoke-static {v3, v4, v7, v8}, Ljl/d;->p(JJ)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p3

    goto :goto_3

    .line 10
    :cond_1
    invoke-interface {v1}, Lorg/threeten/bp/temporal/g;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11, v1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result v2

    .line 11
    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p3, v5, :cond_5

    const/16 p3, 0x5c

    const/16 v5, 0x5b

    if-ne v2, v9, :cond_3

    .line 12
    sget-object p3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    int-to-long v10, v0

    invoke-virtual {p3, v10, v11}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/16 p3, 0x5a

    goto :goto_1

    :cond_3
    const/4 v10, 0x2

    if-ne v2, v10, :cond_4

    :goto_0
    const/16 p3, 0x5b

    :cond_4
    :goto_1
    int-to-long v10, p3

    .line 13
    invoke-static {v7, v8, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p3

    invoke-virtual {p3, v3, v4, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/g;)J

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/a$b$a;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p3

    invoke-virtual {p3, v3, v4, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/g;)J

    :goto_2
    sub-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v9

    .line 15
    invoke-static {v0, v2, v9}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p3

    sub-long/2addr v3, v7

    invoke-virtual {p3, v3, v4}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p3

    .line 16
    :goto_3
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_6
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DayOfQuarter"

    return-object v0
.end method
