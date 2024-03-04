.class public abstract Lorg/threeten/bp/chrono/c;
.super Ljl/b;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/d;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/b;",
        ">",
        "Ljl/b;",
        "Lorg/threeten/bp/temporal/d;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/chrono/c<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final DATE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/chrono/c<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/threeten/bp/chrono/c$a;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/c$a;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/c;->DATE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljl/b;-><init>()V

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/c;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "*>;"
        }
    .end annotation

    const-string v0, "temporal"

    .line 1
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/threeten/bp/chrono/c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/threeten/bp/chrono/c;

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
    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/i;->localDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/c;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Chronology found to create ChronoLocalDateTime: "

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
            "Lorg/threeten/bp/chrono/c<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lorg/threeten/bp/chrono/c;->DATE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;
    .locals 3

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/b;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/b;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/threeten/bp/chrono/c;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->compareTo(Lorg/threeten/bp/chrono/c;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/chrono/c;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/b;->compareTo(Lorg/threeten/bp/chrono/b;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->getChronology()Lorg/threeten/bp/chrono/i;

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
    instance-of v1, p1, Lorg/threeten/bp/chrono/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/c;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->compareTo(Lorg/threeten/bp/chrono/c;)I

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

.method public getChronology()Lorg/threeten/bp/chrono/i;
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/chrono/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isBefore(Lorg/threeten/bp/chrono/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isEqual(Lorg/threeten/bp/chrono/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object p1

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

.method public minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/j;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Ljl/b;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/f;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-super {p0, p1}, Ljl/b;->minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/c;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/c;

    move-result-object p1

    return-object p1
.end method

.method public abstract plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/j;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation
.end method

.method public plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/f;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-super {p0, p1}, Ljl/b;->plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/c;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/c;

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
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/h;->e()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->b()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/h;->c()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/h;->f()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lorg/threeten/bp/temporal/h;->g()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-super {p0, p1}, Ljl/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J
    .locals 4

    const-string v0, "offset"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 4
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object p1

    return-object p1
.end method

.method public abstract toLocalDate()Lorg/threeten/bp/chrono/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract toLocalTime()Lorg/threeten/bp/LocalTime;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/d;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-super {p0, p1}, Ljl/b;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public abstract with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/g;",
            "J)",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/c;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/c;

    move-result-object p1

    return-object p1
.end method
