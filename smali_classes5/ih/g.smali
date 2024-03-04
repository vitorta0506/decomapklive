.class public final Lih/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/k2;


# instance fields
.field private final a:Lih/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lih/c<",
            "Leh/i1;",
            "Lih/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lih/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lih/c<",
            "Leh/e1;",
            "Lih/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leh/j0$b;)V
    .locals 2

    .line 1
    new-instance v0, Lih/a;

    invoke-direct {v0, p1}, Lih/a;-><init>(Leh/j0$b;)V

    new-instance v1, Lih/d;

    invoke-direct {v1, p1}, Lih/d;-><init>(Leh/j0$b;)V

    invoke-direct {p0, v0, v1}, Lih/g;-><init>(Lih/c$b;Lih/c$b;)V

    return-void
.end method

.method constructor <init>(Lih/c$b;Lih/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lih/c$b<",
            "Leh/i1;",
            "Lih/e;",
            ">;",
            "Lih/c$b<",
            "Leh/e1;",
            "Lih/e;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "clientFactory"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "serverFactory"

    .line 4
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lih/c;

    invoke-direct {v0, p1}, Lih/c;-><init>(Lih/c$b;)V

    iput-object v0, p0, Lih/g;->a:Lih/c;

    .line 6
    new-instance p1, Lih/c;

    invoke-direct {p1, p2}, Lih/c;-><init>(Lih/c$b;)V

    iput-object p1, p0, Lih/g;->b:Lih/c;

    return-void
.end method


# virtual methods
.method public a(Lih/e;)Lih/e;
    .locals 2

    const-string v0, "serverSslContextProvider"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lih/g;->b:Lih/c;

    invoke-virtual {p1}, Lih/e;->a()Leh/e1;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lih/c;->a(Ljava/lang/Object;Lih/b;)Lih/b;

    move-result-object p1

    check-cast p1, Lih/e;

    return-object p1
.end method

.method public b(Lih/e;)Lih/e;
    .locals 2

    const-string v0, "clientSslContextProvider"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lih/g;->a:Lih/c;

    invoke-virtual {p1}, Lih/e;->c()Leh/i1;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lih/c;->a(Ljava/lang/Object;Lih/b;)Lih/b;

    move-result-object p1

    check-cast p1, Lih/e;

    return-object p1
.end method
