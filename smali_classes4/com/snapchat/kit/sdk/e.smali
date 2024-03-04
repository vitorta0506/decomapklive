.class public final Lcom/snapchat/kit/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Landroid/os/Handler;",
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
    iput-object p1, p0, Lcom/snapchat/kit/sdk/e;->a:Lcom/snapchat/kit/sdk/k;

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
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/snapchat/kit/sdk/e;

    invoke-direct {v0, p0}, Lcom/snapchat/kit/sdk/e;-><init>(Lcom/snapchat/kit/sdk/k;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lcom/snapchat/kit/sdk/k;->r()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method
