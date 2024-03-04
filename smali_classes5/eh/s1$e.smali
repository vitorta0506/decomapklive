.class final Leh/s1$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J


# direct methods
.method private constructor <init>(JJJJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Leh/s1$e;->a:J

    .line 4
    iput-wide p3, p0, Leh/s1$e;->b:J

    .line 5
    iput-wide p5, p0, Leh/s1$e;->c:J

    .line 6
    iput-wide p7, p0, Leh/s1$e;->d:J

    .line 7
    iput-wide p9, p0, Leh/s1$e;->e:J

    return-void
.end method

.method synthetic constructor <init>(JJJJJLeh/s1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Leh/s1$e;-><init>(JJJJJ)V

    return-void
.end method

.method static synthetic a(Leh/s1$e;)J
    .locals 2

    iget-wide v0, p0, Leh/s1$e;->c:J

    return-wide v0
.end method

.method static synthetic b(Leh/s1$e;)J
    .locals 2

    iget-wide v0, p0, Leh/s1$e;->e:J

    return-wide v0
.end method

.method static synthetic c(Leh/s1$e;)J
    .locals 2

    iget-wide v0, p0, Leh/s1$e;->b:J

    return-wide v0
.end method

.method static synthetic d(Leh/s1$e;)J
    .locals 2

    iget-wide v0, p0, Leh/s1$e;->d:J

    return-wide v0
.end method

.method static synthetic e(Leh/s1$e;)J
    .locals 2

    iget-wide v0, p0, Leh/s1$e;->a:J

    return-wide v0
.end method
