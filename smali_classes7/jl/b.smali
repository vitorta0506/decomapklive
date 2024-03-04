.class public abstract Ljl/b;
.super Ljl/c;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljl/c;-><init>()V

    return-void
.end method


# virtual methods
.method public minus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lorg/threeten/bp/temporal/b;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1, p3}, Lorg/threeten/bp/temporal/b;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-interface {p0, p1, p2, p3}, Lorg/threeten/bp/temporal/b;->plus(JLorg/threeten/bp/temporal/j;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->subtractFrom(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/b;
    .locals 0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->addTo(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/b;
    .locals 0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/d;->adjustInto(Lorg/threeten/bp/temporal/b;)Lorg/threeten/bp/temporal/b;

    move-result-object p1

    return-object p1
.end method
