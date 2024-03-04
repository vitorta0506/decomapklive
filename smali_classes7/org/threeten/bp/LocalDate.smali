.class public final Lorg/threeten/bp/LocalDate;
.super Lorg/threeten/bp/chrono/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final DAYS_0000_TO_1970:J = 0xafaa8L

.field private static final DAYS_PER_CYCLE:I = 0x23ab1

.field public static final FROM:Lorg/threeten/bp/temporal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/i<",
            "Lorg/threeten/bp/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/LocalDate;

.field public static final MIN:Lorg/threeten/bp/LocalDate;

.field private static final serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final day:S

.field private final month:S

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/LocalDate;->MIN:Lorg/threeten/bp/LocalDate;

    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    .line 2
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/LocalDate;->MAX:Lorg/threeten/bp/LocalDate;

    .line 3
    new-instance v0, Lorg/threeten/bp/LocalDate$a;

    invoke-direct {v0}, Lorg/threeten/bp/LocalDate$a;-><init>()V

    sput-object v0, Lorg/threeten/bp/LocalDate;->FROM:Lorg/threeten/bp/temporal/i;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/chrono/b;-><init>()V

    .line 2
    iput p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-short p1, p2

    .line 3
    iput-short p1, p0, Lorg/threeten/bp/LocalDate;->month:S

    int-to-short p1, p3

    .line 4
    iput-short p1, p0, Lorg/threeten/bp/LocalDate;->day:S

    return-void
.end method

