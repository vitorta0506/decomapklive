.class public final Lcom/snapchat/kit/sdk/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lbe/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/k;

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
            "Lcom/google/gson/Gson;",
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
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/p;->a:Lcom/snapchat/kit/sdk/k;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/p;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lcom/snapchat/kit/sdk/p;->c:Lfi/a;

    return-void
.end method

.method public static a(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Leg/c<",
            "Lbe/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/snapchat/kit/sdk/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/kit/sdk/p;-><init>(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/p;->b:Lfi/a;

    .line 2
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/p;->c:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v0, v1}, Lcom/snapchat/kit/sdk/k;->a(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Lbe/d;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/d;

    return-object v0
.end method
