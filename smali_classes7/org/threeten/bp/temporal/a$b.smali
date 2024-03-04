.class abstract enum Lorg/threeten/bp/temporal/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/a$b;",
        ">;",
        "Lorg/threeten/bp/temporal/g;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/temporal/a$b;

.field public static final enum b:Lorg/threeten/bp/temporal/a$b;

.field public static final enum c:Lorg/threeten/bp/temporal/a$b;

.field public static final enum d:Lorg/threeten/bp/temporal/a$b;

.field private static final e:[I

.field private static final synthetic f:[Lorg/threeten/bp/temporal/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/threeten/bp/temporal/a$b$a;

    const-string v1, "DAY_OF_QUARTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/temporal/a$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/temporal/a$b;->a:Lorg/threeten/bp/temporal/a$b;

    .line 2
    new-instance v1, Lorg/threeten/bp/temporal/a$b$b;

    const-string v3, "QUARTER_OF_YEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/threeten/bp/temporal/a$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/threeten/bp/temporal/a$b;->b:Lorg/threeten/bp/temporal/a$b;

    .line 3
    new-instance v3, Lorg/threeten/bp/temporal/a$b$c;

    const-string v5, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/threeten/bp/temporal/a$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/threeten/bp/temporal/a$b;->c:Lorg/threeten/bp/temporal/a$b;

    .line 4
    new-instance v5, Lorg/threeten/bp/temporal/a$b$d;

    const-string v7, "WEEK_BASED_YEAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/threeten/bp/temporal/a$b$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/threeten/bp/temporal/a$b;->d:Lorg/threeten/bp/temporal/a$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/threeten/bp/temporal/a$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/threeten/bp/temporal/a$b;->f:[Lorg/threeten/bp/temporal/a$b;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    sput-object v0, Lorg/threeten/bp/temporal/a$b;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/threeten/bp/temporal/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/a$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lorg/threeten/bp/temporal/c;)Z
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/temporal/a$b;->k(Lorg/threeten/bp/temporal/c;)Z

    move-result p0

    return p0
.end method

.method static synthetic b()[I
    .locals 1

    sget-object v0, Lorg/threeten/bp/temporal/a$b;->e:[I

    return-object v0
.end method

.method static synthetic c(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/temporal/a$b;->j(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lorg/threeten/bp/LocalDate;)I
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/temporal/a$b;->g(Lorg/threeten/bp/LocalDate;)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lorg/threeten/bp/LocalDate;)I
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/temporal/a$b;->h(Lorg/threeten/bp/LocalDate;)I

    move-result p0

    return p0
.end method

.method static synthetic f(I)I
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/temporal/a$b;->i(I)I

    move-result p0

    return p0
.end method

.method private static g(Lorg/threeten/bp/LocalDate;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    .line 3
    div-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x3

    const/4 v3, -0x3

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    if-ge v1, v0, :cond_1

    const/16 v0, 0xb4

    .line 4
    invoke-virtual {p0, v0}, Lorg/threeten/bp/LocalDate;->withDayOfYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDate;->minusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/temporal/a$b;->j(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_1
    sub-int/2addr v1, v0

    .line 5
    div-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    const/16 v4, 0x35

    if-ne v1, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    return v2
.end method

.method private static h(Lorg/threeten/bp/LocalDate;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, -0x2

    if-ge v1, p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v3

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static i(I)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/DayOfWeek;->THURSDAY:Lorg/threeten/bp/DayOfWeek;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/DayOfWeek;->WEDNESDAY:Lorg/threeten/bp/DayOfWeek;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x34

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x35

    return p0
.end method

.method private static j(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/threeten/bp/temporal/a$b;->h(Lorg/threeten/bp/LocalDate;)I

    move-result p0

    .line 2
    invoke-static {p0}, Lorg/threeten/bp/temporal/a$b;->i(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p0

    return-object p0
.end method

.method private static k(Lorg/threeten/bp/temporal/c;)Z
    .locals 1

    invoke-static {p0}, Lorg/threeten/bp/chrono/i;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/i;

    move-result-object p0

    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/i;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/a$b;
    .locals 1

    const-class v0, Lorg/threeten/bp/temporal/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/temporal/a$b;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/a$b;
    .locals 1

    sget-object v0, Lorg/threeten/bp/temporal/a$b;->f:[Lorg/threeten/bp/temporal/a$b;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/a$b;

    return-object v0
.end method


# virtual methods
.method public isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resolve(Ljava/util/Map;Lorg/threeten/bp/temporal/c;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/temporal/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/temporal/c;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/temporal/c;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
