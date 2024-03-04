.class public final Lu1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Lu1/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lo1/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lv1/u;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lw1/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lx1/a;",
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
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lfi/a<",
            "Lo1/d;",
            ">;",
            "Lfi/a<",
            "Lv1/u;",
            ">;",
            "Lfi/a<",
            "Lw1/d;",
            ">;",
            "Lfi/a<",
            "Lx1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu1/d;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lu1/d;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lu1/d;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lu1/d;->d:Lfi/a;

    .line 6
    iput-object p5, p0, Lu1/d;->e:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Lu1/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lfi/a<",
            "Lo1/d;",
            ">;",
            "Lfi/a<",
            "Lv1/u;",
            ">;",
            "Lfi/a<",
            "Lw1/d;",
            ">;",
            "Lfi/a<",
            "Lx1/a;",
            ">;)",
            "Lu1/d;"
        }
    .end annotation

    new-instance v6, Lu1/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lu1/d;-><init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v6
.end method

.method public static c(Ljava/util/concurrent/Executor;Lo1/d;Lv1/u;Lw1/d;Lx1/a;)Lu1/c;
    .locals 7

    new-instance v6, Lu1/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lu1/c;-><init>(Ljava/util/concurrent/Executor;Lo1/d;Lv1/u;Lw1/d;Lx1/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Lu1/c;
    .locals 5

    iget-object v0, p0, Lu1/d;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lu1/d;->b:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/d;

    iget-object v2, p0, Lu1/d;->c:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/u;

    iget-object v3, p0, Lu1/d;->d:Lfi/a;

    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/d;

    iget-object v4, p0, Lu1/d;->e:Lfi/a;

    invoke-interface {v4}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx1/a;

    invoke-static {v0, v1, v2, v3, v4}, Lu1/d;->c(Ljava/util/concurrent/Executor;Lo1/d;Lv1/u;Lw1/d;Lx1/a;)Lu1/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu1/d;->b()Lu1/c;

    move-result-object v0

    return-object v0
.end method
