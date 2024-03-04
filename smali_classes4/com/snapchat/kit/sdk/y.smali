.class public final Lcom/snapchat/kit/sdk/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lhe/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/k;

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lhe/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            ">;",
            "Lfi/a<",
            "Lhe/d;",
            ">;",
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;>;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/f;",
            ">;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/y;->a:Lcom/snapchat/kit/sdk/k;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/y;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lcom/snapchat/kit/sdk/y;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lcom/snapchat/kit/sdk/y;->d:Lfi/a;

    .line 6
    iput-object p5, p0, Lcom/snapchat/kit/sdk/y;->e:Lfi/a;

    .line 7
    iput-object p6, p0, Lcom/snapchat/kit/sdk/y;->f:Lfi/a;

    return-void
.end method

.method public static a(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Leg/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            ">;",
            "Lfi/a<",
            "Lhe/d;",
            ">;",
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;>;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/f;",
            ">;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;",
            ">;)",
            "Leg/c<",
            "Lhe/c;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/snapchat/kit/sdk/y;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/kit/sdk/y;-><init>(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v7
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/y;->a:Lcom/snapchat/kit/sdk/k;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/y;->b:Lfi/a;

    .line 2
    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/kit/sdk/core/config/f;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/y;->c:Lfi/a;

    .line 3
    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhe/d;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/y;->d:Lfi/a;

    .line 4
    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/b;

    iget-object v4, p0, Lcom/snapchat/kit/sdk/y;->e:Lfi/a;

    .line 5
    invoke-interface {v4}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/f;

    iget-object v5, p0, Lcom/snapchat/kit/sdk/y;->f:Lfi/a;

    .line 6
    invoke-interface {v5}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/kit/sdk/k;->g(Lcom/snapchat/kit/sdk/core/config/f;Lhe/d;Lde/b;Lcom/snapchat/kit/sdk/f;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)Lhe/c;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 8
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhe/c;

    return-object v0
.end method
