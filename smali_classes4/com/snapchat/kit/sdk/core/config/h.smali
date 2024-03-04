.class public final Lcom/snapchat/kit/sdk/core/config/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lcom/snapchat/kit/sdk/core/config/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/config/ConfigClient;",
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


# direct methods
.method private constructor <init>(Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/config/ConfigClient;",
            ">;",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/config/h;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/config/h;->b:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/config/ConfigClient;",
            ">;",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Leg/c<",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/snapchat/kit/sdk/core/config/h;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/kit/sdk/core/config/h;-><init>(Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/snapchat/kit/sdk/core/config/f;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/config/h;->a:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/kit/sdk/core/config/ConfigClient;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/config/h;->b:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/kit/sdk/core/config/f;-><init>(Lcom/snapchat/kit/sdk/core/config/ConfigClient;Landroid/content/SharedPreferences;)V

    return-object v0
.end method
