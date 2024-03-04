.class public final Lie/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lie/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
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
            "Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lie/k;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lie/k;->b:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Leg/c<",
            "Lie/j;",
            ">;"
        }
    .end annotation

    new-instance v0, Lie/k;

    invoke-direct {v0, p0, p1}, Lie/k;-><init>(Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lie/j;

    iget-object v1, p0, Lie/k;->a:Lfi/a;

    .line 2
    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;

    iget-object v2, p0, Lie/k;->b:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    invoke-direct {v0, v1, v2}, Lie/j;-><init>(Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;Lcom/google/gson/Gson;)V

    return-object v0
.end method
