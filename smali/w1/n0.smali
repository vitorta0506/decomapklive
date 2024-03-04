.class public final Lw1/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Lw1/m0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lw1/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lw1/t0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Lw1/e;",
            ">;",
            "Lfi/a<",
            "Lw1/t0;",
            ">;",
            "Lfi/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw1/n0;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lw1/n0;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lw1/n0;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lw1/n0;->d:Lfi/a;

    .line 6
    iput-object p5, p0, Lw1/n0;->e:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Lw1/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Lw1/e;",
            ">;",
            "Lfi/a<",
            "Lw1/t0;",
            ">;",
            "Lfi/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lw1/n0;"
        }
    .end annotation

    new-instance v6, Lw1/n0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lw1/n0;-><init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v6
.end method

.method public static c(Ly1/a;Ly1/a;Ljava/lang/Object;Ljava/lang/Object;Lp1/a;)Lw1/m0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/a;",
            "Ly1/a;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lp1/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lw1/m0;"
        }
    .end annotation

    new-instance v6, Lw1/m0;

    move-object v3, p2

    check-cast v3, Lw1/e;

    move-object v4, p3

    check-cast v4, Lw1/t0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lw1/m0;-><init>(Ly1/a;Ly1/a;Lw1/e;Lw1/t0;Lp1/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Lw1/m0;
    .locals 5

    iget-object v0, p0, Lw1/n0;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/a;

    iget-object v1, p0, Lw1/n0;->b:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/a;

    iget-object v2, p0, Lw1/n0;->c:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lw1/n0;->d:Lfi/a;

    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lw1/n0;->e:Lfi/a;

    invoke-static {v4}, Lq1/a;->a(Lfi/a;)Lp1/a;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lw1/n0;->c(Ly1/a;Ly1/a;Ljava/lang/Object;Ljava/lang/Object;Lp1/a;)Lw1/m0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw1/n0;->b()Lw1/m0;

    move-result-object v0

    return-object v0
.end method