.method private static create(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;
    .locals 3

    const/16 v0, 0x1c

    if-le p2, v0, :cond_1

    .line 1
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/Month;->length(Z)I

    move-result v0

    if-le p2, v0, :cond_1

    const/16 v0, 0x1d

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid date \'February 29\' as \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    new-instance p0, Lorg/threeten/bp/DateTimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid date \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance v0, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p1}, Lorg/threeten/bp/Month;->getValue()I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/LocalDate;-><init>(III)V

    return-object v0
.end method

.method public static from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->b()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private get0(Lorg/threeten/bp/temporal/g;)I
    .locals 3

    .line 1
    sget-object v0, Lorg/threeten/bp/LocalDate$b;->a:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Field too large for an int: "

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 4
    :pswitch_1
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    return p1

    .line 5
    :pswitch_2
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_3
    iget-short p1, p0, Lorg/threeten/bp/LocalDate;->month:S

    return p1

    .line 7
    :pswitch_4
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result p1

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 8
    :pswitch_5
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_6
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result p1

    sub-int/2addr p1, v2

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 10
    :pswitch_7
    iget-short p1, p0, Lorg/threeten/bp/LocalDate;->day:S

    sub-int/2addr p1, v2

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 11
    :pswitch_8
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result p1

    return p1

    .line 12
    :pswitch_9
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    if-lt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    return p1

    .line 13
    :pswitch_a
    iget-short p1, p0, Lorg/threeten/bp/LocalDate;->day:S

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 14
    :pswitch_b
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result p1

    return p1

    .line 15
    :pswitch_c
    iget-short p1, p0, Lorg/threeten/bp/LocalDate;->day:S

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getProlepticMonth()J
    .locals 4

    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Lorg/threeten/bp/LocalDate;->month:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private monthsUntil(Lorg/threeten/bp/LocalDate;)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 2
    invoke-direct {p1}, Lorg/threeten/bp/LocalDate;->getProlepticMonth()J

    move-result-wide v4

    mul-long v4, v4, v2

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result p1

    int-to-long v6, p1

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    .line 3
    div-long/2addr v4, v2

    return-wide v4
.end method

.method public static now()Lorg/threeten/bp/LocalDate;
    .locals 1

    .line 1
    invoke-static {}, Lorg/threeten/bp/a;->d()Lorg/threeten/bp/a;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/a;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/LocalDate;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/threeten/bp/a;->c(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/a;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/a;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lorg/threeten/bp/a;)Lorg/threeten/bp/LocalDate;
    .locals 4

    const-string v0, "clock"

    .line 3
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lorg/threeten/bp/a;->b()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/a;->a()Lorg/threeten/bp/ZoneId;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/zone/d;->a(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljl/d;->e(JJ)J

    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static of(III)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 5
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 6
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 7
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 8
    invoke-static {p1}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->create(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    const-string v0, "month"

    .line 2
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 4
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->create(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static ofEpochDay(J)Lorg/threeten/bp/LocalDate;
    .locals 22

    move-wide/from16 v0, p0

    .line 1
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    const-wide/32 v2, 0xafaa8

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x23ab1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x190

    cmp-long v10, v0, v6

    if-gez v10, :cond_0

    add-long v10, v0, v2

    .line 2
    div-long/2addr v10, v4

    sub-long/2addr v10, v2

    mul-long v12, v10, v8

    neg-long v10, v10

    mul-long v10, v10, v4

    add-long/2addr v0, v10

    goto :goto_0

    :cond_0
    move-wide v12, v6

    :goto_0
    mul-long v10, v0, v8

    const-wide/16 v14, 0x24f

    add-long/2addr v10, v14

    .line 3
    div-long/2addr v10, v4

    const-wide/16 v4, 0x16d

    mul-long v14, v10, v4

    const-wide/16 v16, 0x4

    .line 4
    div-long v18, v10, v16

    add-long v14, v14, v18

    const-wide/16 v18, 0x64

    div-long v20, v10, v18

    sub-long v14, v14, v20

    div-long v20, v10, v8

    add-long v14, v14, v20

    sub-long v14, v0, v14

    cmp-long v20, v14, v6

    if-gez v20, :cond_1

    sub-long/2addr v10, v2

    mul-long v4, v4, v10

    .line 5
    div-long v2, v10, v16

    add-long/2addr v4, v2

    div-long v2, v10, v18

    sub-long/2addr v4, v2

    div-long v2, v10, v8

    add-long/2addr v4, v2

    sub-long v14, v0, v4

    :cond_1
    add-long/2addr v10, v12

    long-to-int v0, v14

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2

    .line 6
    div-int/lit16 v1, v1, 0x99

    add-int/lit8 v2, v1, 0x2

    .line 7
    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v3, v1, 0x132

    add-int/lit8 v3, v3, 0x5

    .line 8
    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 9
    div-int/lit8 v1, v1, 0xa

    int-to-long v3, v1

    add-long/2addr v10, v3

    .line 10
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1, v10, v11}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    .line 11
    new-instance v3, Lorg/threeten/bp/LocalDate;

    invoke-direct {v3, v1, v2, v0}, Lorg/threeten/bp/LocalDate;-><init>(III)V

    return-object v3
.end method

.method public static ofYearDay(II)Lorg/threeten/bp/LocalDate;
    .locals 5

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 3
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    const/16 v1, 0x16e

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid date \'DayOfYear 366\' as \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .line 5
    div-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lorg/threeten/bp/Month;->firstDayOfYear(Z)I

    move-result v2

    invoke-virtual {v1, v0}, Lorg/threeten/bp/Month;->length(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    const-wide/16 v2, 0x1

    .line 7
    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/Month;->plus(J)Lorg/threeten/bp/Month;

    move-result-object v1

    .line 8
    :cond_2
    invoke-virtual {v1, v0}, Lorg/threeten/bp/Month;->firstDayOfYear(Z)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 9
    invoke-static {p0, v1, p1}, Lorg/threeten/bp/LocalDate;->create(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/LocalDate;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/format/b;->h:Lorg/threeten/bp/format/b;

    invoke-static {p0, v0}, Lorg/threeten/bp/LocalDate;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/b;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/b;)Lorg/threeten/bp/LocalDate;
    .locals 1

    const-string v0, "formatter"

    .line 2
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lorg/threeten/bp/LocalDate;->FROM:Lorg/threeten/bp/temporal/i;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/b;->h(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/LocalDate;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 4
    invoke-static {v0, v1, p0}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1e

    .line 1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 2
    :cond_1
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3
    :goto_1
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/threeten/bp/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/b;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;
    .locals 0

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->adjustInto(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    return-object p1
.end method

.method public atStartOfDay()Lorg/threeten/bp/LocalDateTime;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/LocalTime;->MIDNIGHT:Lorg/threeten/bp/LocalTime;

    invoke-static {p0, v0}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atStartOfDay(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-string v0, "zone"

    .line 2
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lorg/threeten/bp/LocalTime;->MIDNIGHT:Lorg/threeten/bp/LocalTime;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/LocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 4
    instance-of v1, p1, Lorg/threeten/bp/ZoneOffset;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lorg/threeten/bp/zone/d;->b(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 9
    :cond_0
    invoke-static {v0, p1}, Lorg/threeten/bp/ZonedDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public atTime(II)Lorg/threeten/bp/LocalDateTime;
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lorg/threeten/bp/LocalTime;->of(II)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public atTime(III)Lorg/threeten/bp/LocalDateTime;
    .locals 0

    .line 4
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/LocalTime;->of(III)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public atTime(IIII)Lorg/threeten/bp/LocalDateTime;
    .locals 0

    .line 5
    invoke-static {p1, p2, p3, p4}, Lorg/threeten/bp/LocalTime;->of(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public atTime(Lorg/threeten/bp/OffsetTime;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 6
    invoke-virtual {p1}, Lorg/threeten/bp/OffsetTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/threeten/bp/chrono/b;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo(Lorg/threeten/bp/chrono/b;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/chrono/b;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo0(Lorg/threeten/bp/LocalDate;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->compareTo(Lorg/threeten/bp/chrono/b;)I

    move-result p1

    return p1
.end method

.method compareTo0(Lorg/threeten/bp/LocalDate;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    iget v1, p1, Lorg/threeten/bp/LocalDate;->year:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    iget-short v1, p1, Lorg/threeten/bp/LocalDate;->month:S

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    iget-short p1, p1, Lorg/threeten/bp/LocalDate;->day:S

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method daysUntil(Lorg/threeten/bp/LocalDate;)J
    .locals 4

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/LocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo0(Lorg/threeten/bp/LocalDate;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public format(Lorg/threeten/bp/format/b;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->format(Lorg/threeten/bp/format/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/threeten/bp/temporal/g;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDate;->get0(Lorg/threeten/bp/temporal/g;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result p1

    return p1
.end method

.method public getChronology()Lorg/threeten/bp/chrono/IsoChronology;
    .locals 1

    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    return-object v0
.end method

.method public bridge synthetic getChronology()Lorg/threeten/bp/chrono/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getChronology()Lorg/threeten/bp/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    return v0
.end method

.method public getDayOfWeek()Lorg/threeten/bp/DayOfWeek;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Ljl/d;->g(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {v0}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 2

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/Month;->firstDayOfYear(Z)I

    move-result v0

    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->day:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getEra()Lorg/threeten/bp/chrono/j;
    .locals 1

    invoke-super {p0}, Lorg/threeten/bp/chrono/b;->getEra()Lorg/threeten/bp/chrono/j;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/g;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lorg/threeten/bp/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDate;->get0(Lorg/threeten/bp/temporal/g;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->getFrom(Lorg/threeten/bp/temporal/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    invoke-static {v0}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    .line 2
    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->month:S

    .line 3
    iget-short v2, p0, Lorg/threeten/bp/LocalDate;->day:S

    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/chrono/b;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo0(Lorg/threeten/bp/LocalDate;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->isAfter(Lorg/threeten/bp/chrono/b;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lorg/threeten/bp/chrono/b;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo0(Lorg/threeten/bp/LocalDate;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->isBefore(Lorg/threeten/bp/chrono/b;)Z

    move-result p1

    return p1
.end method

.method public isEqual(Lorg/threeten/bp/chrono/b;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->compareTo0(Lorg/threeten/bp/LocalDate;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->isEqual(Lorg/threeten/bp/chrono/b;)Z

    move-result p1

    return p1
.end method

.method public isLeapYear()Z
    .locals 3

    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    iget v1, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/g;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result p1

    return p1
.end method

.method public lengthOfMonth()I
    .locals 2

    .line 1
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    :goto_0
    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/LocalDate;
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->subtractFrom(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMonths(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusWeeks(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusYears(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/LocalDate;
    .locals 2

    .line 6
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 7
    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 8
    sget-object v1, Lorg/threeten/bp/LocalDate$b;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 9
    new-instance p1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported unit: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :pswitch_0
    sget-object p3, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p3}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljl/d;->k(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x3e8

    .line 11
    invoke-static {p1, p2, p3}, Ljl/d;->m(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0x64

    .line 12
    invoke-static {p1, p2, p3}, Ljl/d;->m(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0xa

    .line 13
    invoke-static {p1, p2, p3}, Ljl/d;->m(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/j;->addTo(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/LocalDate;
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->addTo(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljl/d;->k(JJ)J

    move-result-wide p1

    .line 2
    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Lorg/threeten/bp/LocalDate;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v4, p0, Lorg/threeten/bp/LocalDate;->month:S

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-long/2addr v0, p1

    .line 2
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v0, v1, v2, v3}, Ljl/d;->e(JJ)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    const/16 p2, 0xc

    .line 3
    invoke-static {v0, v1, p2}, Ljl/d;->g(JI)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 4
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/LocalDate;->resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusWeeks(J)Lorg/threeten/bp/LocalDate;
    .locals 1

    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Ljl/d;->m(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Lorg/threeten/bp/LocalDate;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    iget v1, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    .line 2
    iget-short p2, p0, Lorg/threeten/bp/LocalDate;->month:S

    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/LocalDate;->resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/i<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->b()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_7

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 3
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4
    sget-object v1, Lorg/threeten/bp/LocalDate$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5
    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result p1

    if-gtz p1, :cond_1

    const-wide/32 v0, 0x3b9aca00

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x3b9ac9ff

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/Month;->FEBRUARY:Lorg/threeten/bp/Month;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 v0, 0x4

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x5

    :goto_1
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->lengthOfYear()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->lengthOfMonth()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 10
    :cond_6
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_7
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->rangeRefinedBy(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toEpochDay()J
    .locals 12

    .line 1
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    int-to-long v0, v0

    .line 2
    iget-short v2, p0, Lorg/threeten/bp/LocalDate;->month:S

    int-to-long v2, v2

    const-wide/16 v4, 0x16d

    mul-long v4, v4, v0

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    .line 3
    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v0, v8

    const-wide/16 v8, 0x190

    div-long/2addr v0, v8

    add-long/2addr v6, v0

    add-long/2addr v4, v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x4

    .line 4
    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long/2addr v0, v8

    add-long/2addr v6, v0

    sub-long/2addr v4, v6

    :goto_0
    const-wide/16 v0, 0x16f

    mul-long v0, v0, v2

    const-wide/16 v6, 0x16a

    sub-long/2addr v0, v6

    const-wide/16 v6, 0xc

    .line 5
    div-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 6
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v4, v0

    const-wide/16 v0, 0x2

    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v2

    if-nez v2, :cond_1

    sub-long/2addr v4, v0

    :cond_1
    const-wide/32 v0, 0xafaa8

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    .line 2
    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->month:S

    .line 3
    iget-short v2, p0, Lorg/threeten/bp/LocalDate;->day:S

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_1

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, -0x2710

    .line 6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x2710

    .line 7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v3, 0x270f

    if-le v0, v3, :cond_2

    const/16 v3, 0x2b

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "-0"

    const-string v3, "-"

    if-ge v1, v5, :cond_3

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, v3

    .line 10
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v2, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 12
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J
    .locals 2

    .line 2
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    .line 3
    instance-of v0, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lorg/threeten/bp/LocalDate$b;->b:[I

    move-object v1, p2

    check-cast v1, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5
    new-instance p1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_0
    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    invoke-virtual {p0, p2}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDate;->monthsUntil(Lorg/threeten/bp/LocalDate;)J

    move-result-wide p1

    const-wide/16 v0, 0x2ee0

    div-long/2addr p1, v0

    return-wide p1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDate;->monthsUntil(Lorg/threeten/bp/LocalDate;)J

    move-result-wide p1

    const-wide/16 v0, 0x4b0

    div-long/2addr p1, v0

    return-wide p1

    .line 9
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDate;->monthsUntil(Lorg/threeten/bp/LocalDate;)J

    move-result-wide p1

    const-wide/16 v0, 0x78

    div-long/2addr p1, v0

    return-wide p1

    .line 10
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDate;->monthsUntil(Lorg/threeten/bp/LocalDate;)J

    move-result-wide p1

    const-wide/16 v0, 0xc

    div-long/2addr p1, v0

    return-wide p1

    .line 11
    :pswitch_5
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDate;->monthsUntil(Lorg/threeten/bp/LocalDate;)J

    move-result-wide p1

    return-wide p1

    .line 12
    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->daysUntil(Lorg/threeten/bp/LocalDate;)J

    move-result-wide p1

    const-wide/16 v0, 0x7

    div-long/2addr p1, v0

    return-wide p1

    .line 13
    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->daysUntil(Lorg/threeten/bp/LocalDate;)J

    move-result-wide p1

    return-wide p1

    .line 14
    :cond_0
    invoke-interface {p2, p0, p1}, Lorg/threeten/bp/temporal/j;->between(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/b;)J

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public until(Lorg/threeten/bp/chrono/b;)Lorg/threeten/bp/Period;
    .locals 8

    .line 15
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    .line 16
    invoke-direct {p1}, Lorg/threeten/bp/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/threeten/bp/LocalDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 17
    iget-short v2, p1, Lorg/threeten/bp/LocalDate;->day:S

    iget-short v3, p0, Lorg/threeten/bp/LocalDate;->day:S

    sub-int/2addr v2, v3

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_0

    if-gez v2, :cond_0

    sub-long/2addr v0, v3

    .line 18
    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v2, v3

    goto :goto_0

    :cond_0
    if-gez v7, :cond_1

    if-lez v2, :cond_1

    add-long/2addr v0, v3

    .line 20
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->lengthOfMonth()I

    move-result p1

    sub-int/2addr v2, p1

    :cond_1
    :goto_0
    const-wide/16 v3, 0xc

    .line 21
    div-long v5, v0, v3

    .line 22
    rem-long/2addr v0, v3

    long-to-int p1, v0

    .line 23
    invoke-static {v5, v6}, Ljl/d;->q(J)I

    move-result v0

    invoke-static {v0, p1, v2}, Lorg/threeten/bp/Period;->of(III)Lorg/threeten/bp/Period;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic until(Lorg/threeten/bp/chrono/b;)Lorg/threeten/bp/chrono/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->until(Lorg/threeten/bp/chrono/b;)Lorg/threeten/bp/Period;

    move-result-object p1

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/LocalDate;
    .locals 1

    .line 5
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1

    .line 7
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/d;->adjustInto(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/LocalDate;
    .locals 4

    .line 8
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 9
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 10
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 11
    sget-object v1, Lorg/threeten/bp/LocalDate$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 12
    new-instance p2, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported field: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :pswitch_0
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_1
    long-to-int p1, p2

    .line 14
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_3
    long-to-int p1, p2

    .line 16
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withMonth(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_4
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    invoke-static {p2, p3}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_6
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_7
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_8
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_9
    iget p1, p0, Lorg/threeten/bp/LocalDate;->year:I

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x1

    sub-long p2, v0, p2

    :goto_1
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_a
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_b
    long-to-int p1, p2

    .line 24
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withDayOfYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_c
    long-to-int p1, p2

    .line 25
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->withDayOfMonth(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 26
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/g;->adjustInto(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalDate;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lorg/threeten/bp/LocalDate;
    .locals 2

    .line 1
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->month:S

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfYear(I)Lorg/threeten/bp/LocalDate;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    invoke-static {v0, p1}, Lorg/threeten/bp/LocalDate;->ofYearDay(II)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 1
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 3
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-static {v0, p1, v1}, Lorg/threeten/bp/LocalDate;->resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lorg/threeten/bp/LocalDate;
    .locals 3

    .line 1
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 3
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    iget-short v1, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->resolvePreviousValid(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/threeten/bp/LocalDate;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->month:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 3
    iget-short v0, p0, Lorg/threeten/bp/LocalDate;->day:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
