.class public final Lw1/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Lw1/t0;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/lang/Integer;",
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
            "Ljava/lang/String;",
            ">;",
            "Lfi/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw1/u0;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lw1/u0;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lw1/u0;->c:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;)Lw1/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;",
            "Lfi/a<",
            "Ljava/lang/String;",
            ">;",
            "Lfi/a<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lw1/u0;"
        }
    .end annotation

    new-instance v0, Lw1/u0;

    invoke-direct {v0, p0, p1, p2}, Lw1/u0;-><init>(Lfi/a;Lfi/a;Lfi/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)Lw1/t0;
    .locals 1

    new-instance v0, Lw1/t0;

    invoke-direct {v0, p0, p1, p2}, Lw1/t0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public b()Lw1/t0;
    .locals 3

    iget-object v0, p0, Lw1/u0;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lw1/u0;->b:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lw1/u0;->c:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lw1/u0;->c(Landroid/content/Context;Ljava/lang/String;I)Lw1/t0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw1/u0;->b()Lw1/t0;

    move-result-object v0

    return-object v0
.end method
