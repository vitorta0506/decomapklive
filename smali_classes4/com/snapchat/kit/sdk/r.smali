.class public final Lcom/snapchat/kit/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/k;


# direct methods
.method private constructor <init>(Lcom/snapchat/kit/sdk/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/r;->a:Lcom/snapchat/kit/sdk/k;

    return-void
.end method

.method public static a(Lcom/snapchat/kit/sdk/k;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            ")",
            "Leg/c<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/snapchat/kit/sdk/r;

    invoke-direct {v0, p0}, Lcom/snapchat/kit/sdk/r;-><init>(Lcom/snapchat/kit/sdk/k;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/r;->a:Lcom/snapchat/kit/sdk/k;

    .line 2
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/k;->k()Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    return-object v0
.end method
