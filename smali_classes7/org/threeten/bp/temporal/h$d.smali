.class Lorg/threeten/bp/temporal/h$d;
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
        "Lorg/threeten/bp/ZoneId;",
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

    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/h$d;->b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/ZoneId;

    move-result-object p1

    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/ZoneId;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/h;->a:Lorg/threeten/bp/temporal/i;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneId;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/h;->e:Lorg/threeten/bp/temporal/i;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/ZoneId;

    :goto_0
    return-object v0
.end method
