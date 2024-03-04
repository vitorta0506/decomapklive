.class public final Ln1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Ln1/t;",
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
            "Lu1/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lv1/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lv1/s;",
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
            "Lu1/e;",
            ">;",
            "Lfi/a<",
            "Lv1/o;",
            ">;",
            "Lfi/a<",
            "Lv1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln1/v;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Ln1/v;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Ln1/v;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Ln1/v;->d:Lfi/a;

    .line 6
    iput-object p5, p0, Ln1/v;->e:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Ln1/v;
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
            "Lu1/e;",
            ">;",
            "Lfi/a<",
            "Lv1/o;",
            ">;",
            "Lfi/a<",
            "Lv1/s;",
            ">;)",
            "Ln1/v;"
        }
    .end annotation

    new-instance v6, Ln1/v;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ln1/v;-><init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v6
.end method

.method public static c(Ly1/a;Ly1/a;Lu1/e;Lv1/o;Lv1/s;)Ln1/t;
    .locals 7

    new-instance v6, Ln1/t;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ln1/t;-><init>(Ly1/a;Ly1/a;Lu1/e;Lv1/o;Lv1/s;)V

    return-object v6
.end method


# virtual methods
.method public b()Ln1/t;
    .locals 5

    iget-object v0, p0, Ln1/v;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/a;

    iget-object v1, p0, Ln1/v;->b:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/a;

    iget-object v2, p0, Ln1/v;->c:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu1/e;

    iget-object v3, p0, Ln1/v;->d:Lfi/a;

    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv1/o;

    iget-object v4, p0, Ln1/v;->e:Lfi/a;

    invoke-interface {v4}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv1/s;

    invoke-static {v0, v1, v2, v3, v4}, Ln1/v;->c(Ly1/a;Ly1/a;Lu1/e;Lv1/o;Lv1/s;)Ln1/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln1/v;->b()Ln1/t;

    move-result-object v0

    return-object v0
.end method
