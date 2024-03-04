.class public final Lv1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Lv1/s;",
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
            "Lw1/d;",
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
            "Lx1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lfi/a<",
            "Lw1/d;",
            ">;",
            "Lfi/a<",
            "Lv1/u;",
            ">;",
            "Lfi/a<",
            "Lx1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/t;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lv1/t;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lv1/t;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lv1/t;->d:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Lv1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lfi/a<",
            "Lw1/d;",
            ">;",
            "Lfi/a<",
            "Lv1/u;",
            ">;",
            "Lfi/a<",
            "Lx1/a;",
            ">;)",
            "Lv1/t;"
        }
    .end annotation

    new-instance v0, Lv1/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lv1/t;-><init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lw1/d;Lv1/u;Lx1/a;)Lv1/s;
    .locals 1

    new-instance v0, Lv1/s;

    invoke-direct {v0, p0, p1, p2, p3}, Lv1/s;-><init>(Ljava/util/concurrent/Executor;Lw1/d;Lv1/u;Lx1/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lv1/s;
    .locals 4

    iget-object v0, p0, Lv1/t;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lv1/t;->b:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/d;

    iget-object v2, p0, Lv1/t;->c:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/u;

    iget-object v3, p0, Lv1/t;->d:Lfi/a;

    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/a;

    invoke-static {v0, v1, v2, v3}, Lv1/t;->c(Ljava/util/concurrent/Executor;Lw1/d;Lv1/u;Lx1/a;)Lv1/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lv1/t;->b()Lv1/s;

    move-result-object v0

    return-object v0
.end method
