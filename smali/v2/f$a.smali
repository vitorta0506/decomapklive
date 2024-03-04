.class final Lv2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lc2/r;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/base/w<",
            "Lv2/q$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lv2/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lj3/i$a;


# direct methods
.method public constructor <init>(Lc2/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/f$a;->a:Lc2/r;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lv2/f$a;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lv2/f$a;->c:Ljava/util/Set;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lv2/f$a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lj3/i$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/f$a;->e:Lj3/i$a;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lv2/f$a;->e:Lj3/i$a;

    .line 3
    iget-object p1, p0, Lv2/f$a;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 4
    iget-object p1, p0, Lv2/f$a;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method
