.class Lorg/threeten/bp/format/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/i<",
        "Lorg/threeten/bp/Period;",
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

    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/b$a;->b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/Period;

    move-result-object p1

    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/Period;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/format/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/threeten/bp/format/a;

    iget-object p1, p1, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/Period;

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    return-object p1
.end method
