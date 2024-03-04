.class public final Lge/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lge/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/lang/Boolean;",
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
            "Ljava/lang/String;",
            ">;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            ">;",
            "Lfi/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lge/h;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lge/h;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lge/h;->c:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Ljava/lang/String;",
            ">;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            ">;",
            "Lfi/a<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Leg/c<",
            "Lge/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lge/h;

    invoke-direct {v0, p0, p1, p2}, Lge/h;-><init>(Lfi/a;Lfi/a;Lfi/a;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)Lge/a;
    .locals 1

    new-instance v0, Lge/a;

    invoke-direct {v0, p0, p1, p2}, Lge/a;-><init>(Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lge/a;

    iget-object v1, p0, Lge/h;->a:Lfi/a;

    .line 2
    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lge/h;->b:Lfi/a;

    .line 3
    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    iget-object v3, p0, Lge/h;->c:Lfi/a;

    .line 4
    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lge/a;-><init>(Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V

    return-object v0
.end method
