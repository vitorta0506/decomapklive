.class public final Lie/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lie/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lokhttp3/Cache;",
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

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lie/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lie/h;",
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
            "Lokhttp3/Cache;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Lfi/a<",
            "Lie/f;",
            ">;",
            "Lfi/a<",
            "Lie/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lie/d;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lie/d;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lie/d;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lie/d;->d:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lokhttp3/Cache;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Lfi/a<",
            "Lie/f;",
            ">;",
            "Lfi/a<",
            "Lie/h;",
            ">;)",
            "Leg/c<",
            "Lie/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lie/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lie/d;-><init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lie/a;

    iget-object v1, p0, Lie/d;->a:Lfi/a;

    .line 2
    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Cache;

    iget-object v2, p0, Lie/d;->b:Lfi/a;

    .line 3
    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    iget-object v3, p0, Lie/d;->c:Lfi/a;

    .line 4
    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lie/f;

    iget-object v4, p0, Lie/d;->d:Lfi/a;

    .line 5
    invoke-interface {v4}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lie/h;

    invoke-direct {v0, v1, v2, v3, v4}, Lie/a;-><init>(Lokhttp3/Cache;Lcom/google/gson/Gson;Lie/f;Lie/h;)V

    return-object v0
.end method
