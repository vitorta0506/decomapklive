.class public abstract Lorg/threeten/bp/chrono/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/chrono/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/chrono/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/chrono/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final FROM:Lorg/threeten/bp/temporal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/i<",
            "Lorg/threeten/bp/chrono/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCALE_METHOD:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/threeten/bp/chrono/i$a;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/i$a;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/i;->FROM:Lorg/threeten/bp/temporal/i;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    :try_start_0
    const-class v0, Ljava/util/Locale;

    const-string v1, "getUnicodeLocaleType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sput-object v0, Lorg/threeten/bp/chrono/i;->LOCALE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/i;
    .locals 1

    const-string v0, "temporal"

    .line 1
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lorg/threeten/bp/temporal/h;->a()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/chrono/i;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    :goto_0
    return-object p0
.end method

.method public static getAvailableChronologies()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/chrono/i;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/threeten/bp/chrono/i;->init()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static init()V
    .locals 4

    .line 1
    sget-object v0, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-static {v1}, Lorg/threeten/bp/chrono/i;->register(Lorg/threeten/bp/chrono/i;)V

    .line 3
    sget-object v1, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->INSTANCE:Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    invoke-static {v1}, Lorg/threeten/bp/chrono/i;->register(Lorg/threeten/bp/chrono/i;)V

    .line 4
    sget-object v1, Lorg/threeten/bp/chrono/MinguoChronology;->INSTANCE:Lorg/threeten/bp/chrono/MinguoChronology;

    invoke-static {v1}, Lorg/threeten/bp/chrono/i;->register(Lorg/threeten/bp/chrono/i;)V

    .line 5
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    invoke-static {v1}, Lorg/threeten/bp/chrono/i;->register(Lorg/threeten/bp/chrono/i;)V

    .line 6
    sget-object v1, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    invoke-static {v1}, Lorg/threeten/bp/chrono/i;->register(Lorg/threeten/bp/chrono/i;)V

    const-string v2, "Hijrah"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "islamic"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v0, Lorg/threeten/bp/chrono/i;

    const-class v1, Lorg/threeten/bp/chrono/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/chrono/i;

    .line 11
    sget-object v2, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/i;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    sget-object v3, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static of(Ljava/lang/String;)Lorg/threeten/bp/chrono/i;
    .locals 3

    .line 1
    invoke-static {}, Lorg/threeten/bp/chrono/i;->init()V

    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/i;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/i;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofLocale(Ljava/util/Locale;)Lorg/threeten/bp/chrono/i;
    .locals 5

    .line 1
    invoke-static {}, Lorg/threeten/bp/chrono/i;->init()V

    const-string v0, "locale"

    .line 2
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lorg/threeten/bp/chrono/i;->LOCALE_METHOD:Ljava/lang/reflect/Method;

    const-string v1, "iso"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ca"

    aput-object v4, v2, v3

    .line 4
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "japanese"

    goto :goto_0

    :catch_0
    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_4

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "iso8601"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/i;

    if-eqz v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown calendar system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    :goto_1
    sget-object p0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lorg/threeten/bp/chrono/i;->of(Ljava/lang/String;)Lorg/threeten/bp/chrono/i;

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

