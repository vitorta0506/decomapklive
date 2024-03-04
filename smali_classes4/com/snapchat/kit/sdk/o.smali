.class public final Lcom/snapchat/kit/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/k;

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lie/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/kit/sdk/k;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Lie/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/o;->a:Lcom/snapchat/kit/sdk/k;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/o;->b:Lfi/a;

    return-void
.end method

.method public static a(Lcom/snapchat/kit/sdk/k;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Lie/a;",
            ">;)",
            "Leg/c<",
            "Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/snapchat/kit/sdk/o;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/kit/sdk/o;-><init>(Lcom/snapchat/kit/sdk/k;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    const-class v0, Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/o;->a:Lcom/snapchat/kit/sdk/k;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/o;->b:Lfi/a;

    .line 2
    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lie/a;

    .line 3
    iget-object v3, v1, Lcom/snapchat/kit/sdk/k;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    iget-object v3, v1, Lcom/snapchat/kit/sdk/k;->h:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v1, v1, Lcom/snapchat/kit/sdk/k;->h:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lie/a;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v1, Lcom/snapchat/kit/sdk/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lie/a;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;

    :goto_0
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Firebase Extension custom token url must be set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
