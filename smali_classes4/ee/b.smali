.class public final Lee/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lee/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lfe/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;",
            ">;",
            "Lfi/a<",
            "Lfe/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lee/b;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lee/b;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lee/b;->c:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;",
            ">;",
            "Lfi/a<",
            "Lfe/a;",
            ">;)",
            "Leg/c<",
            "Lee/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lee/b;

    invoke-direct {v0, p0, p1, p2}, Lee/b;-><init>(Lfi/a;Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lee/a;

    iget-object v1, p0, Lee/b;->a:Lfi/a;

    .line 2
    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lee/b;->b:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    iget-object v3, p0, Lee/b;->c:Lfi/a;

    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfe/a;

    invoke-direct {v0, v1, v2, v3}, Lee/a;-><init>(Landroid/content/SharedPreferences;Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;Lfe/a;)V

    return-object v0
.end method
