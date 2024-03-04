.class public abstract Leh/j0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Leh/j0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Leh/j0$c;"
        }
    .end annotation

    .line 1
    new-instance v0, Leh/e;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Leh/e;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
.end method
