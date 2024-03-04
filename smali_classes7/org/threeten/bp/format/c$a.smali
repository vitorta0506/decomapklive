.class Lorg/threeten/bp/format/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
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

    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/c$a;->b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/ZoneId;

    move-result-object p1

    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/ZoneId;
    .locals 1

    .line 1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->g()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZoneId;

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Lorg/threeten/bp/ZoneOffset;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
