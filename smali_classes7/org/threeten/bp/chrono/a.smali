.class abstract Lorg/threeten/bp/chrono/a;
.super Lorg/threeten/bp/chrono/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/b;",
        ">",
        "Lorg/threeten/bp/chrono/b;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x572fb054bf61a0b8L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/threeten/bp/chrono/b;-><init>()V

    return-void
.end method


# virtual methods
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

.method minusDays(J)Lorg/threeten/bp/chrono/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusDays(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/chrono/a;->plusDays(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusDays(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method minusMonths(J)Lorg/threeten/bp/chrono/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusMonths(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/chrono/a;->plusMonths(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusMonths(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method minusWeeks(J)Lorg/threeten/bp/chrono/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusWeeks(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/chrono/a;->plusWeeks(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusWeeks(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method minusYears(J)Lorg/threeten/bp/chrono/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusYears(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/chrono/a;->plusYears(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusYears(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/j;",
            ")",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation

    .line 3
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 5
    sget-object v1, Lorg/threeten/bp/chrono/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not valid for chronology "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object p3

    invoke-virtual {p3}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p3, 0x3e8

    .line 7
    invoke-static {p1, p2, p3}, Ljl/d;->m(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusYears(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x64

    .line 8
    invoke-static {p1, p2, p3}, Ljl/d;->m(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusYears(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0xa

    .line 9
    invoke-static {p1, p2, p3}, Ljl/d;->m(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusYears(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusYears(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusMonths(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/4 p3, 0x7

    .line 12
    invoke-static {p1, p2, p3}, Ljl/d;->m(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusDays(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusDays(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/j;->addTo(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDate(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/a;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/a;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/a;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1
.end method

.method abstract plusDays(J)Lorg/threeten/bp/chrono/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation
.end method

.method abstract plusMonths(J)Lorg/threeten/bp/chrono/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation
.end method

.method plusWeeks(J)Lorg/threeten/bp/chrono/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Ljl/d;->m(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->plusDays(J)Lorg/threeten/bp/chrono/a;

    move-result-object p1

    return-object p1
.end method

.method abstract plusYears(J)Lorg/threeten/bp/chrono/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation
.end method

.method public until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_0
    invoke-interface {p2, p0, p1}, Lorg/threeten/bp/temporal/j;->between(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/b;)J

    move-result-wide p1

    return-wide p1
.end method

.method public until(Lorg/threeten/bp/chrono/b;)Lorg/threeten/bp/chrono/e;
    .locals 1

    .line 5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported in ThreeTen backport"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
