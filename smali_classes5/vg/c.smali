.class abstract Lvg/c;
.super Lvg/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/e<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final f:J


# instance fields
.field private volatile c:J

.field protected d:J

.field protected e:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lvg/c;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lwg/c;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lvg/c;->f:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvg/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()J
    .locals 2

    iget-wide v0, p0, Lvg/c;->c:J

    return-wide v0
.end method

.method final n()J
    .locals 3

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v1, Lvg/c;->f:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final u(J)V
    .locals 6

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lvg/c;->f:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method