.method private static register(Lorg/threeten/bp/chrono/i;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/i;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lorg/threeten/bp/chrono/i;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/threeten/bp/chrono/k;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/k;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/threeten/bp/chrono/i;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/i;->compareTo(Lorg/threeten/bp/chrono/i;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/chrono/i;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public abstract date(III)Lorg/threeten/bp/chrono/b;
.end method

.method public date(Lorg/threeten/bp/chrono/j;III)Lorg/threeten/bp/chrono/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/i;->prolepticYear(Lorg/threeten/bp/chrono/j;I)I

    move-result p1

    invoke-virtual {p0, p1, p3, p4}, Lorg/threeten/bp/chrono/i;->date(III)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/b;
.end method

.method public abstract dateEpochDay(J)Lorg/threeten/bp/chrono/b;
.end method

.method public dateNow()Lorg/threeten/bp/chrono/b;
    .locals 1

    .line 1
    invoke-static {}, Lorg/threeten/bp/a;->d()Lorg/threeten/bp/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/i;->dateNow(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/b;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/threeten/bp/a;->c(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/i;->dateNow(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public dateNow(Lorg/threeten/bp/a;)Lorg/threeten/bp/chrono/b;
    .locals 1

    const-string v0, "clock"

    .line 3
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/a;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/i;->date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract dateYearDay(II)Lorg/threeten/bp/chrono/b;
.end method

.method public dateYearDay(Lorg/threeten/bp/chrono/j;II)Lorg/threeten/bp/chrono/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/i;->prolepticYear(Lorg/threeten/bp/chrono/j;I)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lorg/threeten/bp/chrono/i;->dateYearDay(II)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method ensureChronoLocalDate(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/threeten/bp/chrono/b;",
            ">(",
            "Lorg/threeten/bp/temporal/b;",
            ")TD;"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/threeten/bp/chrono/b;

    .line 2
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chrono mismatch, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/threeten/bp/chrono/b;",
            ">(",
            "Lorg/threeten/bp/temporal/b;",
            ")",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/threeten/bp/chrono/d;

    .line 2
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/d;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chrono mismatch, required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/d;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ensureChronoZonedDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/threeten/bp/chrono/b;",
            ">(",
            "Lorg/threeten/bp/temporal/b;",
            ")",
            "Lorg/threeten/bp/chrono/h<",
            "TD;>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/threeten/bp/chrono/h;

    .line 2
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/g;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chrono mismatch, required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/g;->toLocalDate()Lorg/threeten/bp/chrono/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->getChronology()Lorg/threeten/bp/chrono/i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/chrono/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/i;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/i;->compareTo(Lorg/threeten/bp/chrono/i;)I

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

.method public abstract eraOf(I)Lorg/threeten/bp/chrono/j;
.end method

.method public abstract eras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/threeten/bp/chrono/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCalendarType()Ljava/lang/String;
.end method

.method public getDisplayName(Lorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/threeten/bp/format/c;

    invoke-direct {v0}, Lorg/threeten/bp/format/c;-><init>()V

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/c;->b(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/c;->w(Ljava/util/Locale;)Lorg/threeten/bp/format/b;

    move-result-object p1

    new-instance p2, Lorg/threeten/bp/chrono/i$b;

    invoke-direct {p2, p0}, Lorg/threeten/bp/chrono/i$b;-><init>(Lorg/threeten/bp/chrono/i;)V

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/b;->b(Lorg/threeten/bp/temporal/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public abstract isLeapYear(J)Z
.end method

.method public localDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/c;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/i;->date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/b;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lorg/threeten/bp/LocalTime;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/b;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/c;

    move-result-object p1
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public period(III)Lorg/threeten/bp/chrono/e;
    .locals 1

    new-instance v0, Lorg/threeten/bp/chrono/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/threeten/bp/chrono/f;-><init>(Lorg/threeten/bp/chrono/i;III)V

    return-object v0
.end method

.method public abstract prolepticYear(Lorg/threeten/bp/chrono/j;I)I
.end method

.method public abstract range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;
.end method

.method public abstract resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/chrono/b;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/temporal/ChronoField;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state, field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " conflicts with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/Instant;",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "*>;"
        }
    .end annotation

    .line 8
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/chrono/h;->d(Lorg/threeten/bp/chrono/i;Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/h;

    move-result-object p1

    return-object p1
.end method

.method public zonedDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/c;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/threeten/bp/ZoneId;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/ZoneId;

    move-result-object v0
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-static {p1}, Lorg/threeten/bp/Instant;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/Instant;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1, v0}, Lorg/threeten/bp/chrono/i;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/g;

    move-result-object p1
    :try_end_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 4
    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/i;->localDateTime(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/c;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Lorg/threeten/bp/chrono/i;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/chrono/d;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v0, v2}, Lorg/threeten/bp/chrono/h;->b(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/g;

    move-result-object p1
    :try_end_2
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 7
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
