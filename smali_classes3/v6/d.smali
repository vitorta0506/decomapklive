.class public final Lv6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/Timestamp;

.field public static final b:Lcom/google/protobuf/Timestamp;

.field public static final c:Lcom/google/protobuf/Timestamp;

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    const-wide v1, -0xe7791f700L

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/Timestamp$b;->k0(J)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Timestamp$b;->j0(I)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$b;->X()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    sput-object v0, Lv6/d;->a:Lcom/google/protobuf/Timestamp;

    .line 2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    const-wide v2, 0x3afff4417fL

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/Timestamp$b;->k0(J)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    const v2, 0x3b9ac9ff

    invoke-virtual {v0, v2}, Lcom/google/protobuf/Timestamp$b;->j0(I)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$b;->X()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    sput-object v0, Lv6/d;->b:Lcom/google/protobuf/Timestamp;

    .line 3
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/Timestamp$b;->k0(J)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Timestamp$b;->j0(I)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$b;->X()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    sput-object v0, Lv6/d;->c:Lcom/google/protobuf/Timestamp;

    .line 4
    new-instance v0, Lv6/d$a;

    invoke-direct {v0}, Lv6/d$a;-><init>()V

    sput-object v0, Lv6/d;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic a()Ljava/text/SimpleDateFormat;
    .locals 1

    invoke-static {}, Lv6/d;->c()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v2

    .line 3
    invoke-static {v0, v1, v2}, Lv6/d;->f(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999]."

    .line 6
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c()Ljava/text/SimpleDateFormat;
    .locals 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 3
    new-instance v2, Ljava/util/Date;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    return-object v0
.end method

.method static d(I)Ljava/lang/String;
    .locals 11

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    .line 1
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v4, v6

    if-nez v10, :cond_0

    .line 2
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v9, [Ljava/lang/Object;

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v0, "%1$03d"

    invoke-static {p0, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 3
    rem-long v4, v0, v2

    cmp-long v10, v4, v6

    if-nez v10, :cond_1

    .line 4
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v9, [Ljava/lang/Object;

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v0, "%1$06d"

    invoke-static {p0, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v8

    const-string p0, "%1$09d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(J)Lcom/google/protobuf/Timestamp;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    rem-long/2addr p0, v0

    long-to-int p1, p0

    invoke-static {v2, v3, p1}, Lv6/d;->g(JI)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static f(JI)Z
    .locals 4

    const/4 v0, 0x0

    const-wide v1, -0xe7791f700L

    cmp-long v3, p0, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x3afff4417fL

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_2

    int-to-long p0, p2

    const-wide/32 v1, 0x3b9aca00

    cmp-long p2, p0, v1

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method static g(JI)Lcom/google/protobuf/Timestamp;
    .locals 7

    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    const-wide/32 v4, -0x3b9aca00

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 1
    :cond_0
    div-long v4, v0, v2

    invoke-static {p0, p1, v4, v5}, Lcom/google/common/math/e;->a(JJ)J

    move-result-wide p0

    .line 2
    rem-long/2addr v0, v2

    long-to-int p2, v0

    :cond_1
    if-gez p2, :cond_2

    int-to-long v0, p2

    add-long/2addr v0, v2

    long-to-int p2, v0

    const-wide/16 v0, 0x1

    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/e;->c(JJ)J

    move-result-wide p0

    .line 4
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/Timestamp$b;->k0(J)Lcom/google/protobuf/Timestamp$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/Timestamp$b;->j0(I)Lcom/google/protobuf/Timestamp$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp$b;->X()Lcom/google/protobuf/Timestamp;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lv6/d;->b(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/google/protobuf/Timestamp;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lv6/d;->b(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result p0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 6
    sget-object v0, Lv6/d;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string v0, "."

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p0}, Lv6/d;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "Z"

    .line 9
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
