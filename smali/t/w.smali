.class public Lt/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lt/q;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1
    new-instance p1, Lt/l;

    invoke-direct {p1}, Lt/l;-><init>()V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lt/s;

    invoke-direct {p1}, Lt/s;-><init>()V

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Lt/t;

    invoke-direct {p1}, Lt/t;-><init>()V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lt/u;

    invoke-direct {p1}, Lt/u;-><init>()V

    return-object p1

    .line 5
    :cond_3
    new-instance p1, Lt/v;

    invoke-direct {p1}, Lt/v;-><init>()V

    return-object p1
.end method
