.class public final Lorg/threeten/bp/format/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/c$f;,
        Lorg/threeten/bp/format/c$r;,
        Lorg/threeten/bp/format/c$s;,
        Lorg/threeten/bp/format/c$l;,
        Lorg/threeten/bp/format/c$j;,
        Lorg/threeten/bp/format/c$q;,
        Lorg/threeten/bp/format/c$i;,
        Lorg/threeten/bp/format/c$n;,
        Lorg/threeten/bp/format/c$k;,
        Lorg/threeten/bp/format/c$p;,
        Lorg/threeten/bp/format/c$e;,
        Lorg/threeten/bp/format/c$o;,
        Lorg/threeten/bp/format/c$m;,
        Lorg/threeten/bp/format/c$g;,
        Lorg/threeten/bp/format/c$h;
    }
.end annotation


# static fields
.field private static final h:Lorg/threeten/bp/temporal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/i<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/threeten/bp/temporal/g;",
            ">;"
        }
    .end annotation
.end field

.field static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lorg/threeten/bp/format/c;

.field private final b:Lorg/threeten/bp/format/c;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/threeten/bp/format/c$h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private e:I

.field private f:C

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/threeten/bp/format/c$a;

    invoke-direct {v0}, Lorg/threeten/bp/format/c$a;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/c;->h:Lorg/threeten/bp/temporal/i;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/c;->i:Ljava/util/Map;

    const/16 v1, 0x47

    .line 3
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x79

    .line 4
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x71

    .line 7
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4d

    .line 8
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4c

    .line 9
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x44

    .line 10
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64

    .line 11
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x46

    .line 12
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    .line 13
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x63

    .line 14
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x65

    .line 15
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x61

    .line 16
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x48

    .line 17
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6b

    .line 18
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b

    .line 19
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x68

    .line 20
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6d

    .line 21
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x73

    .line 22
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    .line 23
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    .line 24
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6e

    .line 25
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e

    .line 26
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lorg/threeten/bp/format/c$c;

    invoke-direct {v0}, Lorg/threeten/bp/format/c$c;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/c;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/threeten/bp/format/c;->g:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/threeten/bp/format/c;->b:Lorg/threeten/bp/format/c;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/threeten/bp/format/c;->d:Z

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/format/c;Z)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lorg/threeten/bp/format/c;->g:I

    .line 11
    iput-object p1, p0, Lorg/threeten/bp/format/c;->b:Lorg/threeten/bp/format/c;

    .line 12
    iput-boolean p2, p0, Lorg/threeten/bp/format/c;->d:Z

    return-void
.end method

