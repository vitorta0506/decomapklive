.class public final Lv1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Lv1/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Landroid/content/Context;",
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
            "Lw1/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lv1/u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lx1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lw1/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;",
            "Lfi/a<",
            "Lo1/d;",
            ">;",
            "Lfi/a<",
            "Lw1/d;",
            ">;",
            "Lfi/a<",
            "Lv1/u;",
            ">;",
            "Lfi/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lfi/a<",
            "Lx1/a;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Lw1/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/p;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lv1/p;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lv1/p;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lv1/p;->d:Lfi/a;

    .line 6
    iput-object p5, p0, Lv1/p;->e:Lfi/a;

    .line 7
    iput-object p6, p0, Lv1/p;->f:Lfi/a;

    .line 8
    iput-object p7, p0, Lv1/p;->g:Lfi/a;

    .line 9
    iput-object p8, p0, Lv1/p;->h:Lfi/a;

    .line 10
    iput-object p9, p0, Lv1/p;->i:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Lv1/p;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;",
            "Lfi/a<",
            "Lo1/d;",
            ">;",
            "Lfi/a<",
            "Lw1/d;",
            ">;",
            "Lfi/a<",
            "Lv1/u;",
            ">;",
            "Lfi/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lfi/a<",
            "Lx1/a;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Lw1/c;",
            ">;)",
            "Lv1/p;"
        }
    .end annotation

    new-instance v10, Lv1/p;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lv1/p;-><init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v10
.end method

.method public static c(Landroid/content/Context;Lo1/d;Lw1/d;Lv1/u;Ljava/util/concurrent/Executor;Lx1/a;Ly1/a;Ly1/a;Lw1/c;)Lv1/o;
    .locals 11

    new-instance v10, Lv1/o;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lv1/o;-><init>(Landroid/content/Context;Lo1/d;Lw1/d;Lv1/u;Ljava/util/concurrent/Executor;Lx1/a;Ly1/a;Ly1/a;Lw1/c;)V

    return-object v10
.end method


# virtual methods
.method public b()Lv1/o;
    .locals 10

    iget-object v0, p0, Lv1/p;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lv1/p;->b:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo1/d;

    iget-object v0, p0, Lv1/p;->c:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lw1/d;

    iget-object v0, p0, Lv1/p;->d:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lv1/u;

    iget-object v0, p0, Lv1/p;->e:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lv1/p;->f:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lx1/a;

    iget-object v0, p0, Lv1/p;->g:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ly1/a;

    iget-object v0, p0, Lv1/p;->h:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ly1/a;

    iget-object v0, p0, Lv1/p;->i:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lw1/c;

    invoke-static/range {v1 .. v9}, Lv1/p;->c(Landroid/content/Context;Lo1/d;Lw1/d;Lv1/u;Ljava/util/concurrent/Executor;Lx1/a;Ly1/a;Ly1/a;Lw1/c;)Lv1/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lv1/p;->b()Lv1/o;

    move-result-object v0

    return-object v0
.end method
