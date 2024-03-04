.class public final Lie/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lie/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lce/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/f;",
            ">;",
            "Lfi/a<",
            "Lce/c;",
            ">;",
            "Lfi/a<",
            "Ljava/lang/String;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lie/g;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lie/g;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lie/g;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lie/g;->d:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/f;",
            ">;",
            "Lfi/a<",
            "Lce/c;",
            ">;",
            "Lfi/a<",
            "Ljava/lang/String;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Leg/c<",
            "Lie/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lie/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lie/g;-><init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lie/f;

    iget-object v1, p0, Lie/g;->a:Lfi/a;

    .line 2
    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/kit/sdk/f;

    iget-object v2, p0, Lie/g;->b:Lfi/a;

    .line 3
    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lce/c;

    iget-object v3, p0, Lie/g;->c:Lfi/a;

    .line 4
    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lie/g;->d:Lfi/a;

    .line 5
    invoke-interface {v4}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/Gson;

    invoke-direct {v0, v1, v2, v3, v4}, Lie/f;-><init>(Lcom/snapchat/kit/sdk/f;Lce/c;Ljava/lang/String;Lcom/google/gson/Gson;)V

    return-object v0
.end method
