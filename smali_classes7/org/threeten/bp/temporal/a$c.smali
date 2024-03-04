.class final enum Lorg/threeten/bp/temporal/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/a$c;",
        ">;",
        "Lorg/threeten/bp/temporal/j;"
    }
.end annotation


# static fields
.field public static final enum c:Lorg/threeten/bp/temporal/a$c;

.field public static final enum d:Lorg/threeten/bp/temporal/a$c;

.field private static final synthetic e:[Lorg/threeten/bp/temporal/a$c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/threeten/bp/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/threeten/bp/temporal/a$c;

    const-wide/32 v1, 0x1e18558

    invoke-static {v1, v2}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    const-string v2, "WEEK_BASED_YEARS"

    const/4 v3, 0x0

    const-string v4, "WeekBasedYears"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/threeten/bp/temporal/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/a$c;->c:Lorg/threeten/bp/temporal/a$c;

    .line 2
    new-instance v1, Lorg/threeten/bp/temporal/a$c;

    const-wide/32 v4, 0x786156

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    const-string v4, "QUARTER_YEARS"

    const/4 v5, 0x1

    const-string v6, "QuarterYears"

    invoke-direct {v1, v4, v5, v6, v2}, Lorg/threeten/bp/temporal/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v1, Lorg/threeten/bp/temporal/a$c;->d:Lorg/threeten/bp/temporal/a$c;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/threeten/bp/temporal/a$c;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 3
    sput-object v2, Lorg/threeten/bp/temporal/a$c;->e:[Lorg/threeten/bp/temporal/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/Duration;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/threeten/bp/temporal/a$c;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lorg/threeten/bp/temporal/a$c;->b:Lorg/threeten/bp/Duration;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/a$c;
    .locals 1

    const-class v0, Lorg/threeten/bp/temporal/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/temporal/a$c;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/a$c;
    .locals 1

    sget-object v0, Lorg/threeten/bp/temporal/a$c;->e:[Lorg/threeten/bp/temporal/a$c;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/a$c;

    return-object v0
.end method


# virtual methods
.method public addTo(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/b;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x100

    .line 2
    div-long v2, p2, v0

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    rem-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long p2, p2, v0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v0}, Lorg/threeten/bp/temporal/b;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/a;->d:Lorg/threeten/bp/temporal/g;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Ljl/d;->k(JJ)J

    move-result-wide p2

    .line 5
    invoke-interface {p1, v0, p2, p3}, Lorg/threeten/bp/temporal/b;->with(Lorg/threeten/bp/temporal/g;J)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    return-object p1
.end method

.method public between(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/b;)J
    .locals 3

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, p2, v0}, Lorg/threeten/bp/temporal/b;->until(Lorg/threeten/bp/temporal/b;Lorg/threeten/bp/temporal/j;)J

    move-result-wide p1

    const-wide/16 v0, 0x3

    div-long/2addr p1, v0

    return-wide p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/a;->d:Lorg/threeten/bp/temporal/g;

    invoke-interface {p2, v0}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v1

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Ljl/d;->p(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDuration()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/temporal/a$c;->b:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDurationEstimated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/b;)Z
    .locals 1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result p1

    return p1
.end method

.method public isTimeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/temporal/a$c;->a:Ljava/lang/String;

    return-object v0
.end method
