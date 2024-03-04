.class public final Lhe/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lhe/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lge/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lfe/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            ">;",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lfi/a<",
            "Lge/i;",
            ">;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;",
            ">;",
            "Lfi/a<",
            "Lfe/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhe/b;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lhe/b;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lhe/b;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lhe/b;->d:Lfi/a;

    .line 6
    iput-object p5, p0, Lhe/b;->e:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Leg/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            ">;",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lfi/a<",
            "Lge/i;",
            ">;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;",
            ">;",
            "Lfi/a<",
            "Lfe/a;",
            ">;)",
            "Leg/c<",
            "Lhe/a;",
            ">;"
        }
    .end annotation

    new-instance v6, Lhe/b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lhe/b;-><init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v6, Lhe/a;

    iget-object v0, p0, Lhe/b;->a:Lfi/a;

    .line 2
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/snapchat/kit/sdk/core/config/f;

    iget-object v0, p0, Lhe/b;->b:Lfi/a;

    .line 3
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lhe/b;->c:Lfi/a;

    .line 4
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lge/i;

    iget-object v0, p0, Lhe/b;->d:Lfi/a;

    .line 5
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;

    iget-object v0, p0, Lhe/b;->e:Lfi/a;

    .line 6
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfe/a;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lhe/a;-><init>(Lcom/snapchat/kit/sdk/core/config/f;Landroid/content/SharedPreferences;Lge/i;Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;Lfe/a;)V

    return-object v6
.end method
