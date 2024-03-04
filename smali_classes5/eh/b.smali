.class final Leh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/b$a;
    }
.end annotation


# static fields
.field private static final a:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Leh/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.xds.AddressFilter.PATH_CHAIN_KEY"

    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/b;->a:Lio/grpc/a$c;

    return-void
.end method

.method static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    const-string v0, "addresses"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    .line 5
    invoke-virtual {v1}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v2

    sget-object v3, Leh/b;->a:Lio/grpc/a$c;

    invoke-virtual {v2, v3}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/b$a;

    if-eqz v2, :cond_0

    .line 6
    iget-object v4, v2, Leh/b$a;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v1}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v4

    iget-object v2, v2, Leh/b$a;->b:Leh/b$a;

    invoke-virtual {v4, v3, v2}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v2

    .line 8
    new-instance v3, Lio/grpc/x;

    .line 9
    invoke-virtual {v1}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lio/grpc/x;-><init>(Ljava/util/List;Lio/grpc/a;)V

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static b(Lio/grpc/x;Ljava/util/List;)Lio/grpc/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/x;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/grpc/x;"
        }
    .end annotation

    const-string v0, "address"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "names"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v0

    sget-object v1, Leh/b;->a:Lio/grpc/a$c;

    invoke-virtual {v0, v1}, Lio/grpc/a$b;->c(Lio/grpc/a$c;)Lio/grpc/a$b;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Leh/b$a;

    invoke-direct {v1, v2}, Leh/b$a;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v2, Leh/b;->a:Lio/grpc/a$c;

    invoke-virtual {v0, v2, v1}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v3, Leh/b$a;

    invoke-direct {v3, v2}, Leh/b$a;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Leh/b$a;->b:Leh/b$a;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lio/grpc/x;

    invoke-virtual {p0}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/grpc/x;-><init>(Ljava/util/List;Lio/grpc/a;)V

    return-object p1
.end method
