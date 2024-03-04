.class abstract Lvg/g;
.super Lvg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/d<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final b:J


# instance fields
.field private volatile a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lvg/g;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lwg/c;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lvg/g;->b:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvg/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 2

    iget-wide v0, p0, Lvg/g;->a:J

    return-wide v0
.end method

.method final g(JJ)Z
    .locals 8

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lvg/g;->b:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method final m(J)V
    .locals 6

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lvg/g;->b:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method
