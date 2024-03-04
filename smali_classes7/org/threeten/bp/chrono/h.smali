.class final Lorg/threeten/bp/chrono/h;
.super Lorg/threeten/bp/chrono/g;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/b;",
        ">",
        "Lorg/threeten/bp/chrono/g<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final a:Lorg/threeten/bp/chrono/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final b:Lorg/threeten/bp/ZoneOffset;

.field private final c:Lorg/threeten/bp/ZoneId;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;",
            "Lorg/threeten/bp/ZoneOffset;",
            "Lorg/threeten/bp/ZoneId;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/chrono/g;-><init>()V

    const-string v0, "dateTime"

    .line 2
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/d;

    iput-object p1, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    const-string p1, "offset"

    .line 3
    invoke-static {p2, p1}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    iput-object p1, p0, Lorg/threeten/bp/chrono/h;->b:Lorg/threeten/bp/ZoneOffset;

    const-string p1, "zone"

    .line 4
    invoke-static {p3, p1}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZoneId;

    iput-object p1, p0, Lorg/threeten/bp/chrono/h;->c:Lorg/threeten/bp/ZoneId;

    return-void
.end method

.method private a(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/Instant;",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/h<",
            "TD;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/threeten/bp/chrono/h;->d(Lorg/threeten/bp/chrono/i;Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/h;

    move-result-object p1

    return-object p1
.end method

.method static b(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/b;",
            ">(",
            "Lorg/threeten/bp/chrono/d<",
            "TR;>;",
            "Lorg/threeten/bp/ZoneId;",
            "Lorg/threeten/bp/ZoneOffset;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "localDateTime"

    .line 1
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    .line 2
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_0

    .line 4
    new-instance p2, Lorg/threeten/bp/chrono/h;

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p2, p0, v0, p1}, Lorg/threeten/bp/chrono/h;-><init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/d;->c(Lorg/threeten/bp/LocalDateTime;)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/threeten/bp/ZoneOffset;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/d;->b(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDuration()Lorg/threeten/bp/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/d;->h(J)Lorg/threeten/bp/chrono/d;

    move-result-object p0

    .line 13
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 14
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/threeten/bp/ZoneOffset;

    :goto_0
    const-string v0, "offset"

    .line 16
    invoke-static {p2, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lorg/threeten/bp/chrono/h;

    invoke-direct {v0, p0, p2, p1}, Lorg/threeten/bp/chrono/h;-><init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method static d(Lorg/threeten/bp/chrono/i;Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/b;",
            ">(",
            "Lorg/threeten/bp/chrono/i;",
            "Lorg/threeten/bp/Instant;",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/h<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lorg/threeten/bp/zone/d;->a(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    const-string v1, "offset"

    .line 3
    invoke-static {v0, v1}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->getNano()I

    move-result p1

    invoke-static {v1, v2, p1, v0}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/i;->localDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/c;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/chrono/d;

    .line 6
    new-instance p1, Lorg/threeten/bp/chrono/h;

    invoke-direct {p1, p0, v0, p2}, Lorg/threeten/bp/chrono/h;-><init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object p1
.end method

.method static e(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
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

    check-cast v0, Lorg/threeten/bp/chrono/c;

    .line 2
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/ZoneOffset;

    .line 3
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/ZoneId;

    .line 4
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/c;->atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/g;->withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;

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

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/threeten/bp/chrono/k;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/k;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/chrono/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/g;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/g;->compareTo(Lorg/threeten/bp/chrono/g;)I

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

.method public getOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->b:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getZone()Lorg/threeten/bp/ZoneId;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->c:Lorg/threeten/bp/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->toLocalDateTime()Lorg/threeten/bp/chrono/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/c;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/g;)Z
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->isSupportedBy(Lorg/threeten/bp/temporal/c;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/j;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "TD;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->b(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/g;->with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/j;->addTo(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoZonedDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/h;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDateTime()Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->toLocalDateTime()Lorg/threeten/bp/chrono/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->zonedDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->b:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/chrono/g;->withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/g;->toLocalDateTime()Lorg/threeten/bp/chrono/c;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/chrono/d;->until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J

    move-result-wide p1

    return-wide p1

    .line 5
    :cond_0
    invoke-interface {p2, p0, p1}, Lorg/threeten/bp/temporal/j;->between(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/b;)J

    move-result-wide p1

    return-wide p1
.end method

.method public with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/g;",
            "J)",
            "Lorg/threeten/bp/chrono/g<",
            "TD;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 4
    sget-object v1, Lorg/threeten/bp/chrono/h$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->m(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/d;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/chrono/h;->c:Lorg/threeten/bp/ZoneId;

    iget-object p3, p0, Lorg/threeten/bp/chrono/h;->b:Lorg/threeten/bp/ZoneOffset;

    invoke-static {p1, p2, p3}, Lorg/threeten/bp/chrono/h;->b(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    invoke-virtual {p2, p1}, Lorg/threeten/bp/chrono/c;->toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/chrono/h;->c:Lorg/threeten/bp/ZoneId;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/h;->a(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/h;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->toEpochSecond()J

    move-result-wide v0

    sub-long/2addr p2, v0

    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {p0, p2, p3, p1}, Lorg/threeten/bp/chrono/h;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/g;->adjustInto(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/i;->ensureChronoZonedDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/h;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public withEarlierOffsetAtOverlap()Lorg/threeten/bp/chrono/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/g<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v0

    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/d;->b(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/threeten/bp/chrono/h;->b:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lorg/threeten/bp/chrono/h;

    iget-object v2, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    iget-object v3, p0, Lorg/threeten/bp/chrono/h;->c:Lorg/threeten/bp/ZoneId;

    invoke-direct {v1, v2, v0, v3}, Lorg/threeten/bp/chrono/h;-><init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public withLaterOffsetAtOverlap()Lorg/threeten/bp/chrono/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/g<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v0

    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/d;->b(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/h;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lorg/threeten/bp/chrono/h;

    iget-object v2, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    iget-object v3, p0, Lorg/threeten/bp/chrono/h;->c:Lorg/threeten/bp/ZoneId;

    invoke-direct {v1, v2, v0, v3}, Lorg/threeten/bp/chrono/h;-><init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "TD;>;"
        }
    .end annotation

    const-string v0, "zone"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->c:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    iget-object v1, p0, Lorg/threeten/bp/chrono/h;->b:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/c;->toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/h;->a(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/h;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    iget-object v1, p0, Lorg/threeten/bp/chrono/h;->b:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1, v1}, Lorg/threeten/bp/chrono/h;->b(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/g;

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->a:Lorg/threeten/bp/chrono/d;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->b:Lorg/threeten/bp/ZoneOffset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lorg/threeten/bp/chrono/h;->c:Lorg/threeten/bp/ZoneId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
