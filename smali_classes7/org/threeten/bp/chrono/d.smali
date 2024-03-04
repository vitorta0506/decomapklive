.class final Lorg/threeten/bp/chrono/d;
.super Lorg/threeten/bp/chrono/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/b;",
        ">",
        "Lorg/threeten/bp/chrono/c<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final a:Lorg/threeten/bp/chrono/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final b:Lorg/threeten/bp/LocalTime;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/LocalTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lorg/threeten/bp/LocalTime;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/chrono/c;-><init>()V

    const-string v0, "date"

    .line 2
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    .line 3
    invoke-static {p2, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    .line 5
    iput-object p2, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    return-void
.end method

.method static a(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/b;",
            ">(TR;",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/d<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lorg/threeten/bp/chrono/d;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/chrono/d;-><init>(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/LocalTime;)V

    return-object v0
.end method

.method private d(J)Lorg/threeten/bp/chrono/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/b;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->k(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method private e(J)Lorg/threeten/bp/chrono/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/d;->i(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method private f(J)Lorg/threeten/bp/chrono/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/d;->i(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method private g(J)Lorg/threeten/bp/chrono/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/d;->i(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method private i(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1
    iget-object v2, v0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/d;->k(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    .line 2
    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    div-long v10, p4, v8

    add-long/2addr v4, v10

    const-wide/16 v10, 0x18

    div-long v12, p2, v10

    add-long/2addr v4, v12

    .line 3
    rem-long v12, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v14, 0x3b9aca00

    mul-long v6, v6, v14

    add-long/2addr v12, v6

    rem-long v6, p4, v8

    const-wide v8, 0xdf8475800L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    rem-long v6, p2, v10

    const-wide v8, 0x34630b8a000L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    .line 4
    iget-object v6, v0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v6}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    add-long/2addr v12, v6

    .line 5
    invoke-static {v12, v13, v2, v3}, Ljl/d;->e(JJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 6
    invoke-static {v12, v13, v2, v3}, Ljl/d;->h(JJ)J

    move-result-wide v2

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    .line 7
    iget-object v2, v0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v2

    .line 8
    :goto_0
    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1, v4, v5, v3}, Lorg/threeten/bp/chrono/b;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/d;->k(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;

    move-result-object v1

    return-object v1
.end method

.method static j(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/b;

    .line 2
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/LocalTime;

    .line 3
    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/b;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/c;

    move-result-object p0

    return-object p0
.end method

.method private k(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/b;",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    if-ne v1, p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDate(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    .line 3
    new-instance v0, Lorg/threeten/bp/chrono/d;

    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/chrono/d;-><init>(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/LocalTime;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/threeten/bp/chrono/k;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/k;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/chrono/h;->b(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public b(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/j;",
            ")",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 3
    sget-object v1, Lorg/threeten/bp/chrono/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 4
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->k(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-wide/16 v0, 0x100

    .line 5
    div-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/d;->d(J)Lorg/threeten/bp/chrono/d;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/16 v0, 0xc

    mul-long p1, p1, v0

    invoke-direct {p3, p1, p2}, Lorg/threeten/bp/chrono/d;->e(J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->e(J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->f(J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->h(J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 9
    div-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/d;->d(J)Lorg/threeten/bp/chrono/d;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    invoke-direct {p3, p1, p2}, Lorg/threeten/bp/chrono/d;->g(J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 10
    div-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/d;->d(J)Lorg/threeten/bp/chrono/d;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-direct {p3, p1, p2}, Lorg/threeten/bp/chrono/d;->g(J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->g(J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/j;->addTo(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

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

.method public get(Lorg/threeten/bp/temporal/g;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->get(Lorg/threeten/bp/temporal/g;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0, p1}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result p1

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/d;->range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/d;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result p1

    return p1
.end method

.method public getLong(Lorg/threeten/bp/temporal/g;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->getFrom(Lorg/threeten/bp/temporal/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method h(J)Lorg/threeten/bp/chrono/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/d;->i(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public isSupported(Lorg/threeten/bp/temporal/g;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isTimeBased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->isSupportedBy(Lorg/threeten/bp/temporal/c;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public l(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/d;",
            ")",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/chrono/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/b;

    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/chrono/d;->k(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    check-cast p1, Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/d;->k(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/chrono/d;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    check-cast p1, Lorg/threeten/bp/chrono/d;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/d;->adjustInto(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/d;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public m(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/g;",
            "J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/d;->k(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->k(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/g;->adjustInto(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->b(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->b(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0, p1}, Ljl/c;->range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    :goto_0
    return-object p1

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->rangeRefinedBy(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDate()Lorg/threeten/bp/chrono/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    return-object v0
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/d;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->localDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/c;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p2

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 4
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoUnit;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-interface {v4, v1}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 6
    sget-object v1, Lorg/threeten/bp/chrono/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    .line 7
    invoke-static {v2, v3, v0}, Ljl/d;->m(JI)J

    move-result-wide v2

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x18

    .line 8
    invoke-static {v2, v3, v0}, Ljl/d;->m(JI)J

    move-result-wide v2

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x5a0

    .line 9
    invoke-static {v2, v3, v0}, Ljl/d;->m(JI)J

    move-result-wide v2

    goto :goto_0

    :pswitch_3
    const v0, 0x15180

    .line 10
    invoke-static {v2, v3, v0}, Ljl/d;->m(JI)J

    move-result-wide v2

    goto :goto_0

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 11
    invoke-static {v2, v3, v0, v1}, Ljl/d;->n(JJ)J

    move-result-wide v2

    goto :goto_0

    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 12
    invoke-static {v2, v3, v0, v1}, Ljl/d;->n(JJ)J

    move-result-wide v2

    goto :goto_0

    :pswitch_6
    const-wide v0, 0x4e94914f0000L

    .line 13
    invoke-static {v2, v3, v0, v1}, Ljl/d;->n(JJ)J

    move-result-wide v2

    .line 14
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljl/d;->k(JJ)J

    move-result-wide p1

    return-wide p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-virtual {p1, v1}, Lorg/threeten/bp/LocalTime;->isBefore(Lorg/threeten/bp/LocalTime;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x1

    .line 17
    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/chrono/b;->minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/b;

    move-result-object v0

    .line 18
    :cond_1
    iget-object p1, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-interface {p1, v0, p2}, Lorg/threeten/bp/temporal/b;->until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J

    move-result-wide p1

    return-wide p1

    .line 19
    :cond_2
    invoke-interface {p2, p0, p1}, Lorg/threeten/bp/temporal/j;->between(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/b;)J

    move-result-wide p1

    return-wide p1

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

.method public bridge synthetic with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/d;->l(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->m(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/d;->l(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->m(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->a:Lorg/threeten/bp/chrono/b;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->b:Lorg/threeten/bp/LocalTime;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
