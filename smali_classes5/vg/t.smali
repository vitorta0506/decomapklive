.class abstract Lvg/t;
.super Lvg/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/r<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final f:J


# instance fields
.field private volatile e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lvg/t;

    const-string v1, "producerLimit"

    invoke-static {v0, v1}, Lwg/c;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lvg/t;->f:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lvg/r;-><init>(I)V

    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lvg/t;->e:J

    return-void
.end method


# virtual methods
.method final m()J
    .locals 2

    iget-wide v0, p0, Lvg/t;->e:J

    return-wide v0
.end method

.method final n(J)V
    .locals 6

    sget-object v0, Lwg/c;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lvg/t;->f:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method
