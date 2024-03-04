.class public final Lcom/snapchat/kit/sdk/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/k;

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lhe/c;",
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
            "Lhe/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/z;->a:Lcom/snapchat/kit/sdk/k;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/z;->b:Lfi/a;

    return-void
.end method

.method public static a(Lcom/snapchat/kit/sdk/k;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Lhe/c;",
            ">;)",
            "Leg/c<",
            "Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/snapchat/kit/sdk/z;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/kit/sdk/z;-><init>(Lcom/snapchat/kit/sdk/k;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/z;->b:Lfi/a;

    .line 2
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhe/c;

    invoke-static {v0}, Lcom/snapchat/kit/sdk/k;->c(Lhe/c;)Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;

    return-object v0
.end method
