.class public abstract Lorg/threeten/bp/chrono/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static between(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/chrono/b;)Lorg/threeten/bp/chrono/e;
    .locals 1

    const-string v0, "startDateInclusive"

    .line 1
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "endDateExclusive"

    .line 2
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/b;->until(Lorg/threeten/bp/chrono/b;)Lorg/threeten/bp/chrono/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract addTo(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(Lorg/threeten/bp/temporal/j;)J
.end method

.method public abstract getChronology()Lorg/threeten/bp/chrono/i;
.end method

.method public abstract getUnits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/threeten/bp/temporal/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public isNegative()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/e;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/temporal/j;

    .line 2
    invoke-virtual {p0, v1}, Lorg/threeten/bp/chrono/e;->get(Lorg/threeten/bp/temporal/j;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/e;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/temporal/j;

    .line 2
    invoke-virtual {p0, v1}, Lorg/threeten/bp/chrono/e;->get(Lorg/threeten/bp/temporal/j;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public abstract minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/e;
.end method

.method public abstract multipliedBy(I)Lorg/threeten/bp/chrono/e;
.end method

.method public negated()Lorg/threeten/bp/chrono/e;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/e;->multipliedBy(I)Lorg/threeten/bp/chrono/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract normalized()Lorg/threeten/bp/chrono/e;
.end method

.method public abstract plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/e;
.end method

.method public abstract subtractFrom(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
