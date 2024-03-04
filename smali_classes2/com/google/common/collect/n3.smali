.class Lcom/google/common/collect/n3;
.super Lcom/google/common/collect/ImmutableListMultimap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableListMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/n3;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/n3;

    invoke-direct {v0}, Lcom/google/common/collect/n3;-><init>()V

    sput-object v0, Lcom/google/common/collect/n3;->a:Lcom/google/common/collect/n3;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableListMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/n3;->a:Lcom/google/common/collect/n3;

    return-object v0
.end method
