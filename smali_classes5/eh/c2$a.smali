.class abstract Leh/c2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/c2;
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

.method static b(Ljava/util/Map;)Leh/c2$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Leh/c2$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Leh/v;

    .line 2
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-direct {v0, p0}, Leh/v;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method
