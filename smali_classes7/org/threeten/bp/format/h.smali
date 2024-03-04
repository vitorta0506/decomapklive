.class final Lorg/threeten/bp/format/h;
.super Lorg/threeten/bp/format/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/h$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Map$Entry<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/threeten/bp/format/h$a;

    invoke-direct {v0}, Lorg/threeten/bp/format/h$a;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/h;->c:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/format/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/threeten/bp/format/h;->b:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    invoke-static {p0, p1}, Lorg/threeten/bp/format/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/h;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method private static g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Ljava/util/Map$Entry<",
            "TA;TB;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static h(Ljava/util/Map;)Lorg/threeten/bp/format/h$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/format/TextStyle;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/threeten/bp/format/h$b;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    sget-object v1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    sget-object v1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/threeten/bp/format/TextStyle;->NARROW_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/h$b;

    invoke-direct {v0, p0}, Lorg/threeten/bp/format/h$b;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private i(Lorg/threeten/bp/temporal/g;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v4, 0x7

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x6

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x5

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v7, 0x4

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, 0x3

    .line 6
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/16 v9, 0x2

    .line 7
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v16, 0x1

    .line 8
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    if-ne v1, v3, :cond_0

    .line 9
    invoke-static/range {p2 .. p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v18, 0x8

    .line 11
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-wide/16 v18, 0x9

    .line 12
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-wide/16 v18, 0xa

    .line 13
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-wide/16 v18, 0xb

    .line 14
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v18, 0xc

    .line 15
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 16
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 p1, v1

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v19, 0x0

    .line 18
    aget-object v0, v18, v19

    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v11

    const/4 v0, 0x1

    .line 19
    aget-object v11, v18, v0

    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 20
    aget-object v11, v18, v0

    invoke-interface {v1, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 21
    aget-object v11, v18, v0

    invoke-interface {v1, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 22
    aget-object v11, v18, v0

    invoke-interface {v1, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 23
    aget-object v11, v18, v0

    invoke-interface {v1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 24
    aget-object v11, v18, v0

    invoke-interface {v1, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 25
    aget-object v11, v18, v0

    invoke-interface {v1, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    .line 26
    aget-object v11, v18, v0

    invoke-interface {v1, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x9

    .line 27
    aget-object v0, v18, v11

    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    .line 28
    aget-object v11, v18, v0

    invoke-interface {v1, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xb

    .line 29
    aget-object v0, v18, v11

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 32
    aget-object v11, v18, v1

    move-object/from16 v1, p0

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v10

    move-object/from16 v10, v19

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    aget-object v11, v18, v3

    const/4 v3, 0x2

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    aget-object v11, v18, v3

    const/4 v3, 0x3

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    aget-object v11, v18, v3

    const/4 v3, 0x4

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    aget-object v11, v18, v3

    const/4 v3, 0x5

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    aget-object v11, v18, v3

    const/4 v3, 0x6

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    aget-object v11, v18, v3

    const/4 v3, 0x7

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    aget-object v11, v18, v3

    const/16 v3, 0x8

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    aget-object v11, v18, v3

    const/16 v3, 0x9

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    aget-object v11, v18, v3

    const/16 v3, 0xa

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    aget-object v11, v18, v3

    const/16 v3, 0xb

    invoke-direct {v1, v3, v11, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xc

    move-object/from16 v19, v12

    .line 43
    aget-object v12, v18, v3

    invoke-direct {v1, v11, v12, v2}, Lorg/threeten/bp/format/h;->l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v2, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    move-object/from16 v11, v20

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual/range {p1 .. p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    .line 47
    aget-object v12, v0, v12

    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    .line 48
    aget-object v10, v0, v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x2

    .line 49
    aget-object v9, v0, v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    .line 50
    aget-object v8, v0, v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x4

    .line 51
    aget-object v7, v0, v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x5

    .line 52
    aget-object v6, v0, v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x6

    .line 53
    aget-object v5, v0, v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x7

    .line 54
    aget-object v4, v0, v4

    invoke-interface {v2, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    .line 55
    aget-object v4, v0, v4

    invoke-interface {v2, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x9

    .line 56
    aget-object v4, v0, v4

    invoke-interface {v2, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    .line 57
    aget-object v4, v0, v4

    move-object/from16 v5, v19

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xb

    .line 58
    aget-object v0, v0, v4

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v11, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v11}, Lorg/threeten/bp/format/h;->h(Ljava/util/Map;)Lorg/threeten/bp/format/h$b;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v10, v11

    .line 61
    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    if-ne v1, v3, :cond_1

    .line 62
    invoke-static/range {p2 .. p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 63
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v11

    .line 65
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v13, 0x2

    .line 66
    aget-object v14, v11, v13

    invoke-interface {v12, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x3

    .line 67
    aget-object v14, v11, v13

    invoke-interface {v12, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x4

    .line 68
    aget-object v14, v11, v13

    invoke-interface {v12, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x5

    .line 69
    aget-object v14, v11, v13

    invoke-interface {v12, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x6

    .line 70
    aget-object v14, v11, v13

    invoke-interface {v12, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x7

    .line 71
    aget-object v14, v11, v13

    invoke-interface {v12, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    .line 72
    aget-object v14, v11, v13

    invoke-interface {v12, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v14, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v3, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v14, 0x2

    .line 75
    aget-object v15, v11, v14

    invoke-direct {v0, v13, v15, v2}, Lorg/threeten/bp/format/h;->k(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x3

    .line 76
    aget-object v15, v11, v13

    invoke-direct {v0, v14, v15, v2}, Lorg/threeten/bp/format/h;->k(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x4

    .line 77
    aget-object v15, v11, v14

    invoke-direct {v0, v13, v15, v2}, Lorg/threeten/bp/format/h;->k(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x5

    .line 78
    aget-object v15, v11, v13

    invoke-direct {v0, v14, v15, v2}, Lorg/threeten/bp/format/h;->k(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x6

    .line 79
    aget-object v15, v11, v14

    invoke-direct {v0, v13, v15, v2}, Lorg/threeten/bp/format/h;->k(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x7

    .line 80
    aget-object v15, v11, v13

    invoke-direct {v0, v14, v15, v2}, Lorg/threeten/bp/format/h;->k(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 81
    aget-object v11, v11, v14

    invoke-direct {v0, v13, v11, v2}, Lorg/threeten/bp/format/h;->k(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v2, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v3, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v11, 0x2

    .line 85
    aget-object v11, v1, v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x3

    .line 86
    aget-object v10, v1, v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x4

    .line 87
    aget-object v9, v1, v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x5

    .line 88
    aget-object v8, v1, v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x6

    .line 89
    aget-object v7, v1, v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x7

    .line 90
    aget-object v6, v1, v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 91
    aget-object v1, v1, v5

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v3}, Lorg/threeten/bp/format/h;->h(Ljava/util/Map;)Lorg/threeten/bp/format/h$b;

    move-result-object v1

    return-object v1

    .line 94
    :cond_1
    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 95
    invoke-static/range {p2 .. p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 100
    aget-object v1, v1, v4

    invoke-interface {v3, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {v2}, Lorg/threeten/bp/format/h;->h(Ljava/util/Map;)Lorg/threeten/bp/format/h$b;

    move-result-object v1

    return-object v1

    .line 104
    :cond_2
    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne v1, v3, :cond_4

    .line 105
    invoke-static/range {p2 .. p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 106
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v9, v1, v8

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    .line 110
    aget-object v8, v1, v7

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v7, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "Before Christ"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Anno Domini"

    .line 115
    invoke-interface {v2, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v6, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_3
    sget-object v2, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v6, v1, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    aget-object v1, v1, v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {v3}, Lorg/threeten/bp/format/h;->h(Ljava/util/Map;)Lorg/threeten/bp/format/h$b;

    move-result-object v1

    return-object v1

    .line 123
    :cond_4
    sget-object v2, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/g;

    if-ne v1, v2, :cond_5

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 125
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Q1"

    .line 126
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Q2"

    .line 127
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Q3"

    .line 128
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Q4"

    .line 129
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v3, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "1st quarter"

    .line 132
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "2nd quarter"

    .line 133
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "3rd quarter"

    .line 134
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "4th quarter"

    .line 135
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v3, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {v1}, Lorg/threeten/bp/format/h;->h(Ljava/util/Map;)Lorg/threeten/bp/format/h$b;

    move-result-object v1

    return-object v1

    :cond_5
    const-string v1, ""

    return-object v1
.end method

.method private j(Lorg/threeten/bp/temporal/g;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lorg/threeten/bp/format/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/threeten/bp/format/h;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/h;->i(Lorg/threeten/bp/temporal/g;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lorg/threeten/bp/format/h;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lorg/threeten/bp/format/h;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private k(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "\u65e5"

    return-object p1

    :pswitch_1
    const-string p1, "\u516d"

    return-object p1

    :pswitch_2
    const-string p1, "\u4e94"

    return-object p1

    :pswitch_3
    const-string p1, "\u56db"

    return-object p1

    :pswitch_4
    const-string p1, "\u4e09"

    return-object p1

    :pswitch_5
    const-string p1, "\u4e8c"

    return-object p1

    :pswitch_6
    const-string p1, "\u4e00"

    return-object p1

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_7
    const-string p1, "\u062d"

    return-object p1

    :pswitch_8
    const-string p1, "\u0633"

    return-object p1

    :pswitch_9
    const-string p1, "\u062c"

    return-object p1

    :pswitch_a
    const-string p1, "\u062e"

    return-object p1

    :pswitch_b
    const-string p1, "\u0631"

    return-object p1

    :pswitch_c
    const-string p1, "\u062b"

    return-object p1

    :pswitch_d
    const-string p1, "\u0646"

    return-object p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private l(ILjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "\u5341\u4e8c"

    return-object p1

    :pswitch_1
    const-string p1, "\u5341\u4e00"

    return-object p1

    :pswitch_2
    const-string p1, "\u5341"

    return-object p1

    :pswitch_3
    const-string p1, "\u4e5d"

    return-object p1

    :pswitch_4
    const-string p1, "\u516b"

    return-object p1

    :pswitch_5
    const-string p1, "\u4e03"

    return-object p1

    :pswitch_6
    const-string p1, "\u516d"

    return-object p1

    :pswitch_7
    const-string p1, "\u4e94"

    return-object p1

    :pswitch_8
    const-string p1, "\u56db"

    return-object p1

    :pswitch_9
    const-string p1, "\u4e09"

    return-object p1

    :pswitch_a
    const-string p1, "\u4e8c"

    return-object p1

    :pswitch_b
    const-string p1, "\u4e00"

    return-object p1

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_c
    const-string p1, "\u062f"

    return-object p1

    :pswitch_d
    const-string p1, "\u0628"

    return-object p1

    :pswitch_e
    const-string p1, "\u0643"

    return-object p1

    :pswitch_f
    const-string p1, "\u0633"

    return-object p1

    :pswitch_10
    const-string p1, "\u063a"

    return-object p1

    :pswitch_11
    const-string p1, "\u0644"

    return-object p1

    :pswitch_12
    const-string p1, "\u0646"

    return-object p1

    :pswitch_13
    const-string p1, "\u0648"

    return-object p1

    :pswitch_14
    const-string p1, "\u0623"

    return-object p1

    :pswitch_15
    const-string p1, "\u0645"

    return-object p1

    :pswitch_16
    const-string p1, "\u0641"

    return-object p1

    :pswitch_17
    const-string p1, "\u064a"

    return-object p1

    .line 3
    :cond_1
    :goto_1
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p3

    const-string v0, "JP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public c(Lorg/threeten/bp/temporal/g;JLorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p5}, Lorg/threeten/bp/format/h;->j(Lorg/threeten/bp/temporal/g;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of p5, p1, Lorg/threeten/bp/format/h$b;

    if-eqz p5, :cond_0

    .line 3
    check-cast p1, Lorg/threeten/bp/format/h$b;

    invoke-virtual {p1, p2, p3, p4}, Lorg/threeten/bp/format/h$b;->a(JLorg/threeten/bp/format/TextStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lorg/threeten/bp/temporal/g;Lorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/g;",
            "Lorg/threeten/bp/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/threeten/bp/format/h;->j(Lorg/threeten/bp/temporal/g;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of p3, p1, Lorg/threeten/bp/format/h$b;

    if-eqz p3, :cond_0

    .line 3
    check-cast p1, Lorg/threeten/bp/format/h$b;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/h$b;->b(Lorg/threeten/bp/format/TextStyle;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
