.class public final Lcom/snapchat/kit/sdk/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/k;

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/w;->a:Lcom/snapchat/kit/sdk/k;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/w;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lcom/snapchat/kit/sdk/w;->c:Lfi/a;

    return-void
.end method

.method public static a(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Leg/c<",
            "Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/snapchat/kit/sdk/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/kit/sdk/w;-><init>(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/w;->a:Lcom/snapchat/kit/sdk/k;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/w;->b:Lfi/a;

    .line 2
    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/w;->c:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/snapchat/kit/sdk/k;->e(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;)Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;

    move-result-object v0

    return-object v0
.end method
