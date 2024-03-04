.class abstract Leh/l2$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/l2$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;ILjava/util/Map;)Leh/l2$a$a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;)",
            "Leh/l2$a$a$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Leh/c0;

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Leh/c0;-><init>(Ljava/lang/String;ILcom/google/common/collect/ImmutableMap;)V

    return-object v0
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

.method abstract c()Ljava/lang/String;
.end method

.method abstract d()I
.end method
