.class public final Lcom/google/api/core/NanoClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5/a;
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_CLOCK:Lk5/a;

.field private static final serialVersionUID:J = 0x4ce73af4941b7b21L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/api/core/NanoClock;

    invoke-direct {v0}, Lcom/google/api/core/NanoClock;-><init>()V

    sput-object v0, Lcom/google/api/core/NanoClock;->DEFAULT_CLOCK:Lk5/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultClock()Lk5/a;
    .locals 1

    sget-object v0, Lcom/google/api/core/NanoClock;->DEFAULT_CLOCK:Lk5/a;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    sget-object v0, Lcom/google/api/core/NanoClock;->DEFAULT_CLOCK:Lk5/a;

    return-object v0
.end method


# virtual methods
.method public final millisTime()J
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/google/api/core/NanoClock;->nanoTime()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method