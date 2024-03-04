.class public final Lo1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Lo1/g;",
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
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo1/h;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lo1/h;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lo1/h;->c:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;)Lo1/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;)",
            "Lo1/h;"
        }
    .end annotation

    new-instance v0, Lo1/h;

    invoke-direct {v0, p0, p1, p2}, Lo1/h;-><init>(Lfi/a;Lfi/a;Lfi/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ly1/a;Ly1/a;)Lo1/g;
    .locals 1

    new-instance v0, Lo1/g;

    invoke-direct {v0, p0, p1, p2}, Lo1/g;-><init>(Landroid/content/Context;Ly1/a;Ly1/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lo1/g;
    .locals 3

    iget-object v0, p0, Lo1/h;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lo1/h;->b:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/a;

    iget-object v2, p0, Lo1/h;->c:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1/a;

    invoke-static {v0, v1, v2}, Lo1/h;->c(Landroid/content/Context;Ly1/a;Ly1/a;)Lo1/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo1/h;->b()Lo1/g;

    move-result-object v0

    return-object v0
.end method
