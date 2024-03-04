.class public final Lorg/threeten/bp/chrono/JapaneseChronology;
.super Lorg/threeten/bp/chrono/i;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

.field static final LOCALE:Ljava/util/Locale;

.field private static final TARGET_LANGUAGE:Ljava/lang/String; = "ja"

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseChronology;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/JapaneseChronology;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "K"

    const-string v6, "M"

    const-string v7, "T"

    const-string v8, "S"

    const-string v9, "H"

    .line 6
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "en"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "K"

    const-string v8, "M"

    const-string v9, "T"

    const-string v10, "S"

    const-string v11, "H"

    .line 7
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "K"

    const-string v8, "M"

    const-string v9, "T"

    const-string v10, "S"

    const-string v11, "H"

    .line 8
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "\u6176"

    const-string v8, "\u660e"

    const-string v9, "\u5927"

    const-string v10, "\u662d"

    const-string v11, "\u5e73"

    .line 9
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "Keio"

    const-string v8, "Meiji"

    const-string v9, "Taisho"

    const-string v10, "Showa"

    const-string v11, "Heisei"

    .line 10
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Unknown"

    const-string v7, "\u6176\u5fdc"

    const-string v8, "\u660e\u6cbb"

    const-string v9, "\u5927\u6b63"

    const-string v10, "\u662d\u548c"

    const-string v11, "\u5e73\u6210"

    .line 11
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/threeten/bp/chrono/i;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    return-object v0
.end method

