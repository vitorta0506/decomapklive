.class abstract Lvg/s;
.super Lvg/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/o<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final d:J


# instance fields
.field private volatile c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lvg/s;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lwg/c;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lvg/s;->d:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lvg/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 2

    iget-wide v0, p0, Lvg/s;->c:J

    return-wide v0
.end method

.method final g(JJ)Z
    .locals 8

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lvg/s;->d:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method
