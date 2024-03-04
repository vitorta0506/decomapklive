.class public final Leh/j2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:Leh/j2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leh/j2$a;

    invoke-direct {v0}, Leh/j2$a;-><init>()V

    sput-object v0, Leh/j2$a;->a:Leh/j2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)I
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p1

    return p1
.end method