.method private e(Lorg/threeten/bp/format/c$h;)I
    .locals 3

    const-string v0, "pp"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget v1, v0, Lorg/threeten/bp/format/c;->e:I

    if-lez v1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    new-instance v2, Lorg/threeten/bp/format/c$m;

    iget-char v0, v0, Lorg/threeten/bp/format/c;->f:C

    invoke-direct {v2, p1, v1, v0}, Lorg/threeten/bp/format/c$m;-><init>(Lorg/threeten/bp/format/c$h;IC)V

    move-object p1, v2

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    const/4 v1, 0x0

    iput v1, v0, Lorg/threeten/bp/format/c;->e:I

    .line 5
    iput-char v1, v0, Lorg/threeten/bp/format/c;->f:C

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget-object v0, v0, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    const/4 v0, -0x1

    iput v0, p1, Lorg/threeten/bp/format/c;->g:I

    .line 8
    iget-object p1, p1, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private l(Lorg/threeten/bp/format/c$k;)Lorg/threeten/bp/format/c;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget v1, v0, Lorg/threeten/bp/format/c;->g:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/threeten/bp/format/c$k;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget v1, v0, Lorg/threeten/bp/format/c;->g:I

    .line 4
    iget-object v0, v0, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/c$k;

    .line 5
    iget v2, p1, Lorg/threeten/bp/format/c$k;->b:I

    iget v3, p1, Lorg/threeten/bp/format/c$k;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lorg/threeten/bp/format/c$k;->d:Lorg/threeten/bp/format/SignStyle;

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne v2, v4, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Lorg/threeten/bp/format/c$k;->g(I)Lorg/threeten/bp/format/c$k;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lorg/threeten/bp/format/c$k;->f()Lorg/threeten/bp/format/c$k;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    .line 8
    iget-object p1, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iput v1, p1, Lorg/threeten/bp/format/c;->g:I

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/format/c$k;->f()Lorg/threeten/bp/format/c$k;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    move-result p1

    iput p1, v2, Lorg/threeten/bp/format/c;->g:I

    .line 11
    :goto_0
    iget-object p1, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget-object p1, p1, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    move-result p1

    iput p1, v0, Lorg/threeten/bp/format/c;->g:I

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;
    .locals 1

    const-string v0, "formatter"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/b;->k(Z)Lorg/threeten/bp/format/c$g;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public b(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/c;
    .locals 1

    const-string v0, "textStyle"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/threeten/bp/format/c$f;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/c$f;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public c(Lorg/threeten/bp/temporal/g;IIZ)Lorg/threeten/bp/format/c;
    .locals 1

    new-instance v0, Lorg/threeten/bp/format/c$i;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/c$i;-><init>(Lorg/threeten/bp/temporal/g;IIZ)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public d()Lorg/threeten/bp/format/c;
    .locals 2

    new-instance v0, Lorg/threeten/bp/format/c$j;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/c$j;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public f(C)Lorg/threeten/bp/format/c;
    .locals 1

    new-instance v0, Lorg/threeten/bp/format/c$e;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/c$e;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lorg/threeten/bp/format/c;
    .locals 2

    const-string v0, "literal"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lorg/threeten/bp/format/c$e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/c$e;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/c$p;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/c$p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/c;
    .locals 1

    new-instance v0, Lorg/threeten/bp/format/c$l;

    invoke-direct {v0, p2, p1}, Lorg/threeten/bp/format/c$l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public i()Lorg/threeten/bp/format/c;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/c$l;->d:Lorg/threeten/bp/format/c$l;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public j(Lorg/threeten/bp/temporal/g;Ljava/util/Map;)Lorg/threeten/bp/format/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/threeten/bp/format/c;"
        }
    .end annotation

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textLookup"

    .line 2
    invoke-static {p2, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 4
    sget-object p2, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 5
    new-instance v1, Lorg/threeten/bp/format/h$b;

    invoke-direct {v1, v0}, Lorg/threeten/bp/format/h$b;-><init>(Ljava/util/Map;)V

    .line 6
    new-instance v0, Lorg/threeten/bp/format/c$b;

    invoke-direct {v0, p0, v1}, Lorg/threeten/bp/format/c$b;-><init>(Lorg/threeten/bp/format/c;Lorg/threeten/bp/format/h$b;)V

    .line 7
    new-instance v1, Lorg/threeten/bp/format/c$q;

    invoke-direct {v1, p1, p2, v0}, Lorg/threeten/bp/format/c$q;-><init>(Lorg/threeten/bp/temporal/g;Lorg/threeten/bp/format/TextStyle;Lorg/threeten/bp/format/f;)V

    invoke-direct {p0, v1}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public k(Lorg/threeten/bp/temporal/g;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/c;
    .locals 2

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textStyle"

    .line 2
    invoke-static {p2, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lorg/threeten/bp/format/c$q;

    invoke-static {}, Lorg/threeten/bp/format/f;->b()Lorg/threeten/bp/format/f;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/threeten/bp/format/c$q;-><init>(Lorg/threeten/bp/temporal/g;Lorg/threeten/bp/format/TextStyle;Lorg/threeten/bp/format/f;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public m(Lorg/threeten/bp/temporal/g;I)Lorg/threeten/bp/format/c;
    .locals 2

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    .line 2
    new-instance v0, Lorg/threeten/bp/format/c$k;

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Lorg/threeten/bp/format/c$k;-><init>(Lorg/threeten/bp/temporal/g;IILorg/threeten/bp/format/SignStyle;)V

    .line 3
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->l(Lorg/threeten/bp/format/c$k;)Lorg/threeten/bp/format/c;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Lorg/threeten/bp/temporal/g;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/c;
    .locals 2

    if-ne p2, p3, :cond_0

    .line 1
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne p4, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lorg/threeten/bp/format/c;->m(Lorg/threeten/bp/temporal/g;I)Lorg/threeten/bp/format/c;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "field"

    .line 3
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signStyle"

    .line 4
    invoke-static {p4, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0x13

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_2

    if-gt p3, v1, :cond_2

    if-lt p3, p2, :cond_1

    .line 5
    new-instance v0, Lorg/threeten/bp/format/c$k;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/c$k;-><init>(Lorg/threeten/bp/temporal/g;IILorg/threeten/bp/format/SignStyle;)V

    .line 6
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->l(Lorg/threeten/bp/format/c$k;)Lorg/threeten/bp/format/c;

    return-object p0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()Lorg/threeten/bp/format/c;
    .locals 3

    new-instance v0, Lorg/threeten/bp/format/c$r;

    sget-object v1, Lorg/threeten/bp/format/c;->h:Lorg/threeten/bp/temporal/i;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/c$r;-><init>(Lorg/threeten/bp/temporal/i;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public p(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/c;
    .locals 1

    new-instance v0, Lorg/threeten/bp/format/c$s;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/c$s;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public q()Lorg/threeten/bp/format/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget-object v1, v0, Lorg/threeten/bp/format/c;->b:Lorg/threeten/bp/format/c;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Lorg/threeten/bp/format/c$g;

    iget-object v1, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget-object v2, v1, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    iget-boolean v1, v1, Lorg/threeten/bp/format/c;->d:Z

    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/format/c$g;-><init>(Ljava/util/List;Z)V

    .line 4
    iget-object v1, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget-object v1, v1, Lorg/threeten/bp/format/c;->b:Lorg/threeten/bp/format/c;

    iput-object v1, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    .line 5
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget-object v0, v0, Lorg/threeten/bp/format/c;->b:Lorg/threeten/bp/format/c;

    iput-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    :goto_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Lorg/threeten/bp/format/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    const/4 v1, -0x1

    iput v1, v0, Lorg/threeten/bp/format/c;->g:I

    .line 2
    new-instance v1, Lorg/threeten/bp/format/c;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/threeten/bp/format/c;-><init>(Lorg/threeten/bp/format/c;Z)V

    iput-object v1, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    return-object p0
.end method

.method public s()Lorg/threeten/bp/format/c;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/c$o;->b:Lorg/threeten/bp/format/c$o;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public t()Lorg/threeten/bp/format/c;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/c$o;->a:Lorg/threeten/bp/format/c$o;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public u()Lorg/threeten/bp/format/c;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/c$o;->d:Lorg/threeten/bp/format/c$o;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->e(Lorg/threeten/bp/format/c$h;)I

    return-object p0
.end method

.method public v()Lorg/threeten/bp/format/b;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/c;->w(Ljava/util/Locale;)Lorg/threeten/bp/format/b;

    move-result-object v0

    return-object v0
.end method

.method public w(Ljava/util/Locale;)Lorg/threeten/bp/format/b;
    .locals 9

    const-string v0, "locale"

    .line 1
    invoke-static {p1, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/format/c;->a:Lorg/threeten/bp/format/c;

    iget-object v0, v0, Lorg/threeten/bp/format/c;->b:Lorg/threeten/bp/format/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/format/c;->q()Lorg/threeten/bp/format/c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lorg/threeten/bp/format/c$g;

    iget-object v0, p0, Lorg/threeten/bp/format/c;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/format/c$g;-><init>(Ljava/util/List;Z)V

    .line 5
    new-instance v0, Lorg/threeten/bp/format/b;

    sget-object v4, Lorg/threeten/bp/format/g;->e:Lorg/threeten/bp/format/g;

    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/b;-><init>(Lorg/threeten/bp/format/c$g;Ljava/util/Locale;Lorg/threeten/bp/format/g;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/i;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method x(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/b;
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/format/c;->v()Lorg/threeten/bp/format/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/b;->m(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/b;

    move-result-object p1

    return-object p1
.end method
