.class Leh/r2$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static e:Leh/r2$e;


# instance fields
.field private final a:J

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/l2$a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/l1$c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Leh/r2$e;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Leh/r2$e;-><init>(JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    sput-object v6, Leh/r2$e;->e:Leh/r2$e;

    return-void
.end method

.method private constructor <init>(JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Leh/l2$a;",
            ">;",
            "Ljava/util/List<",
            "Leh/l1$c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Leh/r2$e;->a:J

    .line 4
    iput-object p3, p0, Leh/r2$e;->b:Ljava/util/List;

    if-eqz p4, :cond_1

    .line 5
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string p2, "filterChain is empty"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    if-nez p4, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Leh/r2$e;->c:Ljava/util/List;

    .line 7
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Leh/r2$e;->d:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(JLjava/util/List;Ljava/util/List;Ljava/util/Map;Leh/r2$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Leh/r2$e;-><init>(JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a()Leh/r2$e;
    .locals 1

    sget-object v0, Leh/r2$e;->e:Leh/r2$e;

    return-object v0
.end method

.method static synthetic b(Leh/r2$e;)J
    .locals 2

    iget-wide v0, p0, Leh/r2$e;->a:J

    return-wide v0
.end method