.method private resolveEYD(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            "Lorg/threeten/bp/chrono/JapaneseEra;",
            "I)",
            "Lorg/threeten/bp/chrono/JapaneseDate;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result p2

    add-int/2addr p2, p4

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 3
    sget-object p4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljl/d;->p(JJ)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    sget-object p2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {p1, v0, v1, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result p1

    .line 6
    invoke-virtual {p0, p3, p4, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(Lorg/threeten/bp/chrono/j;II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method private resolveEYMD(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            "Lorg/threeten/bp/chrono/JapaneseEra;",
            "I)",
            "Lorg/threeten/bp/chrono/JapaneseDate;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result p2

    add-int/2addr p2, p4

    sub-int/2addr p2, v1

    .line 3
    sget-object p3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    const-wide/16 v2, 0x1

    invoke-static {p3, p4, v2, v3}, Ljl/d;->p(JJ)J

    move-result-wide p3

    .line 4
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljl/d;->p(JJ)J

    move-result-wide v2

    .line 5
    invoke-virtual {p0, p2, v1, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    sget-object p2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {p1, p3, p4, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    sget-object p2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {p1, v2, v3, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result v0

    .line 7
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result p1

    .line 8
    sget-object v2, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v2, :cond_6

    if-lt p4, v1, :cond_5

    .line 9
    invoke-virtual {p3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result p2

    add-int/2addr p2, p4

    sub-int/2addr p2, v1

    const/16 v2, 0x1c

    if-le p1, v2, :cond_1

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 11
    :cond_1
    invoke-virtual {p0, p2, v0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseDate;->getEra()Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p2

    if-eq p2, p3, :cond_4

    .line 13
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseDate;->getEra()Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p2

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result p2

    invoke-virtual {p3}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const-string v0, " "

    const-string v2, "Invalid Era/YearOfEra: "

    if-gt p2, v1, :cond_3

    .line 14
    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, p2}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result p2

    if-eq p2, v1, :cond_4

    if-ne p4, v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-object p1

    .line 17
    :cond_5
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid YearOfEra: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    invoke-virtual {p0, p3, p4, v0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(Lorg/threeten/bp/chrono/j;III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public date(III)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .line 7
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p1, p2, p3}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public date(Lorg/threeten/bp/chrono/j;III)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .line 4
    instance-of v0, p1, Lorg/threeten/bp/chrono/JapaneseEra;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseEra;

    invoke-static {p1, p2, p3, p4}, Lorg/threeten/bp/chrono/JapaneseDate;->of(Lorg/threeten/bp/chrono/JapaneseEra;III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .line 8
    instance-of v0, p1, Lorg/threeten/bp/chrono/JapaneseDate;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object p1

    .line 10
    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic date(III)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lorg/threeten/bp/chrono/j;III)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(Lorg/threeten/bp/chrono/j;III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .line 4
    invoke-super {p0}, Lorg/threeten/bp/chrono/i;->dateNow()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object v0
.end method

.method public dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/i;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object p1
.end method

.method public dateNow(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    const-string v0, "clock"

    .line 6
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/i;->dateNow(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object p1
.end method

.method public bridge synthetic dateNow()Lorg/threeten/bp/chrono/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateNow()Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateNow(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .line 6
    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofYearDay(II)Lorg/threeten/bp/LocalDate;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lorg/threeten/bp/LocalDate;->getMonthValue()I

    move-result v0

    invoke-virtual {p2}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(Lorg/threeten/bp/chrono/j;II)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .line 3
    instance-of v0, p1, Lorg/threeten/bp/chrono/JapaneseEra;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseEra;

    invoke-static {p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseDate;->ofYearDay(Lorg/threeten/bp/chrono/JapaneseEra;II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic dateYearDay(II)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Lorg/threeten/bp/chrono/j;II)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(Lorg/threeten/bp/chrono/j;II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->of(I)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic eraOf(I)Lorg/threeten/bp/chrono/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->eraOf(I)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    return-object p1
.end method

.method public eras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/threeten/bp/chrono/j;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    const-string v0, "japanese"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "Japanese"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 1

    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result p1

    return p1
.end method

.method public localDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/c;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "Lorg/threeten/bp/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/i;->localDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/c;

    move-result-object p1

    return-object p1
.end method

.method public prolepticYear(Lorg/threeten/bp/chrono/j;I)I
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/chrono/JapaneseEra;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseEra;

    .line 3
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1

    .line 4
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v3

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result p1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    int-to-long v1, p2

    .line 5
    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, v1, v2, p2}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/g;)J

    return v0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 11

    .line 1
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_0

    .line 2
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplementable field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_0
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_1
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    const/16 v0, 0x16e

    .line 7
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_0

    .line 8
    aget-object v1, p1, v2

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->lengthOfYear()I

    move-result v1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    int-to-long v5, v0

    const-wide/16 v7, 0x16e

    .line 9
    invoke-static/range {v3 .. v8}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x2

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v6, v0

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v8, p1

    .line 12
    invoke-static/range {v2 .. v9}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_3
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    .line 14
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    .line 15
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    .line 16
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 17
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x6

    int-to-long v7, v1

    int-to-long v9, v0

    .line 18
    invoke-static/range {v3 .. v10}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_4
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    .line 20
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseDate;->MIN_DATE:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    int-to-long v0, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_5
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p1

    .line 22
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/chrono/JapaneseDate;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 5
    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-eq p2, v3, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 7
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0xc

    invoke-static {v3, v4, v5}, Ljl/d;->g(JI)I

    move-result v3

    add-int/2addr v3, v2

    int-to-long v3, v3

    invoke-virtual {p0, p1, v0, v3, v4}, Lorg/threeten/bp/chrono/i;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0xc

    invoke-static {v3, v4, v5, v6}, Ljl/d;->e(JJ)J

    move-result-wide v3

    invoke-virtual {p0, p1, v0, v3, v4}, Lorg/threeten/bp/chrono/i;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 9
    :cond_2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->eraOf(I)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 11
    :goto_0
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_6

    .line 12
    invoke-virtual {p0, v4}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v4}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result v5

    if-nez v1, :cond_4

    .line 13
    sget-object v6, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-eq p2, v6, :cond_4

    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 14
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseChronology;->eras()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/chrono/JapaneseEra;

    :cond_4
    if-eqz v1, :cond_5

    .line 16
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-direct {p0, p1, p2, v1, v5}, Lorg/threeten/bp/chrono/JapaneseChronology;->resolveEYMD(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    .line 20
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-direct {p0, p1, p2, v1, v5}, Lorg/threeten/bp/chrono/JapaneseChronology;->resolveEYD(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 24
    :cond_6
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 25
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Strict mode rejected date parsed to a different month"

    const-wide/16 v6, 0x1

    if-eqz v4, :cond_11

    .line 26
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 28
    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v3, :cond_7

    .line 29
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide v8

    .line 30
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide p1

    .line 31
    invoke-virtual {p0, v0, v2, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lorg/threeten/bp/chrono/JapaneseDate;->plusMonths(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->plusDays(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 32
    :cond_7
    invoke-virtual {p0, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6, v1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result v1

    .line 33
    invoke-virtual {p0, v4}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v3

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6, v4}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result p1

    .line 34
    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v3, :cond_8

    const/16 p2, 0x1c

    if-le p1, p2, :cond_8

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/JapaneseDate;->lengthOfMonth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 36
    :cond_8
    invoke-virtual {p0, v0, v1, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 37
    :cond_9
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 38
    sget-object v8, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 40
    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v3, :cond_a

    .line 41
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide v9

    .line 42
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide v3

    .line 43
    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide p1

    .line 44
    invoke-virtual {p0, v0, v2, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v9, v10, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v3, v4, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 45
    :cond_a
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    .line 46
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 47
    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    .line 48
    invoke-virtual {p0, v0, v3, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x7

    sub-int/2addr p1, v2

    add-int/2addr v4, p1

    int-to-long v6, v4

    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v6, v7, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    .line 49
    sget-object v0, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v0, :cond_c

    invoke-virtual {p1, v1}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result p2

    if-ne p2, v3, :cond_b

    goto :goto_1

    .line 50
    :cond_b
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    invoke-direct {p1, v5}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_1
    return-object p1

    .line 51
    :cond_d
    sget-object v8, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 53
    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v3, :cond_e

    .line 54
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide v9

    .line 55
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide v3

    .line 56
    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide p1

    .line 57
    invoke-virtual {p0, v0, v2, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v9, v10, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v3, v4, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 58
    :cond_e
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    .line 59
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 60
    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    .line 61
    invoke-virtual {p0, v0, v3, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sub-int/2addr v4, v2

    int-to-long v6, v4

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v6, v7, v2}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    invoke-static {p1}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object p1

    invoke-static {p1}, Lorg/threeten/bp/temporal/e;->a(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    .line 62
    sget-object v0, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v0, :cond_10

    invoke-virtual {p1, v1}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result p2

    if-ne p2, v3, :cond_f

    goto :goto_2

    .line 63
    :cond_f
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    invoke-direct {p1, v5}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_2
    return-object p1

    .line 64
    :cond_11
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 65
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 66
    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v3, :cond_12

    .line 67
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide p1

    .line 68
    invoke-virtual {p0, v0, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->plusDays(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 69
    :cond_12
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    .line 70
    invoke-virtual {p0, v0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 71
    :cond_13
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 72
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 73
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    .line 74
    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v5, :cond_14

    .line 75
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide v0

    .line 76
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide p1

    .line 77
    invoke-virtual {p0, v3, v2, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v2, v0, v1, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 78
    :cond_14
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    .line 79
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    .line 80
    invoke-virtual {p0, v3, v2, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v4

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr p1, v2

    add-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Lorg/threeten/bp/chrono/JapaneseDate;->plusDays(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    .line 81
    sget-object v1, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v1, :cond_16

    invoke-virtual {p1, v0}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result p2

    if-ne p2, v3, :cond_15

    goto :goto_3

    .line 82
    :cond_15
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    const-string p2, "Strict mode rejected date parsed to a different year"

    invoke-direct {p1, p2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_3
    return-object p1

    .line 83
    :cond_17
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 84
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    .line 85
    sget-object v8, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v8, :cond_18

    .line 86
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide v0

    .line 87
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v6, v7}, Ljl/d;->p(JJ)J

    move-result-wide p1

    .line 88
    invoke-virtual {p0, v3, v2, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v2, v0, v1, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1

    .line 89
    :cond_18
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    .line 90
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    .line 91
    invoke-virtual {p0, v3, v2, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v4

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sget-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v4, v1, v2, v6}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v1

    invoke-static {p1}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object p1

    invoke-static {p1}, Lorg/threeten/bp/temporal/e;->a(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    .line 92
    sget-object v1, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v1, :cond_1a

    invoke-virtual {p1, v0}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result p2

    if-ne p2, v3, :cond_19

    goto :goto_4

    .line 93
    :cond_19
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    invoke-direct {p1, v5}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_4
    return-object p1

    :cond_1b
    return-object v3
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/Instant;",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "Lorg/threeten/bp/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/i;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public zonedDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/c;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "Lorg/threeten/bp/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/i;->zonedDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    return-object p1
.end method
