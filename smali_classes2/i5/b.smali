.class public Li5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li5/b$b;,
        Li5/b$a;
    }
.end annotation


# instance fields
.field private final a:Li5/b$a;

.field private final b:Li5/b$b;


# direct methods
.method public constructor <init>(Li5/b$a;Li5/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li5/b$a;

    iput-object p1, p0, Li5/b;->a:Li5/b$a;

    .line 3
    invoke-static {p2}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li5/b$b;

    iput-object p1, p0, Li5/b;->b:Li5/b$b;

    return-void
.end method


# virtual methods
.method public a()Li5/b$a;
    .locals 1

    iget-object v0, p0, Li5/b;->a:Li5/b$a;

    return-object v0
.end method

.method public b()Li5/b$b;
    .locals 1

    iget-object v0, p0, Li5/b;->b:Li5/b$b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/api/client/util/x;->b(Ljava/lang/Object;)Lcom/google/api/client/util/x$b;

    move-result-object v0

    iget-object v1, p0, Li5/b;->a:Li5/b$a;

    const-string v2, "header"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/x$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/x$b;

    move-result-object v0

    iget-object v1, p0, Li5/b;->b:Li5/b$b;

    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/x$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/x$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
