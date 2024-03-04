.class public final Lorg/threeten/bp/chrono/ThaiBuddhistDate;
.super Lorg/threeten/bp/chrono/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/a<",
        "Lorg/threeten/bp/chrono/ThaiBuddhistDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field private final isoDate:Lorg/threeten/bp/LocalDate;


# direct methods
.method constructor <init>(Lorg/threeten/bp/LocalDate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/chrono/a;-><init>()V

    const-string v0, "date"

    .line 2
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1

    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->INSTANCE:Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p0

    return-object p0
.end method

.method private getProlepticMonth()J
    .locals 4

    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-object v2, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getMonthValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getProlepticYear()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public static now()Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1

    .line 1
    invoke-static {}, Lorg/threeten/bp/a;->d()Lorg/threeten/bp/a;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->now(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/threeten/bp/a;->c(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/a;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->now(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1

    .line 3
    new-instance v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/a;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public static of(III)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1

    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->INSTANCE:Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    invoke-virtual {v0, p0, p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->date(III)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p0

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/b;
    .locals 3
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
    sget-object v2, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->INSTANCE:Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    invoke-virtual {v2, v0, v1, p0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->date(III)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p0

    return-object p0
.end method

.method private with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    :goto_0
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/threeten/bp/chrono/k;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/k;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "Lorg/threeten/bp/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/a;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/c;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    .line 3
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    iget-object p1, p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;
    .locals 1

    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->INSTANCE:Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    return-object v0
.end method

.method public bridge synthetic getChronology()Lorg/threeten/bp/chrono/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lorg/threeten/bp/chrono/ThaiBuddhistEra;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/threeten/bp/chrono/b;->getEra()Lorg/threeten/bp/chrono/j;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    return-object v0
.end method

.method public bridge synthetic getEra()Lorg/threeten/bp/chrono/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getEra()Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/g;)J
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_6

    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate$a;->a:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result p1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    int-to-long v0, v2

    return-wide v0

    .line 5
    :cond_2
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 6
    :cond_3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_4
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result p1

    if-lt p1, v2, :cond_5

    goto :goto_1

    :cond_5
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    .line 8
    :cond_6
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->getFrom(Lorg/threeten/bp/temporal/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/a;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object p1
.end method

.method public plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plusDays(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusMonths(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plusMonths(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusYears(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plusYears(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 7

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/b;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 4
    sget-object v1, Lorg/threeten/bp/chrono/ThaiBuddhistDate$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x21f

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v5

    add-long/2addr v5, v3

    neg-long v3, v5

    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 8
    :goto_0
    invoke-static {v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
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
    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->rangeRefinedBy(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toEpochDay()J
    .locals 2

    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J

    move-result-wide p1

    return-wide p1
.end method

.method public until(Lorg/threeten/bp/chrono/b;)Lorg/threeten/bp/chrono/e;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->until(Lorg/threeten/bp/chrono/b;)Lorg/threeten/bp/Period;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getYears()I

    move-result v1

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getMonths()I

    move-result v2

    invoke-virtual {p1}, Lorg/threeten/bp/Period;->getDays()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/chrono/i;->period(III)Lorg/threeten/bp/chrono/e;

    move-result-object p1

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 7

    .line 6
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_7

    .line 7
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 8
    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    return-object p0

    .line 9
    :cond_0
    sget-object v1, Lorg/threeten/bp/chrono/ThaiBuddhistDate$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/g;)J

    .line 11
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plusMonths(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result v2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    .line 14
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    iget-object p1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result p2

    sub-int/2addr v1, p2

    add-int/lit16 v1, v1, -0x21f

    invoke-virtual {p1, v1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    iget-object p1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    add-int/lit16 v2, v2, -0x21f

    invoke-virtual {p1, v2}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    iget-object p1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result p2

    if-lt p2, v1, :cond_6

    goto :goto_1

    :cond_6
    rsub-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit16 v2, v2, -0x21f

    invoke-virtual {p1, v2}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/g;->adjustInto(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

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
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 3
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
