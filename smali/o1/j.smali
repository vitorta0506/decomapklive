.class public final Lo1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Lo1/i;",
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
            "Lo1/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;",
            "Lfi/a<",
            "Lo1/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo1/j;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lo1/j;->b:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;)Lo1/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;",
            "Lfi/a<",
            "Lo1/g;",
            ">;)",
            "Lo1/j;"
        }
    .end annotation

    new-instance v0, Lo1/j;

    invoke-direct {v0, p0, p1}, Lo1/j;-><init>(Lfi/a;Lfi/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Object;)Lo1/i;
    .locals 1

    new-instance v0, Lo1/i;

    check-cast p1, Lo1/g;

    invoke-direct {v0, p0, p1}, Lo1/i;-><init>(Landroid/content/Context;Lo1/g;)V

    return-object v0
.end method


# virtual methods
.method public b()Lo1/i;
    .locals 2

    iget-object v0, p0, Lo1/j;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lo1/j;->b:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/j;->c(Landroid/content/Context;Ljava/lang/Object;)Lo1/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo1/j;->b()Lo1/i;

    move-result-object v0

    return-object v0
.end method
