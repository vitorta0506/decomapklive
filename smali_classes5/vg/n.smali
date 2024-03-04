.class abstract Lvg/n;
.super Lvg/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/p<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final h:J


# instance fields
.field private volatile g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lvg/n;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lwg/c;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lvg/n;->h:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lvg/p;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final f()J
    .locals 2

    iget-wide v0, p0, Lvg/n;->g:J

    return-wide v0
.end method

.method final u()J
    .locals 3

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v1, Lvg/n;->h:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final x(J)V
    .locals 6

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lvg/n;->h:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method
