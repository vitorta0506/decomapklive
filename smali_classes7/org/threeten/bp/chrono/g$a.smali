.class Lorg/threeten/bp/chrono/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/chrono/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/threeten/bp/chrono/g<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/chrono/g;Lorg/threeten/bp/chrono/g;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/g<",
            "*>;",
            "Lorg/threeten/bp/chrono/g<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/g;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/g;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljl/d;->b(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/g;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/g;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljl/d;->b(JJ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/threeten/bp/chrono/g;

    check-cast p2, Lorg/threeten/bp/chrono/g;

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/g$a;->a(Lorg/threeten/bp/chrono/g;Lorg/threeten/bp/chrono/g;)I

    move-result p1

    return p1
.end method
