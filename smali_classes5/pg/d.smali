.class public final Lpg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/util/BitSet;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:Lug/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/n<",
            "Lpg/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/GregorianCalendar;

.field private final b:Ljava/lang/StringBuilder;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lpg/d;->m:Ljava/util/BitSet;

    const/16 v1, 0x9

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v0, 0x20

    :goto_0
    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    .line 3
    sget-object v1, Lpg/d;->m:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x40

    if-gt v0, v1, :cond_1

    .line 4
    sget-object v1, Lpg/d;->m:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x5b

    :goto_2
    const/16 v1, 0x60

    if-gt v0, v1, :cond_2

    .line 5
    sget-object v1, Lpg/d;->m:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_2

    :cond_2
    const/16 v0, 0x7b

    :goto_3
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_3

    .line 6
    sget-object v1, Lpg/d;->m:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_3

    :cond_3
    const-string v1, "Sun"

    const-string v2, "Mon"

    const-string v3, "Tue"

    const-string v4, "Wed"

    const-string v5, "Thu"

    const-string v6, "Fri"

    const-string v7, "Sat"

    .line 7
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpg/d;->n:[Ljava/lang/String;

    const-string v1, "Jan"

    const-string v2, "Feb"

    const-string v3, "Mar"

    const-string v4, "Apr"

    const-string v5, "May"

    const-string v6, "Jun"

    const-string v7, "Jul"

    const-string v8, "Aug"

    const-string v9, "Sep"

    const-string v10, "Oct"

    const-string v11, "Nov"

    const-string v12, "Dec"

    .line 8
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpg/d;->o:[Ljava/lang/String;

    .line 9
    new-instance v0, Lpg/d$a;

    invoke-direct {v0}, Lpg/d$a;-><init>()V

    sput-object v0, Lpg/d;->p:Lug/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lpg/d;->b:Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lpg/d;->f()V

    return-void
.end method

.method synthetic constructor <init>(Lpg/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpg/d;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Date;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    iget-object v0, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 2
    sget-object p1, Lpg/d;->n:[Ljava/lang/String;

    iget-object v0, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p1, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-static {p1, p2}, Lpg/d;->b(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    sget-object p1, Lpg/d;->o:[Ljava/lang/String;

    iget-object v2, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object p1, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-static {p1, p2}, Lpg/d;->b(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object p1, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-static {p1, p2}, Lpg/d;->b(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object p1, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-static {p1, p2}, Lpg/d;->b(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " GMT"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private static b(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/16 v0, 0x30

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public static c(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lpg/d;->e()Lpg/d;

    move-result-object v0

    const-string v1, "date"

    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    invoke-direct {v0, p0}, Lpg/d;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpg/d;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lpg/d;->a(Ljava/util/Date;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p0, Lpg/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static e()Lpg/d;
    .locals 1

    .line 1
    sget-object v0, Lpg/d;->p:Lug/n;

    invoke-virtual {v0}, Lug/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpg/d;

    .line 2
    invoke-virtual {v0}, Lpg/d;->f()V

    return-object v0
.end method


# virtual methods
.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lpg/d;->c:Z

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lpg/d;->d:I

    .line 3
    iput v1, p0, Lpg/d;->e:I

    .line 4
    iput v1, p0, Lpg/d;->f:I

    .line 5
    iput-boolean v0, p0, Lpg/d;->g:Z

    .line 6
    iput v1, p0, Lpg/d;->h:I

    .line 7
    iput-boolean v0, p0, Lpg/d;->i:Z

    .line 8
    iput v1, p0, Lpg/d;->j:I

    .line 9
    iput-boolean v0, p0, Lpg/d;->k:Z

    .line 10
    iput v1, p0, Lpg/d;->l:I

    .line 11
    iget-object v1, p0, Lpg/d;->a:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->clear()V

    .line 12
    iget-object v1, p0, Lpg/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method
