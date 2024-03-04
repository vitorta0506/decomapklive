.class abstract Leh/l2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/l2$a$a;,
        Leh/l2$a$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Leh/l2$a$b;Leh/l2$a$a;Ljava/util/Map;)Leh/l2$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/l2$a$b;",
            "Leh/l2$a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;)",
            "Leh/l2$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Leh/a0;

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Leh/a0;-><init>(Leh/l2$a$b;Leh/l2$a$a;Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method static c(Leh/l2$a$b;Leh/l2$a$a;Ljava/util/Map;)Leh/l2$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/l2$a$b;",
            "Leh/l2$a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;)",
            "Leh/l2$a;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Leh/l2$a;->a(Leh/l2$a$b;Leh/l2$a$a;Ljava/util/Map;)Leh/l2$a;

    move-result-object p0

    return-object p0
.end method

.method static d(Leh/l2$a$b;Ljava/util/Map;)Leh/l2$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/l2$a$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;)",
            "Leh/l2$a;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Leh/l2$a;->a(Leh/l2$a$b;Leh/l2$a$a;Ljava/util/Map;)Leh/l2$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract b()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;"
        }
    .end annotation
.end method

.method abstract e()Leh/l2$a$a;
.end method

.method abstract f()Leh/l2$a$b;
.end method
