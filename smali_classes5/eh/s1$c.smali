.class final Leh/s1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:J


# direct methods
.method private constructor <init>(Ljava/util/Map;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "categorizedDrops"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Leh/s1$c;->a:Ljava/util/Map;

    .line 5
    iput-wide p2, p0, Leh/s1$c;->b:J

    .line 6
    iput-wide p4, p0, Leh/s1$c;->c:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;JJLeh/s1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Leh/s1$c;-><init>(Ljava/util/Map;JJ)V

    return-void
.end method

.method static synthetic a(Leh/s1$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/s1$c;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Leh/s1$c;)J
    .locals 2

    iget-wide v0, p0, Leh/s1$c;->b:J

    return-wide v0
.end method

.method static synthetic c(Leh/s1$c;)J
    .locals 2

    iget-wide v0, p0, Leh/s1$c;->c:J

    return-wide v0
.end method
