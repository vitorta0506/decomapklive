.class public abstract Ljl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/threeten/bp/temporal/g;)I
    .locals 3

    invoke-virtual {p0, p1}, Ljl/c;->range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-interface {p0, p1}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/g;)I

    move-result p1

    return p1
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
    invoke-static {}, Lorg/threeten/bp/temporal/h;->g()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/h;->a()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/h;->e()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/i;->a(Lorg/threeten/bp/temporal/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
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

    .line 5
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/g;->rangeRefinedBy(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method
