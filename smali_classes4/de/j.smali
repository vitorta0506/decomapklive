.class public final Lde/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lie/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lie/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lde/j;->a:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lie/a;",
            ">;)",
            "Leg/c<",
            "Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;",
            ">;"
        }
    .end annotation

    new-instance v0, Lde/j;

    invoke-direct {v0, p0}, Lde/j;-><init>(Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lde/j;->a:Lfi/a;

    .line 2
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lie/a;

    .line 3
    const-class v1, Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    const-string v2, "https://api.snapkit.com"

    invoke-virtual {v0, v2, v1}, Lie/a;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    return-object v0
.end method
