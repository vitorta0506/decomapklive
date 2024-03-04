.class public Lpe/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpe/c;->a:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lpe/c;->a:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final b(Ljava/util/Date;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lpe/c;->a:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x2

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final c(Ljava/util/Date;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lpe/c;->a:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method
