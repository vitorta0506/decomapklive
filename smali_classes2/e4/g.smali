.class public Le4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le4/d;


# static fields
.field private static final a:Le4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le4/g;

    invoke-direct {v0}, Le4/g;-><init>()V

    sput-object v0, Le4/g;->a:Le4/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Le4/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Le4/g;->a:Le4/g;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
