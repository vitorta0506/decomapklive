.class final Le3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/h;


# instance fields
.field private final a:Le3/d;

.field private final b:[J

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le3/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le3/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le3/d;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le3/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le3/g;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le3/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le3/h;->a:Le3/d;

    .line 3
    iput-object p3, p0, Le3/h;->d:Ljava/util/Map;

    .line 4
    iput-object p4, p0, Le3/h;->e:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Le3/h;->c:Ljava/util/Map;

    .line 6
    invoke-virtual {p1}, Le3/d;->j()[J

    move-result-object p1

    iput-object p1, p0, Le3/h;->b:[J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Le3/h;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/l0;->e([JJZZ)I

    move-result p1

    .line 2
    iget-object p2, p0, Le3/h;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public b(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lx2/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le3/h;->a:Le3/d;

    iget-object v3, p0, Le3/h;->c:Ljava/util/Map;

    iget-object v4, p0, Le3/h;->d:Ljava/util/Map;

    iget-object v5, p0, Le3/h;->e:Ljava/util/Map;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Le3/d;->h(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(I)J
    .locals 3

    iget-object v0, p0, Le3/h;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Le3/h;->b:[J

    array-length v0, v0

    return v0
.end method
