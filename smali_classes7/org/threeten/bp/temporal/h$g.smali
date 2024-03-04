.class Lorg/threeten/bp/temporal/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/i<",
        "Lorg/threeten/bp/LocalTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lorg/threeten/bp/temporal/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/h$g;->b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/LocalTime;
    .locals 2

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
