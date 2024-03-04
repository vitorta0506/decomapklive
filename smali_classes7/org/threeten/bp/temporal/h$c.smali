.class Lorg/threeten/bp/temporal/h$c;
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
        "Lorg/threeten/bp/temporal/j;",
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

    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/h$c;->b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/temporal/j;

    move-result-object p1

    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/temporal/j;
    .locals 0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/temporal/j;

    return-object p1
.end method
