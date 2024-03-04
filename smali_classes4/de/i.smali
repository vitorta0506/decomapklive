.class public final Lde/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lde/b<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lhe/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lde/e;",
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
            "Lhe/a;",
            ">;",
            "Lfi/a<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lfi/a<",
            "Lde/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lde/i;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lde/i;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lde/i;->c:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lhe/a;",
            ">;",
            "Lfi/a<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lfi/a<",
            "Lde/e;",
            ">;)",
            "Leg/c<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lde/i;

    invoke-direct {v0, p0, p1, p2}, Lde/i;-><init>(Lfi/a;Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lde/i;->a:Lfi/a;

    .line 2
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhe/a;

    iget-object v1, p0, Lde/i;->b:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lde/i;->c:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/e;

    .line 3
    new-instance v3, Lde/d;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Lde/d;-><init>(Lde/a;Ljava/util/concurrent/ScheduledExecutorService;Lde/e;I)V

    .line 4
    invoke-virtual {v3}, Lde/d;->c()V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v3, v0}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/b;

    return-object v0
.end method
