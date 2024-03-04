.class public abstract Lorg/threeten/bp/chrono/b;
.super Ljl/b;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/d;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljl/b;",
        "Lorg/threeten/bp/temporal/d;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/chrono/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/chrono/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/threeten/bp/chrono/b$a;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/b$a;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/b;->DATE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljl/b;-><init>()V

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/b;
    .locals 3

    const-string v0, "temporal"

    .line 1
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/threeten/bp/chrono/b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/threeten/bp/chrono/b;

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/h;->a()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/i;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/i;->date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/b;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Chronology found to create ChronoLocalDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/chrono/b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/threeten/bp/chrono/b;->DATE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;
    .locals 3

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/b;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    return-object p1
.end method

.method public atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/threeten/bp/chrono/d;->a(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/threeten/bp/chrono/b;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/b;->compareTo(Lorg/threeten/bp/chrono/b;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/chrono/b;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljl/d;->b(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->compareTo(Lorg/threeten/bp/chrono/i;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/chrono/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/b;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/b;->compareTo(Lorg/threeten/bp/chrono/b;)I

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
    .locals 1

    const-string v0, "formatter"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/b;->b(Lorg/threeten/bp/temporal/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getChronology()Lorg/threeten/bp/chrono/i;
.end method

.method public getEra()Lorg/threeten/bp/chrono/j;
    .locals 2

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/i;->eraOf(I)Lorg/threeten/bp/chrono/j;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/i;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v1, v0

    xor-int v0, v2, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/chrono/b;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lorg/threeten/bp/chrono/b;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEqual(Lorg/threeten/bp/chrono/b;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLeapYear()Z
    .locals 3

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/i;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/g;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isDateBased()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->isSupportedBy(Lorg/threeten/bp/temporal/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupported(Lorg/threeten/bp/temporal/j;)Z
    .locals 1

    .line 4
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Lorg/threeten/bp/temporal/j;->isDateBased()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/j;->isSupportedBy(Lorg/threeten/bp/temporal/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract lengthOfMonth()I
.end method

.method public lengthOfYear()I
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Ljl/b;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDate(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-super {p0, p1}, Ljl/b;->minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDate(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/b;->minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;
.end method

.method public plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-super {p0, p1}, Ljl/b;->plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDate(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/b;->plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;
    .locals 2
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
    invoke-static {}, Lorg/threeten/bp/temporal/h;->a()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/h;->e()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->b()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/h;->c()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/h;->f()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 8
    invoke-static {}, Lorg/threeten/bp/temporal/h;->g()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-super {p0, p1}, Ljl/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toEpochDay()J
    .locals 2

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    .line 2
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v2}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v2

    .line 3
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v4}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v4

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v7

    invoke-virtual {v7}, Lorg/threeten/bp/chrono/i;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    .line 6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getEra()Lorg/threeten/bp/chrono/j;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-0"

    const-string v1, "-"

    const-wide/16 v7, 0xa

    cmp-long v9, v2, v7

    if-gez v9, :cond_0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v1

    .line 10
    :goto_0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v2, v4, v7

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 11
    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract until(Lorg/threeten/bp/chrono/b;)Lorg/threeten/bp/chrono/e;
.end method

.method public with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-super {p0, p1}, Ljl/b;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDate(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/b;
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/b;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method
