.class abstract Lvg/b;
.super Lvg/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/f<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final j:J


# instance fields
.field private volatile g:J

.field protected h:J

.field protected i:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lvg/b;

    const-string v1, "producerLimit"

    invoke-static {v0, v1}, Lwg/c;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lvg/b;->j:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvg/f;-><init>()V

    return-void
.end method


# virtual methods
.method final x(JJ)Z
    .locals 8

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lvg/b;->j:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method final y()J
    .locals 2

    iget-wide v0, p0, Lvg/b;->g:J

    return-wide v0
.end method

.method final z(J)V
    .locals 6

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lvg/b;->j:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method
