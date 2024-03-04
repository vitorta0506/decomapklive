.class public final Lge/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lge/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lge/i;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lde/d<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lge/i;",
            ">;",
            "Lfi/a<",
            "Lde/d<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lge/e;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lge/e;->b:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lge/i;",
            ">;",
            "Lfi/a<",
            "Lde/d<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;)",
            "Leg/c<",
            "Lge/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lge/e;

    invoke-direct {v0, p0, p1}, Lge/e;-><init>(Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lge/d;

    iget-object v1, p0, Lge/e;->a:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lge/i;

    iget-object v2, p0, Lge/e;->b:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/d;

    invoke-direct {v0, v1, v2}, Lge/d;-><init>(Lge/i;Lde/d;)V

    return-object v0
.end method
