.class public final Lje/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lje/b$b;,
        Lje/b$a;
    }
.end annotation


# instance fields
.field private a:Lbe/b;

.field private b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lke/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lje/b$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lje/b$a;->a(Lje/b$a;)Lbe/b;

    move-result-object v0

    iput-object v0, p0, Lje/b;->a:Lbe/b;

    .line 4
    new-instance v0, Lje/b$b;

    .line 5
    invoke-static {p1}, Lje/b$a;->a(Lje/b$a;)Lbe/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lje/b$b;-><init>(Lbe/b;)V

    iput-object v0, p0, Lje/b;->b:Lfi/a;

    .line 6
    invoke-static {v0}, Lke/d;->a(Lfi/a;)Leg/c;

    move-result-object p1

    .line 7
    invoke-static {p1}, Leg/b;->b(Lfi/a;)Lfi/a;

    move-result-object p1

    iput-object p1, p0, Lje/b;->c:Lfi/a;

    return-void
.end method

.method synthetic constructor <init>(Lje/b$a;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lje/b;-><init>(Lje/b$a;)V

    return-void
.end method

.method public static c()Lje/b$a;
    .locals 2

    new-instance v0, Lje/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lje/b$a;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a()Lne/a;
    .locals 1

    iget-object v0, p0, Lje/b;->c:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lke/c;

    invoke-static {v0}, Lne/b;->a(Lke/c;)Lne/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lle/a;
    .locals 10

    .line 1
    iget-object v0, p0, Lje/b;->a:Lbe/b;

    .line 2
    invoke-interface {v0}, Lbe/c;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lje/b;->a:Lbe/b;

    .line 4
    invoke-interface {v0}, Lbe/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lje/b;->a:Lbe/b;

    .line 6
    invoke-interface {v0}, Lbe/c;->i()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lje/b;->c:Lfi/a;

    .line 8
    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lke/c;

    iget-object v0, p0, Lje/b;->a:Lbe/b;

    .line 9
    invoke-interface {v0}, Lbe/c;->f()Lde/b;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lde/b;

    .line 11
    iget-object v0, p0, Lje/b;->a:Lbe/b;

    .line 12
    invoke-interface {v0}, Lbe/c;->a()Lge/a;

    move-result-object v0

    .line 13
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lge/a;

    .line 14
    invoke-static {v0}, Lke/b;->a(Lge/a;)Lke/a;

    move-result-object v7

    .line 15
    iget-object v0, p0, Lje/b;->a:Lbe/b;

    .line 16
    invoke-interface {v0}, Lbe/c;->b()Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    iget-object v0, p0, Lje/b;->a:Lbe/b;

    .line 18
    invoke-interface {v0}, Lbe/c;->l()Z

    move-result v9

    .line 19
    invoke-static/range {v2 .. v9}, Lle/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lke/c;Lde/b;Lke/a;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)Lle/a;

    move-result-object v0

    return-object v0
.end method
